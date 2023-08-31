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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
    }
}

public class CCMVersionsValue : Tea.TeaModel {
    public var queryState: String?

    public var version: String?

    public var SLBGracefulDrainSupport: Bool?

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
        if self.queryState != nil {
            map["QueryState"] = self.queryState!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.SLBGracefulDrainSupport != nil {
            map["SLBGracefulDrainSupport"] = self.SLBGracefulDrainSupport!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QueryState") && dict["QueryState"] != nil {
            self.queryState = dict["QueryState"] as! String
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! String
        }
        if dict.keys.contains("SLBGracefulDrainSupport") && dict["SLBGracefulDrainSupport"] != nil {
            self.SLBGracefulDrainSupport = dict["SLBGracefulDrainSupport"] as! Bool
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! String
        }
    }
}

public class AddClusterIntoServiceMeshRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ignoreNamespaceCheck: Bool?

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
        if self.ignoreNamespaceCheck != nil {
            map["IgnoreNamespaceCheck"] = self.ignoreNamespaceCheck!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreNamespaceCheck") && dict["IgnoreNamespaceCheck"] != nil {
            self.ignoreNamespaceCheck = dict["IgnoreNamespaceCheck"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddClusterIntoServiceMeshResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcsId") && dict["EcsId"] != nil {
            self.ecsId = dict["EcsId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddVMIntoServiceMeshResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") && dict["Body"] != nil {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateASMGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cert") && dict["Cert"] != nil {
            self.cert = dict["Cert"] as! String
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretCreateRecord") && dict["SecretCreateRecord"] != nil {
            var tmp : [String: SecretCreateRecordValue] = [:]
            for (k, v) in dict["SecretCreateRecord"] as! [String: Any] {
                if v != nil {
                    var model = SecretCreateRecordValue()
                    model.fromMap(v as! [String: Any])
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateGatewaySecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Credential") && dict["Credential"] != nil {
            self.credential = dict["Credential"] as! String
        }
        if dict.keys.contains("ForceHttps") && dict["ForceHttps"] != nil {
            self.forceHttps = dict["ForceHttps"] as! Bool
        }
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            self.hosts = dict["Hosts"] as! String
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Number") && dict["Number"] != nil {
            self.number = dict["Number"] as! Int32
        }
        if dict.keys.contains("PortName") && dict["PortName"] != nil {
            self.portName = dict["PortName"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateIstioGatewayDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                        self.namespace = dict["Namespace"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HttpStatus") && dict["HttpStatus"] != nil {
                            self.httpStatus = dict["HttpStatus"] as! Int32
                        }
                        if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                            var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort.Percentage()
                            model.fromMap(dict["Percentage"] as! [String: Any])
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FixedDelay") && dict["FixedDelay"] != nil {
                            self.fixedDelay = dict["FixedDelay"] as! String
                        }
                        if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                            var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay.Percentage()
                            model.fromMap(dict["Percentage"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Abort") && dict["Abort"] != nil {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(dict["Abort"] as! [String: Any])
                        self.abort = model
                    }
                    if dict.keys.contains("Delay") && dict["Delay"] != nil {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay()
                        model.fromMap(dict["Delay"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authority") && dict["Authority"] != nil {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("RedirectCode") && dict["RedirectCode"] != nil {
                        self.redirectCode = dict["RedirectCode"] as! Int32
                    }
                    if dict.keys.contains("Uri") && dict["Uri"] != nil {
                        self.uri = dict["Uri"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Subset") && dict["Subset"] != nil {
                        self.subset = dict["Subset"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! Bool
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attempts") && dict["Attempts"] != nil {
                        self.attempts = dict["Attempts"] as! Int32
                    }
                    if dict.keys.contains("PerTryTimeout") && dict["PerTryTimeout"] != nil {
                        self.perTryTimeout = dict["PerTryTimeout"] as! String
                    }
                    if dict.keys.contains("RetryOn") && dict["RetryOn"] != nil {
                        self.retryOn = dict["RetryOn"] as! String
                    }
                    if dict.keys.contains("RetryRemoteLocalities") && dict["RetryRemoteLocalities"] != nil {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries.RetryRemoteLocalities()
                        model.fromMap(dict["RetryRemoteLocalities"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authority") && dict["Authority"] != nil {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("Uri") && dict["Uri"] != nil {
                        self.uri = dict["Uri"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Delegate") && dict["Delegate"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Delegate()
                    model.fromMap(dict["Delegate"] as! [String: Any])
                    self.delegate = model
                }
                if dict.keys.contains("Fault") && dict["Fault"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault()
                    model.fromMap(dict["Fault"] as! [String: Any])
                    self.fault = model
                }
                if dict.keys.contains("HTTPRedirect") && dict["HTTPRedirect"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(dict["HTTPRedirect"] as! [String: Any])
                    self.HTTPRedirect = model
                }
                if dict.keys.contains("Mirror") && dict["Mirror"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Mirror()
                    model.fromMap(dict["Mirror"] as! [String: Any])
                    self.mirror = model
                }
                if dict.keys.contains("MirrorPercentage") && dict["MirrorPercentage"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(dict["MirrorPercentage"] as! [String: Any])
                    self.mirrorPercentage = model
                }
                if dict.keys.contains("Retries") && dict["Retries"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries()
                    model.fromMap(dict["Retries"] as! [String: Any])
                    self.retries = model
                }
                if dict.keys.contains("Rewrite") && dict["Rewrite"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(dict["Rewrite"] as! [String: Any])
                    self.rewrite = model
                }
                if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
                    self.timeout = dict["Timeout"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchingContent") && dict["MatchingContent"] != nil {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") && dict["MatchingMode"] != nil {
                        self.matchingMode = dict["MatchingMode"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SNIHosts") && dict["SNIHosts"] != nil {
                        self.SNIHosts = dict["SNIHosts"] as! [String]
                    }
                    if dict.keys.contains("TLSPort") && dict["TLSPort"] != nil {
                        self.TLSPort = dict["TLSPort"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchingContent") && dict["MatchingContent"] != nil {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") && dict["MatchingMode"] != nil {
                        self.matchingMode = dict["MatchingMode"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Headers") && dict["Headers"] != nil {
                    var tmp : [CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers] = []
                    for v in dict["Headers"] as! [Any] {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.headers = tmp
                }
                if dict.keys.contains("Ports") && dict["Ports"] != nil {
                    self.ports = dict["Ports"] as! [Int32]
                }
                if dict.keys.contains("TLSMatchAttributes") && dict["TLSMatchAttributes"] != nil {
                    var tmp : [CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes] = []
                    for v in dict["TLSMatchAttributes"] as! [Any] {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.TLSMatchAttributes = tmp
                }
                if dict.keys.contains("URI") && dict["URI"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.URI()
                    model.fromMap(dict["URI"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Number") && dict["Number"] != nil {
                            self.number = dict["Number"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination.Port()
                        model.fromMap(dict["Port"] as! [String: Any])
                        self.port = model
                    }
                    if dict.keys.contains("Subset") && dict["Subset"] != nil {
                        self.subset = dict["Subset"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Destination") && dict["Destination"] != nil {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination()
                    model.fromMap(dict["Destination"] as! [String: Any])
                    self.destination = model
                }
                if dict.keys.contains("Weight") && dict["Weight"] != nil {
                    self.weight = dict["Weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domains") && dict["Domains"] != nil {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("HTTPAdvancedOptions") && dict["HTTPAdvancedOptions"] != nil {
                var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions()
                model.fromMap(dict["HTTPAdvancedOptions"] as! [String: Any])
                self.HTTPAdvancedOptions = model
            }
            if dict.keys.contains("MatchRequest") && dict["MatchRequest"] != nil {
                var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest()
                model.fromMap(dict["MatchRequest"] as! [String: Any])
                self.matchRequest = model
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("RawVSRoute") && dict["RawVSRoute"] != nil {
                self.rawVSRoute = dict["RawVSRoute"] as! Any
            }
            if dict.keys.contains("RouteDestinations") && dict["RouteDestinations"] != nil {
                var tmp : [CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations] = []
                for v in dict["RouteDestinations"] as! [Any] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.routeDestinations = tmp
            }
            if dict.keys.contains("RouteName") && dict["RouteName"] != nil {
                self.routeName = dict["RouteName"] as! String
            }
            if dict.keys.contains("RouteType") && dict["RouteType"] != nil {
                self.routeType = dict["RouteType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayRoute") && dict["GatewayRoute"] != nil {
            var model = CreateIstioGatewayRoutesRequest.GatewayRoute()
            model.fromMap(dict["GatewayRoute"] as! [String: Any])
            self.gatewayRoute = model
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayRoute") && dict["GatewayRoute"] != nil {
            self.gatewayRouteShrink = dict["GatewayRoute"] as! String
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateIstioGatewayRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public var chargeType: String?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLogEnabled") && dict["AccessLogEnabled"] != nil {
            self.accessLogEnabled = dict["AccessLogEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogFile") && dict["AccessLogFile"] != nil {
            self.accessLogFile = dict["AccessLogFile"] as! String
        }
        if dict.keys.contains("AccessLogFormat") && dict["AccessLogFormat"] != nil {
            self.accessLogFormat = dict["AccessLogFormat"] as! String
        }
        if dict.keys.contains("AccessLogProject") && dict["AccessLogProject"] != nil {
            self.accessLogProject = dict["AccessLogProject"] as! String
        }
        if dict.keys.contains("AccessLogServiceEnabled") && dict["AccessLogServiceEnabled"] != nil {
            self.accessLogServiceEnabled = dict["AccessLogServiceEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogServiceHost") && dict["AccessLogServiceHost"] != nil {
            self.accessLogServiceHost = dict["AccessLogServiceHost"] as! String
        }
        if dict.keys.contains("AccessLogServicePort") && dict["AccessLogServicePort"] != nil {
            self.accessLogServicePort = dict["AccessLogServicePort"] as! Int32
        }
        if dict.keys.contains("ApiServerLoadBalancerSpec") && dict["ApiServerLoadBalancerSpec"] != nil {
            self.apiServerLoadBalancerSpec = dict["ApiServerLoadBalancerSpec"] as! String
        }
        if dict.keys.contains("ApiServerPublicEip") && dict["ApiServerPublicEip"] != nil {
            self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
        }
        if dict.keys.contains("AuditProject") && dict["AuditProject"] != nil {
            self.auditProject = dict["AuditProject"] as! String
        }
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("CRAggregationEnabled") && dict["CRAggregationEnabled"] != nil {
            self.CRAggregationEnabled = dict["CRAggregationEnabled"] as! Bool
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClusterSpec") && dict["ClusterSpec"] != nil {
            self.clusterSpec = dict["ClusterSpec"] as! String
        }
        if dict.keys.contains("ConfigSourceEnabled") && dict["ConfigSourceEnabled"] != nil {
            self.configSourceEnabled = dict["ConfigSourceEnabled"] as! Bool
        }
        if dict.keys.contains("ConfigSourceNacosID") && dict["ConfigSourceNacosID"] != nil {
            self.configSourceNacosID = dict["ConfigSourceNacosID"] as! String
        }
        if dict.keys.contains("ControlPlaneLogEnabled") && dict["ControlPlaneLogEnabled"] != nil {
            self.controlPlaneLogEnabled = dict["ControlPlaneLogEnabled"] as! Bool
        }
        if dict.keys.contains("ControlPlaneLogProject") && dict["ControlPlaneLogProject"] != nil {
            self.controlPlaneLogProject = dict["ControlPlaneLogProject"] as! String
        }
        if dict.keys.contains("CustomizedPrometheus") && dict["CustomizedPrometheus"] != nil {
            self.customizedPrometheus = dict["CustomizedPrometheus"] as! Bool
        }
        if dict.keys.contains("CustomizedZipkin") && dict["CustomizedZipkin"] != nil {
            self.customizedZipkin = dict["CustomizedZipkin"] as! Bool
        }
        if dict.keys.contains("DNSProxyingEnabled") && dict["DNSProxyingEnabled"] != nil {
            self.DNSProxyingEnabled = dict["DNSProxyingEnabled"] as! Bool
        }
        if dict.keys.contains("DubboFilterEnabled") && dict["DubboFilterEnabled"] != nil {
            self.dubboFilterEnabled = dict["DubboFilterEnabled"] as! Bool
        }
        if dict.keys.contains("Edition") && dict["Edition"] != nil {
            self.edition = dict["Edition"] as! String
        }
        if dict.keys.contains("EnableAmbient") && dict["EnableAmbient"] != nil {
            self.enableAmbient = dict["EnableAmbient"] as! Bool
        }
        if dict.keys.contains("EnableAudit") && dict["EnableAudit"] != nil {
            self.enableAudit = dict["EnableAudit"] as! Bool
        }
        if dict.keys.contains("EnableCRHistory") && dict["EnableCRHistory"] != nil {
            self.enableCRHistory = dict["EnableCRHistory"] as! Bool
        }
        if dict.keys.contains("EnableSDSServer") && dict["EnableSDSServer"] != nil {
            self.enableSDSServer = dict["EnableSDSServer"] as! Bool
        }
        if dict.keys.contains("ExcludeIPRanges") && dict["ExcludeIPRanges"] != nil {
            self.excludeIPRanges = dict["ExcludeIPRanges"] as! String
        }
        if dict.keys.contains("ExcludeInboundPorts") && dict["ExcludeInboundPorts"] != nil {
            self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
        }
        if dict.keys.contains("ExcludeOutboundPorts") && dict["ExcludeOutboundPorts"] != nil {
            self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
        }
        if dict.keys.contains("ExistingCaCert") && dict["ExistingCaCert"] != nil {
            self.existingCaCert = dict["ExistingCaCert"] as! String
        }
        if dict.keys.contains("ExistingCaKey") && dict["ExistingCaKey"] != nil {
            self.existingCaKey = dict["ExistingCaKey"] as! String
        }
        if dict.keys.contains("ExistingCaType") && dict["ExistingCaType"] != nil {
            self.existingCaType = dict["ExistingCaType"] as! String
        }
        if dict.keys.contains("ExistingRootCaCert") && dict["ExistingRootCaCert"] != nil {
            self.existingRootCaCert = dict["ExistingRootCaCert"] as! String
        }
        if dict.keys.contains("ExistingRootCaKey") && dict["ExistingRootCaKey"] != nil {
            self.existingRootCaKey = dict["ExistingRootCaKey"] as! String
        }
        if dict.keys.contains("FilterGatewayClusterConfig") && dict["FilterGatewayClusterConfig"] != nil {
            self.filterGatewayClusterConfig = dict["FilterGatewayClusterConfig"] as! Bool
        }
        if dict.keys.contains("GatewayAPIEnabled") && dict["GatewayAPIEnabled"] != nil {
            self.gatewayAPIEnabled = dict["GatewayAPIEnabled"] as! Bool
        }
        if dict.keys.contains("GuestCluster") && dict["GuestCluster"] != nil {
            self.guestCluster = dict["GuestCluster"] as! String
        }
        if dict.keys.contains("IncludeIPRanges") && dict["IncludeIPRanges"] != nil {
            self.includeIPRanges = dict["IncludeIPRanges"] as! String
        }
        if dict.keys.contains("IstioVersion") && dict["IstioVersion"] != nil {
            self.istioVersion = dict["IstioVersion"] as! String
        }
        if dict.keys.contains("KialiEnabled") && dict["KialiEnabled"] != nil {
            self.kialiEnabled = dict["KialiEnabled"] as! Bool
        }
        if dict.keys.contains("LocalityLBConf") && dict["LocalityLBConf"] != nil {
            self.localityLBConf = dict["LocalityLBConf"] as! String
        }
        if dict.keys.contains("LocalityLoadBalancing") && dict["LocalityLoadBalancing"] != nil {
            self.localityLoadBalancing = dict["LocalityLoadBalancing"] as! Bool
        }
        if dict.keys.contains("MSEEnabled") && dict["MSEEnabled"] != nil {
            self.MSEEnabled = dict["MSEEnabled"] as! Bool
        }
        if dict.keys.contains("MultiBufferEnabled") && dict["MultiBufferEnabled"] != nil {
            self.multiBufferEnabled = dict["MultiBufferEnabled"] as! Bool
        }
        if dict.keys.contains("MultiBufferPollDelay") && dict["MultiBufferPollDelay"] != nil {
            self.multiBufferPollDelay = dict["MultiBufferPollDelay"] as! String
        }
        if dict.keys.contains("MysqlFilterEnabled") && dict["MysqlFilterEnabled"] != nil {
            self.mysqlFilterEnabled = dict["MysqlFilterEnabled"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OPALimitCPU") && dict["OPALimitCPU"] != nil {
            self.OPALimitCPU = dict["OPALimitCPU"] as! String
        }
        if dict.keys.contains("OPALimitMemory") && dict["OPALimitMemory"] != nil {
            self.OPALimitMemory = dict["OPALimitMemory"] as! String
        }
        if dict.keys.contains("OPALogLevel") && dict["OPALogLevel"] != nil {
            self.OPALogLevel = dict["OPALogLevel"] as! String
        }
        if dict.keys.contains("OPARequestCPU") && dict["OPARequestCPU"] != nil {
            self.OPARequestCPU = dict["OPARequestCPU"] as! String
        }
        if dict.keys.contains("OPARequestMemory") && dict["OPARequestMemory"] != nil {
            self.OPARequestMemory = dict["OPARequestMemory"] as! String
        }
        if dict.keys.contains("OpaEnabled") && dict["OpaEnabled"] != nil {
            self.opaEnabled = dict["OpaEnabled"] as! Bool
        }
        if dict.keys.contains("OpenAgentPolicy") && dict["OpenAgentPolicy"] != nil {
            self.openAgentPolicy = dict["OpenAgentPolicy"] as! Bool
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PilotLoadBalancerSpec") && dict["PilotLoadBalancerSpec"] != nil {
            self.pilotLoadBalancerSpec = dict["PilotLoadBalancerSpec"] as! String
        }
        if dict.keys.contains("PrometheusUrl") && dict["PrometheusUrl"] != nil {
            self.prometheusUrl = dict["PrometheusUrl"] as! String
        }
        if dict.keys.contains("ProxyLimitCPU") && dict["ProxyLimitCPU"] != nil {
            self.proxyLimitCPU = dict["ProxyLimitCPU"] as! String
        }
        if dict.keys.contains("ProxyLimitMemory") && dict["ProxyLimitMemory"] != nil {
            self.proxyLimitMemory = dict["ProxyLimitMemory"] as! String
        }
        if dict.keys.contains("ProxyRequestCPU") && dict["ProxyRequestCPU"] != nil {
            self.proxyRequestCPU = dict["ProxyRequestCPU"] as! String
        }
        if dict.keys.contains("ProxyRequestMemory") && dict["ProxyRequestMemory"] != nil {
            self.proxyRequestMemory = dict["ProxyRequestMemory"] as! String
        }
        if dict.keys.contains("RedisFilterEnabled") && dict["RedisFilterEnabled"] != nil {
            self.redisFilterEnabled = dict["RedisFilterEnabled"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateServiceMeshRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServiceMeshRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("Telemetry") && dict["Telemetry"] != nil {
            self.telemetry = dict["Telemetry"] as! Bool
        }
        if dict.keys.contains("ThriftFilterEnabled") && dict["ThriftFilterEnabled"] != nil {
            self.thriftFilterEnabled = dict["ThriftFilterEnabled"] as! Bool
        }
        if dict.keys.contains("TraceSampling") && dict["TraceSampling"] != nil {
            self.traceSampling = dict["TraceSampling"] as! Double
        }
        if dict.keys.contains("Tracing") && dict["Tracing"] != nil {
            self.tracing = dict["Tracing"] as! Bool
        }
        if dict.keys.contains("UseExistingCA") && dict["UseExistingCA"] != nil {
            self.useExistingCA = dict["UseExistingCA"] as! Bool
        }
        if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
            self.vSwitches = dict["VSwitches"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WebAssemblyFilterEnabled") && dict["WebAssemblyFilterEnabled"] != nil {
            self.webAssemblyFilterEnabled = dict["WebAssemblyFilterEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateServiceMeshResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("LabelSelectorKey") && dict["LabelSelectorKey"] != nil {
            self.labelSelectorKey = dict["LabelSelectorKey"] as! String
        }
        if dict.keys.contains("LabelSelectorValue") && dict["LabelSelectorValue"] != nil {
            self.labelSelectorValue = dict["LabelSelectorValue"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServicesList") && dict["ServicesList"] != nil {
            self.servicesList = dict["ServicesList"] as! String
        }
        if dict.keys.contains("SwimLaneName") && dict["SwimLaneName"] != nil {
            self.swimLaneName = dict["SwimLaneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateSwimLaneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSwimLaneGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var ingressGatewayName: String?

    public var ingressType: String?

    public var serviceMeshId: String?

    public var servicesList: String?

    public override init() {
        super.init()
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
        if self.ingressType != nil {
            map["IngressType"] = self.ingressType!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.servicesList != nil {
            map["ServicesList"] = self.servicesList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IngressGatewayName") && dict["IngressGatewayName"] != nil {
            self.ingressGatewayName = dict["IngressGatewayName"] as! String
        }
        if dict.keys.contains("IngressType") && dict["IngressType"] != nil {
            self.ingressType = dict["IngressType"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServicesList") && dict["ServicesList"] != nil {
            self.servicesList = dict["ServicesList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateSwimLaneGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("RouteName") && dict["RouteName"] != nil {
            self.routeName = dict["RouteName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteGatewayRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretDeleteRecord") && dict["SecretDeleteRecord"] != nil {
            var tmp : [String: SecretDeleteRecordValue] = [:]
            for (k, v) in dict["SecretDeleteRecord"] as! [String: Any] {
                if v != nil {
                    var model = SecretDeleteRecordValue()
                    model.fromMap(v as! [String: Any])
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteGatewaySecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            self.hosts = dict["Hosts"] as! String
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("PortName") && dict["PortName"] != nil {
            self.portName = dict["PortName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteIstioGatewayDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Force") && dict["Force"] != nil {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RetainResources") && dict["RetainResources"] != nil {
            self.retainResources = dict["RetainResources"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteServiceMeshResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("SwimLaneName") && dict["SwimLaneName"] != nil {
            self.swimLaneName = dict["SwimLaneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteSwimLaneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteSwimLaneGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASMGatewayName") && dict["ASMGatewayName"] != nil {
            self.ASMGatewayName = dict["ASMGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServiceNamespace") && dict["ServiceNamespace"] != nil {
            self.serviceNamespace = dict["ServiceNamespace"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceNamespace") && dict["ServiceNamespace"] != nil {
                self.serviceNamespace = dict["ServiceNamespace"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImportedServices") && dict["ImportedServices"] != nil {
            var tmp : [DescribeASMGatewayImportedServicesResponseBody.ImportedServices] = []
            for v in dict["ImportedServices"] as! [Any] {
                var model = DescribeASMGatewayImportedServicesResponseBody.ImportedServices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.importedServices = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeASMGatewayImportedServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CCMVersions") && dict["CCMVersions"] != nil {
            var tmp : [String: CCMVersionsValue] = [:]
            for (k, v) in dict["CCMVersions"] as! [String: Any] {
                if v != nil {
                    var model = CCMVersionsValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.CCMVersions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCCMVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") && dict["Clusters"] != nil {
            self.clusters = dict["Clusters"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCensResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterGrafanaRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("K8sClusterId") && dict["K8sClusterId"] != nil {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dashboards") && dict["Dashboards"] != nil {
            var tmp : [DescribeClusterGrafanaResponseBody.Dashboards] = []
            for v in dict["Dashboards"] as! [Any] {
                var model = DescribeClusterGrafanaResponseBody.Dashboards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dashboards = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeClusterGrafanaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("K8sClusterId") && dict["K8sClusterId"] != nil {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("K8sClusterRegionId") && dict["K8sClusterRegionId"] != nil {
            self.k8sClusterRegionId = dict["K8sClusterRegionId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Prometheus") && dict["Prometheus"] != nil {
            self.prometheus = dict["Prometheus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeClusterPrometheusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var accessLogDashboards: [DescribeClustersInServiceMeshResponseBody.Clusters.AccessLogDashboards]?

        public var clusterDomain: String?

        public var clusterId: String?

        public var clusterType: String?

        public var creationTime: String?

        public var errorMessage: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLogDashboards") && dict["AccessLogDashboards"] != nil {
                var tmp : [DescribeClustersInServiceMeshResponseBody.Clusters.AccessLogDashboards] = []
                for v in dict["AccessLogDashboards"] as! [Any] {
                    var model = DescribeClustersInServiceMeshResponseBody.Clusters.AccessLogDashboards()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accessLogDashboards = tmp
            }
            if dict.keys.contains("ClusterDomain") && dict["ClusterDomain"] != nil {
                self.clusterDomain = dict["ClusterDomain"] as! String
            }
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("LogtailInstalledState") && dict["LogtailInstalledState"] != nil {
                self.logtailInstalledState = dict["LogtailInstalledState"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SgId") && dict["SgId"] != nil {
                self.sgId = dict["SgId"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") && dict["Clusters"] != nil {
            var tmp : [DescribeClustersInServiceMeshResponseBody.Clusters] = []
            for v in dict["Clusters"] as! [Any] {
                var model = DescribeClustersInServiceMeshResponseBody.Clusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusters = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeClustersInServiceMeshResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IstioVersion") && dict["IstioVersion"] != nil {
            self.istioVersion = dict["IstioVersion"] as! String
        }
        if dict.keys.contains("Kind") && dict["Kind"] != nil {
            self.kind = dict["Kind"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChineseName") && dict["ChineseName"] != nil {
                self.chineseName = dict["ChineseName"] as! String
            }
            if dict.keys.contains("EnglishName") && dict["EnglishName"] != nil {
                self.englishName = dict["EnglishName"] as! String
            }
            if dict.keys.contains("Yaml") && dict["Yaml"] != nil {
                self.yaml = dict["Yaml"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") && dict["Templates"] != nil {
            var tmp : [DescribeCrTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = DescribeCrTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCrTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllocationId") && dict["AllocationId"] != nil {
                self.allocationId = dict["AllocationId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EipList") && dict["EipList"] != nil {
            var tmp : [DescribeEipResourcesResponseBody.EipList] = []
            for v in dict["EipList"] as! [Any] {
                var model = DescribeEipResourcesResponseBody.EipList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eipList = tmp
        }
        if dict.keys.contains("PageResult") && dict["PageResult"] != nil {
            var model = DescribeEipResourcesResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeEipResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GatewayName") && dict["GatewayName"] != nil {
                self.gatewayName = dict["GatewayName"] as! String
            }
            if dict.keys.contains("IssueTime") && dict["IssueTime"] != nil {
                self.issueTime = dict["IssueTime"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("SNI") && dict["SNI"] != nil {
                self.SNI = dict["SNI"] as! String
            }
            if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
                self.secretName = dict["SecretName"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewaySecretDetails") && dict["GatewaySecretDetails"] != nil {
            var tmp : [DescribeGatewaySecretDetailsResponseBody.GatewaySecretDetails] = []
            for v in dict["GatewaySecretDetails"] as! [Any] {
                var model = DescribeGatewaySecretDetailsResponseBody.GatewaySecretDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.gatewaySecretDetails = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeGatewaySecretDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("K8sClusterId") && dict["K8sClusterId"] != nil {
            self.k8sClusterId = dict["K8sClusterId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dashboards") && dict["Dashboards"] != nil {
            var tmp : [DescribeGuestClusterAccessLogDashboardsResponseBody.Dashboards] = []
            for v in dict["Dashboards"] as! [Any] {
                var model = DescribeGuestClusterAccessLogDashboardsResponseBody.Dashboards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dashboards = tmp
        }
        if dict.keys.contains("K8sClusterId") && dict["K8sClusterId"] != nil {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeGuestClusterAccessLogDashboardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GuestClusterID") && dict["GuestClusterID"] != nil {
            self.guestClusterID = dict["GuestClusterID"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ShowNsLabels") && dict["ShowNsLabels"] != nil {
            self.showNsLabels = dict["ShowNsLabels"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NsLabels") && dict["NsLabels"] != nil {
            self.nsLabels = dict["NsLabels"] as! [String: Any]
        }
        if dict.keys.contains("NsList") && dict["NsList"] != nil {
            self.nsList = dict["NsList"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeGuestClusterNamespacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GuestClusterID") && dict["GuestClusterID"] != nil {
            self.guestClusterID = dict["GuestClusterID"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PodList") && dict["PodList"] != nil {
            self.podList = dict["PodList"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeGuestClusterPodsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASMGatewayName") && dict["ASMGatewayName"] != nil {
            self.ASMGatewayName = dict["ASMGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServiceNamespace") && dict["ServiceNamespace"] != nil {
            self.serviceNamespace = dict["ServiceNamespace"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NodePort") && dict["NodePort"] != nil {
                    self.nodePort = dict["NodePort"] as! Int32
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("TargetPort") && dict["TargetPort"] != nil {
                    self.targetPort = dict["TargetPort"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterIds") && dict["ClusterIds"] != nil {
                self.clusterIds = dict["ClusterIds"] as! [String]
            }
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                self.labels = dict["Labels"] as! [String: String]
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("Ports") && dict["Ports"] != nil {
                var tmp : [DescribeImportedServicesDetailResponseBody.Details.Ports] = []
                for v in dict["Ports"] as! [Any] {
                    var model = DescribeImportedServicesDetailResponseBody.Details.Ports()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ports = tmp
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                self.serviceType = dict["ServiceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Details") && dict["Details"] != nil {
            var tmp : [DescribeImportedServicesDetailResponseBody.Details] = []
            for v in dict["Details"] as! [Any] {
                var model = DescribeImportedServicesDetailResponseBody.Details()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.details = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeImportedServicesDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CredentialName") && dict["CredentialName"] != nil {
                self.credentialName = dict["CredentialName"] as! String
            }
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("Domains") && dict["Domains"] != nil {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("GatewayCRName") && dict["GatewayCRName"] != nil {
                self.gatewayCRName = dict["GatewayCRName"] as! String
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("PortName") && dict["PortName"] != nil {
                self.portName = dict["PortName"] as! String
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewaySecretDetails") && dict["GatewaySecretDetails"] != nil {
            var tmp : [DescribeIstioGatewayDomainsResponseBody.GatewaySecretDetails] = []
            for v in dict["GatewaySecretDetails"] as! [Any] {
                var model = DescribeIstioGatewayDomainsResponseBody.GatewaySecretDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.gatewaySecretDetails = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeIstioGatewayDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("RouteName") && dict["RouteName"] != nil {
            self.routeName = dict["RouteName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                        self.namespace = dict["Namespace"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HttpStatus") && dict["HttpStatus"] != nil {
                            self.httpStatus = dict["HttpStatus"] as! Int32
                        }
                        if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Abort.Percentage()
                            model.fromMap(dict["Percentage"] as! [String: Any])
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ExponentialDelay") && dict["ExponentialDelay"] != nil {
                            self.exponentialDelay = dict["ExponentialDelay"] as! String
                        }
                        if dict.keys.contains("FixedDelay") && dict["FixedDelay"] != nil {
                            self.fixedDelay = dict["FixedDelay"] as! String
                        }
                        if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Delay.Percentage()
                            model.fromMap(dict["Percentage"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Abort") && dict["Abort"] != nil {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(dict["Abort"] as! [String: Any])
                        self.abort = model
                    }
                    if dict.keys.contains("Delay") && dict["Delay"] != nil {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Delay()
                        model.fromMap(dict["Delay"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authority") && dict["Authority"] != nil {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("RedirectCode") && dict["RedirectCode"] != nil {
                        self.redirectCode = dict["RedirectCode"] as! Int32
                    }
                    if dict.keys.contains("Uri") && dict["Uri"] != nil {
                        self.uri = dict["Uri"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Subset") && dict["Subset"] != nil {
                        self.subset = dict["Subset"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! Bool
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attempts") && dict["Attempts"] != nil {
                        self.attempts = dict["Attempts"] as! Int32
                    }
                    if dict.keys.contains("PerTryTimeout") && dict["PerTryTimeout"] != nil {
                        self.perTryTimeout = dict["PerTryTimeout"] as! String
                    }
                    if dict.keys.contains("RetryOn") && dict["RetryOn"] != nil {
                        self.retryOn = dict["RetryOn"] as! String
                    }
                    if dict.keys.contains("RetryRemoteLocalities") && dict["RetryRemoteLocalities"] != nil {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Retries.RetryRemoteLocalities()
                        model.fromMap(dict["RetryRemoteLocalities"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authority") && dict["Authority"] != nil {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("Uri") && dict["Uri"] != nil {
                        self.uri = dict["Uri"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Delegate") && dict["Delegate"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Delegate()
                    model.fromMap(dict["Delegate"] as! [String: Any])
                    self.delegate = model
                }
                if dict.keys.contains("Fault") && dict["Fault"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault()
                    model.fromMap(dict["Fault"] as! [String: Any])
                    self.fault = model
                }
                if dict.keys.contains("HTTPRedirect") && dict["HTTPRedirect"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(dict["HTTPRedirect"] as! [String: Any])
                    self.HTTPRedirect = model
                }
                if dict.keys.contains("Mirror") && dict["Mirror"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Mirror()
                    model.fromMap(dict["Mirror"] as! [String: Any])
                    self.mirror = model
                }
                if dict.keys.contains("MirrorPercentage") && dict["MirrorPercentage"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(dict["MirrorPercentage"] as! [String: Any])
                    self.mirrorPercentage = model
                }
                if dict.keys.contains("Retries") && dict["Retries"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Retries()
                    model.fromMap(dict["Retries"] as! [String: Any])
                    self.retries = model
                }
                if dict.keys.contains("Rewrite") && dict["Rewrite"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(dict["Rewrite"] as! [String: Any])
                    self.rewrite = model
                }
                if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
                    self.timeout = dict["Timeout"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchingContent") && dict["MatchingContent"] != nil {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") && dict["MatchingMode"] != nil {
                        self.matchingMode = dict["MatchingMode"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SNIHosts") && dict["SNIHosts"] != nil {
                        self.SNIHosts = dict["SNIHosts"] as! [String]
                    }
                    if dict.keys.contains("TLSPort") && dict["TLSPort"] != nil {
                        self.TLSPort = dict["TLSPort"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchingContent") && dict["MatchingContent"] != nil {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") && dict["MatchingMode"] != nil {
                        self.matchingMode = dict["MatchingMode"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Headers") && dict["Headers"] != nil {
                    var tmp : [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.Headers] = []
                    for v in dict["Headers"] as! [Any] {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.Headers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.headers = tmp
                }
                if dict.keys.contains("Ports") && dict["Ports"] != nil {
                    self.ports = dict["Ports"] as! [Int32]
                }
                if dict.keys.contains("TLSMatchAttributes") && dict["TLSMatchAttributes"] != nil {
                    var tmp : [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.TLSMatchAttributes] = []
                    for v in dict["TLSMatchAttributes"] as! [Any] {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.TLSMatchAttributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.TLSMatchAttributes = tmp
                }
                if dict.keys.contains("URI") && dict["URI"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.URI()
                    model.fromMap(dict["URI"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Number") && dict["Number"] != nil {
                            self.number = dict["Number"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Destination.Port()
                        model.fromMap(dict["Port"] as! [String: Any])
                        self.port = model
                    }
                    if dict.keys.contains("Subset") && dict["Subset"] != nil {
                        self.subset = dict["Subset"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Add") && dict["Add"] != nil {
                            self.add = dict["Add"] as! [String: Any]
                        }
                        if dict.keys.contains("Remove") && dict["Remove"] != nil {
                            self.remove = dict["Remove"] as! [String]
                        }
                        if dict.keys.contains("Set") && dict["Set"] != nil {
                            self.set_ = dict["Set"] as! [String: String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Add") && dict["Add"] != nil {
                            self.add = dict["Add"] as! [String: Any]
                        }
                        if dict.keys.contains("Remove") && dict["Remove"] != nil {
                            self.remove = dict["Remove"] as! [String]
                        }
                        if dict.keys.contains("Set") && dict["Set"] != nil {
                            self.set_ = dict["Set"] as! [String: Any]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Request") && dict["Request"] != nil {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers.Request()
                        model.fromMap(dict["Request"] as! [String: Any])
                        self.request = model
                    }
                    if dict.keys.contains("Response") && dict["Response"] != nil {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers.Response()
                        model.fromMap(dict["Response"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Destination") && dict["Destination"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Destination()
                    model.fromMap(dict["Destination"] as! [String: Any])
                    self.destination = model
                }
                if dict.keys.contains("Headers") && dict["Headers"] != nil {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers()
                    model.fromMap(dict["Headers"] as! [String: Any])
                    self.headers = model
                }
                if dict.keys.contains("Weight") && dict["Weight"] != nil {
                    self.weight = dict["Weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domains") && dict["Domains"] != nil {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("HTTPAdvancedOptions") && dict["HTTPAdvancedOptions"] != nil {
                var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions()
                model.fromMap(dict["HTTPAdvancedOptions"] as! [String: Any])
                self.HTTPAdvancedOptions = model
            }
            if dict.keys.contains("HasUnsafeFeatures") && dict["HasUnsafeFeatures"] != nil {
                self.hasUnsafeFeatures = dict["HasUnsafeFeatures"] as! Bool
            }
            if dict.keys.contains("MatchRequest") && dict["MatchRequest"] != nil {
                var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest()
                model.fromMap(dict["MatchRequest"] as! [String: Any])
                self.matchRequest = model
            }
            if dict.keys.contains("RawVSRoute") && dict["RawVSRoute"] != nil {
                self.rawVSRoute = dict["RawVSRoute"] as! String
            }
            if dict.keys.contains("RouteDestinations") && dict["RouteDestinations"] != nil {
                var tmp : [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations] = []
                for v in dict["RouteDestinations"] as! [Any] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.routeDestinations = tmp
            }
            if dict.keys.contains("RouteName") && dict["RouteName"] != nil {
                self.routeName = dict["RouteName"] as! String
            }
            if dict.keys.contains("RouteType") && dict["RouteType"] != nil {
                self.routeType = dict["RouteType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RouteDetail") && dict["RouteDetail"] != nil {
            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail()
            model.fromMap(dict["RouteDetail"] as! [String: Any])
            self.routeDetail = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeIstioGatewayRouteDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ASMGatewayName") && dict["ASMGatewayName"] != nil {
                self.ASMGatewayName = dict["ASMGatewayName"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationHost") && dict["DestinationHost"] != nil {
                self.destinationHost = dict["DestinationHost"] as! [String]
            }
            if dict.keys.contains("DestinationSubSet") && dict["DestinationSubSet"] != nil {
                self.destinationSubSet = dict["DestinationSubSet"] as! [String]
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RouteName") && dict["RouteName"] != nil {
                self.routeName = dict["RouteName"] as! String
            }
            if dict.keys.contains("RoutePath") && dict["RoutePath"] != nil {
                self.routePath = dict["RoutePath"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ManagementRoutes") && dict["ManagementRoutes"] != nil {
            var tmp : [DescribeIstioGatewayRoutesResponseBody.ManagementRoutes] = []
            for v in dict["ManagementRoutes"] as! [Any] {
                var model = DescribeIstioGatewayRoutesResponseBody.ManagementRoutes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.managementRoutes = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeIstioGatewayRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMetadataResponseBody : Tea.TeaModel {
    public class MetaData : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentVersion") && dict["CurrentVersion"] != nil {
                    self.currentVersion = dict["CurrentVersion"] as! String
                }
                if dict.keys.contains("VersionCrds") && dict["VersionCrds"] != nil {
                    self.versionCrds = dict["VersionCrds"] as! [[String: Any]]
                }
                if dict.keys.contains("VersionRegistry") && dict["VersionRegistry"] != nil {
                    self.versionRegistry = dict["VersionRegistry"] as! [[String: Any]]
                }
                if dict.keys.contains("Versions") && dict["Versions"] != nil {
                    self.versions = dict["Versions"] as! [String]
                }
            }
        }
        public var currentVersion: String?

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
            try self.proEdition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentVersion != nil {
                map["CurrentVersion"] = self.currentVersion!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentVersion") && dict["CurrentVersion"] != nil {
                self.currentVersion = dict["CurrentVersion"] as! String
            }
            if dict.keys.contains("ProEdition") && dict["ProEdition"] != nil {
                var model = DescribeMetadataResponseBody.MetaData.ProEdition()
                model.fromMap(dict["ProEdition"] as! [String: Any])
                self.proEdition = model
            }
            if dict.keys.contains("Regions") && dict["Regions"] != nil {
                self.regions = dict["Regions"] as! [String]
            }
            if dict.keys.contains("VersionCrds") && dict["VersionCrds"] != nil {
                self.versionCrds = dict["VersionCrds"] as! [[String: Any]]
            }
            if dict.keys.contains("VersionRegistry") && dict["VersionRegistry"] != nil {
                self.versionRegistry = dict["VersionRegistry"] as! [[String: Any]]
            }
            if dict.keys.contains("Versions") && dict["Versions"] != nil {
                self.versions = dict["Versions"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetaData") && dict["MetaData"] != nil {
            var model = DescribeMetadataResponseBody.MetaData()
            model.fromMap(dict["MetaData"] as! [String: Any])
            self.metaData = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMetadataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InclusionPrefixes") && dict["InclusionPrefixes"] != nil {
                    self.inclusionPrefixes = dict["InclusionPrefixes"] as! [String]
                }
                if dict.keys.contains("InclusionRegexps") && dict["InclusionRegexps"] != nil {
                    self.inclusionRegexps = dict["InclusionRegexps"] as! [String]
                }
                if dict.keys.contains("InclusionSuffixes") && dict["InclusionSuffixes"] != nil {
                    self.inclusionSuffixes = dict["InclusionSuffixes"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Limits") && dict["Limits"] != nil {
                    self.limits = dict["Limits"] as! [String: String]
                }
                if dict.keys.contains("Requests") && dict["Requests"] != nil {
                    self.requests = dict["Requests"] as! [String: String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Limits") && dict["Limits"] != nil {
                    self.limits = dict["Limits"] as! [String: String]
                }
                if dict.keys.contains("Requests") && dict["Requests"] != nil {
                    self.requests = dict["Requests"] as! [String: String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceCPULimit") && dict["ResourceCPULimit"] != nil {
                    self.resourceCPULimit = dict["ResourceCPULimit"] as! String
                }
                if dict.keys.contains("ResourceMemoryLimit") && dict["ResourceMemoryLimit"] != nil {
                    self.resourceMemoryLimit = dict["ResourceMemoryLimit"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceCPURequest") && dict["ResourceCPURequest"] != nil {
                    self.resourceCPURequest = dict["ResourceCPURequest"] as! String
                }
                if dict.keys.contains("ResourceMemoryRequest") && dict["ResourceMemoryRequest"] != nil {
                    self.resourceMemoryRequest = dict["ResourceMemoryRequest"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceCPULimit") && dict["ResourceCPULimit"] != nil {
                    self.resourceCPULimit = dict["ResourceCPULimit"] as! String
                }
                if dict.keys.contains("ResourceMemoryLimit") && dict["ResourceMemoryLimit"] != nil {
                    self.resourceMemoryLimit = dict["ResourceMemoryLimit"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceCPURequest") && dict["ResourceCPURequest"] != nil {
                    self.resourceCPURequest = dict["ResourceCPURequest"] as! String
                }
                if dict.keys.contains("ResourceMemoryRequest") && dict["ResourceMemoryRequest"] != nil {
                    self.resourceMemoryRequest = dict["ResourceMemoryRequest"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CustomTags") && dict["CustomTags"] != nil {
                    self.customTags = dict["CustomTags"] as! [String: Any]
                }
                if dict.keys.contains("MaxPathTagLength") && dict["MaxPathTagLength"] != nil {
                    self.maxPathTagLength = dict["MaxPathTagLength"] as! Int32
                }
                if dict.keys.contains("Sampling") && dict["Sampling"] != nil {
                    self.sampling = dict["Sampling"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Concurrency") && dict["Concurrency"] != nil {
                self.concurrency = dict["Concurrency"] as! Int32
            }
            if dict.keys.contains("EnableCoreDump") && dict["EnableCoreDump"] != nil {
                self.enableCoreDump = dict["EnableCoreDump"] as! Bool
            }
            if dict.keys.contains("ExcludeInboundPorts") && dict["ExcludeInboundPorts"] != nil {
                self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
            }
            if dict.keys.contains("ExcludeOutboundIPRanges") && dict["ExcludeOutboundIPRanges"] != nil {
                self.excludeOutboundIPRanges = dict["ExcludeOutboundIPRanges"] as! String
            }
            if dict.keys.contains("ExcludeOutboundPorts") && dict["ExcludeOutboundPorts"] != nil {
                self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
            }
            if dict.keys.contains("HoldApplicationUntilProxyStarts") && dict["HoldApplicationUntilProxyStarts"] != nil {
                self.holdApplicationUntilProxyStarts = dict["HoldApplicationUntilProxyStarts"] as! Bool
            }
            if dict.keys.contains("IncludeInboundPorts") && dict["IncludeInboundPorts"] != nil {
                self.includeInboundPorts = dict["IncludeInboundPorts"] as! String
            }
            if dict.keys.contains("IncludeOutboundIPRanges") && dict["IncludeOutboundIPRanges"] != nil {
                self.includeOutboundIPRanges = dict["IncludeOutboundIPRanges"] as! String
            }
            if dict.keys.contains("IncludeOutboundPorts") && dict["IncludeOutboundPorts"] != nil {
                self.includeOutboundPorts = dict["IncludeOutboundPorts"] as! String
            }
            if dict.keys.contains("InterceptionMode") && dict["InterceptionMode"] != nil {
                self.interceptionMode = dict["InterceptionMode"] as! String
            }
            if dict.keys.contains("IstioDNSProxyEnabled") && dict["IstioDNSProxyEnabled"] != nil {
                self.istioDNSProxyEnabled = dict["IstioDNSProxyEnabled"] as! Bool
            }
            if dict.keys.contains("LifecycleStr") && dict["LifecycleStr"] != nil {
                self.lifecycleStr = dict["LifecycleStr"] as! String
            }
            if dict.keys.contains("LogLevel") && dict["LogLevel"] != nil {
                self.logLevel = dict["LogLevel"] as! String
            }
            if dict.keys.contains("Privileged") && dict["Privileged"] != nil {
                self.privileged = dict["Privileged"] as! Bool
            }
            if dict.keys.contains("ProxyMetadata") && dict["ProxyMetadata"] != nil {
                self.proxyMetadata = dict["ProxyMetadata"] as! [String: String]
            }
            if dict.keys.contains("ProxyStatsMatcher") && dict["ProxyStatsMatcher"] != nil {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.ProxyStatsMatcher()
                model.fromMap(dict["ProxyStatsMatcher"] as! [String: Any])
                self.proxyStatsMatcher = model
            }
            if dict.keys.contains("ReadinessFailureThreshold") && dict["ReadinessFailureThreshold"] != nil {
                self.readinessFailureThreshold = dict["ReadinessFailureThreshold"] as! Int32
            }
            if dict.keys.contains("ReadinessInitialDelaySeconds") && dict["ReadinessInitialDelaySeconds"] != nil {
                self.readinessInitialDelaySeconds = dict["ReadinessInitialDelaySeconds"] as! Int32
            }
            if dict.keys.contains("ReadinessPeriodSeconds") && dict["ReadinessPeriodSeconds"] != nil {
                self.readinessPeriodSeconds = dict["ReadinessPeriodSeconds"] as! Int32
            }
            if dict.keys.contains("SidecarProxyAckSloResource") && dict["SidecarProxyAckSloResource"] != nil {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyAckSloResource()
                model.fromMap(dict["SidecarProxyAckSloResource"] as! [String: Any])
                self.sidecarProxyAckSloResource = model
            }
            if dict.keys.contains("SidecarProxyInitAckSloResource") && dict["SidecarProxyInitAckSloResource"] != nil {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitAckSloResource()
                model.fromMap(dict["SidecarProxyInitAckSloResource"] as! [String: Any])
                self.sidecarProxyInitAckSloResource = model
            }
            if dict.keys.contains("SidecarProxyInitResourceLimit") && dict["SidecarProxyInitResourceLimit"] != nil {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceLimit()
                model.fromMap(dict["SidecarProxyInitResourceLimit"] as! [String: Any])
                self.sidecarProxyInitResourceLimit = model
            }
            if dict.keys.contains("SidecarProxyInitResourceRequest") && dict["SidecarProxyInitResourceRequest"] != nil {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceRequest()
                model.fromMap(dict["SidecarProxyInitResourceRequest"] as! [String: Any])
                self.sidecarProxyInitResourceRequest = model
            }
            if dict.keys.contains("SidecarProxyResourceLimit") && dict["SidecarProxyResourceLimit"] != nil {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceLimit()
                model.fromMap(dict["SidecarProxyResourceLimit"] as! [String: Any])
                self.sidecarProxyResourceLimit = model
            }
            if dict.keys.contains("SidecarProxyResourceRequest") && dict["SidecarProxyResourceRequest"] != nil {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceRequest()
                model.fromMap(dict["SidecarProxyResourceRequest"] as! [String: Any])
                self.sidecarProxyResourceRequest = model
            }
            if dict.keys.contains("TerminationDrainDuration") && dict["TerminationDrainDuration"] != nil {
                self.terminationDrainDuration = dict["TerminationDrainDuration"] as! String
            }
            if dict.keys.contains("Tracing") && dict["Tracing"] != nil {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.Tracing()
                model.fromMap(dict["Tracing"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigPatches") && dict["ConfigPatches"] != nil {
            var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches()
            model.fromMap(dict["ConfigPatches"] as! [String: Any])
            self.configPatches = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeNamespaceScopeSidecarConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("MultiBufferEnabled") && dict["MultiBufferEnabled"] != nil {
                self.multiBufferEnabled = dict["MultiBufferEnabled"] as! Bool
            }
            if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
                self.nodeType = dict["NodeType"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceTypes") && dict["InstanceTypes"] != nil {
            var tmp : [DescribeNodesInstanceTypeResponseBody.InstanceTypes] = []
            for v in dict["InstanceTypes"] as! [Any] {
                var model = DescribeNodesInstanceTypeResponseBody.InstanceTypes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceTypes = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeNodesInstanceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeReusableSlbRequest : Tea.TeaModel {
    public var k8sClusterId: String?

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
        if self.k8sClusterId != nil {
            map["K8sClusterId"] = self.k8sClusterId!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("K8sClusterId") && dict["K8sClusterId"] != nil {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
            self.networkType = dict["NetworkType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("LoadBalancerName") && dict["LoadBalancerName"] != nil {
                self.loadBalancerName = dict["LoadBalancerName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReusableSlbList") && dict["ReusableSlbList"] != nil {
            var tmp : [DescribeReusableSlbResponseBody.ReusableSlbList] = []
            for v in dict["ReusableSlbList"] as! [Any] {
                var model = DescribeReusableSlbResponseBody.ReusableSlbList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeReusableSlbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckMode") && dict["CheckMode"] != nil {
            self.checkMode = dict["CheckMode"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Locked") && dict["Locked"] != nil {
                    self.locked = dict["Locked"] as! Bool
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Reused") && dict["Reused"] != nil {
                    self.reused = dict["Reused"] as! Bool
                }
                if dict.keys.contains("SLBBackEndServerNumStatus") && dict["SLBBackEndServerNumStatus"] != nil {
                    self.SLBBackEndServerNumStatus = dict["SLBBackEndServerNumStatus"] as! String
                }
                if dict.keys.contains("SLBExistStatus") && dict["SLBExistStatus"] != nil {
                    self.SLBExistStatus = dict["SLBExistStatus"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Locked") && dict["Locked"] != nil {
                    self.locked = dict["Locked"] as! Bool
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Reused") && dict["Reused"] != nil {
                    self.reused = dict["Reused"] as! Bool
                }
                if dict.keys.contains("SLBBackEndServerNumStatus") && dict["SLBBackEndServerNumStatus"] != nil {
                    self.SLBBackEndServerNumStatus = dict["SLBBackEndServerNumStatus"] as! String
                }
                if dict.keys.contains("SLBExistStatus") && dict["SLBExistStatus"] != nil {
                    self.SLBExistStatus = dict["SLBExistStatus"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Locked") && dict["Locked"] != nil {
                    self.locked = dict["Locked"] as! Bool
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Reused") && dict["Reused"] != nil {
                    self.reused = dict["Reused"] as! Bool
                }
                if dict.keys.contains("SLBBackEndServerNumStatus") && dict["SLBBackEndServerNumStatus"] != nil {
                    self.SLBBackEndServerNumStatus = dict["SLBBackEndServerNumStatus"] as! String
                }
                if dict.keys.contains("SLBExistStatus") && dict["SLBExistStatus"] != nil {
                    self.SLBExistStatus = dict["SLBExistStatus"] as! String
                }
            }
        }
        public var accessLogProjectStatus: String?

        public var apiServerEIPStatus: String?

        public var apiServerLoadBalancerStatus: DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.ApiServerLoadBalancerStatus?

        public var auditProjectStatus: String?

        public var canaryPilotLoadBalancerStatus: DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.CanaryPilotLoadBalancerStatus?

        public var controlPlaneProjectStatus: String?

        public var logtailStatusRecord: [String: Any]?

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
            if self.canaryPilotLoadBalancerStatus != nil {
                map["CanaryPilotLoadBalancerStatus"] = self.canaryPilotLoadBalancerStatus?.toMap()
            }
            if self.controlPlaneProjectStatus != nil {
                map["ControlPlaneProjectStatus"] = self.controlPlaneProjectStatus!
            }
            if self.logtailStatusRecord != nil {
                map["LogtailStatusRecord"] = self.logtailStatusRecord!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLogProjectStatus") && dict["AccessLogProjectStatus"] != nil {
                self.accessLogProjectStatus = dict["AccessLogProjectStatus"] as! String
            }
            if dict.keys.contains("ApiServerEIPStatus") && dict["ApiServerEIPStatus"] != nil {
                self.apiServerEIPStatus = dict["ApiServerEIPStatus"] as! String
            }
            if dict.keys.contains("ApiServerLoadBalancerStatus") && dict["ApiServerLoadBalancerStatus"] != nil {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.ApiServerLoadBalancerStatus()
                model.fromMap(dict["ApiServerLoadBalancerStatus"] as! [String: Any])
                self.apiServerLoadBalancerStatus = model
            }
            if dict.keys.contains("AuditProjectStatus") && dict["AuditProjectStatus"] != nil {
                self.auditProjectStatus = dict["AuditProjectStatus"] as! String
            }
            if dict.keys.contains("CanaryPilotLoadBalancerStatus") && dict["CanaryPilotLoadBalancerStatus"] != nil {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.CanaryPilotLoadBalancerStatus()
                model.fromMap(dict["CanaryPilotLoadBalancerStatus"] as! [String: Any])
                self.canaryPilotLoadBalancerStatus = model
            }
            if dict.keys.contains("ControlPlaneProjectStatus") && dict["ControlPlaneProjectStatus"] != nil {
                self.controlPlaneProjectStatus = dict["ControlPlaneProjectStatus"] as! String
            }
            if dict.keys.contains("LogtailStatusRecord") && dict["LogtailStatusRecord"] != nil {
                self.logtailStatusRecord = dict["LogtailStatusRecord"] as! [String: Any]
            }
            if dict.keys.contains("PilotLoadBalancerStatus") && dict["PilotLoadBalancerStatus"] != nil {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.PilotLoadBalancerStatus()
                model.fromMap(dict["PilotLoadBalancerStatus"] as! [String: Any])
                self.pilotLoadBalancerStatus = model
            }
            if dict.keys.contains("RAMApplicationStatus") && dict["RAMApplicationStatus"] != nil {
                self.RAMApplicationStatus = dict["RAMApplicationStatus"] as! String
            }
            if dict.keys.contains("SgStatus") && dict["SgStatus"] != nil {
                self.sgStatus = dict["SgStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterStatus") && dict["ClusterStatus"] != nil {
            var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus()
            model.fromMap(dict["ClusterStatus"] as! [String: Any])
            self.clusterStatus = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshAdditionalStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") && dict["Offset"] != nil {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterDomain") && dict["ClusterDomain"] != nil {
                self.clusterDomain = dict["ClusterDomain"] as! String
            }
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("ForbiddenFlag") && dict["ForbiddenFlag"] != nil {
                self.forbiddenFlag = dict["ForbiddenFlag"] as! Int64
            }
            if dict.keys.contains("ForbiddenInfo") && dict["ForbiddenInfo"] != nil {
                self.forbiddenInfo = dict["ForbiddenInfo"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
                self.serviceMeshId = dict["ServiceMeshId"] as! String
            }
            if dict.keys.contains("SgId") && dict["SgId"] != nil {
                self.sgId = dict["SgId"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") && dict["Clusters"] != nil {
            var tmp : [DescribeServiceMeshClustersResponseBody.Clusters] = []
            for v in dict["Clusters"] as! [Any] {
                var model = DescribeServiceMeshClustersResponseBody.Clusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusters = tmp
        }
        if dict.keys.contains("NumberOfClusters") && dict["NumberOfClusters"] != nil {
            self.numberOfClusters = dict["NumberOfClusters"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
    }
}

public class DescribeServiceMeshDetailResponseBody : Tea.TeaModel {
    public class ServiceMesh : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var intranetApiServerEndpoint: String?

            public var intranetPilotEndpoint: String?

            public var publicApiServerEndpoint: String?

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
                if self.intranetPilotEndpoint != nil {
                    map["IntranetPilotEndpoint"] = self.intranetPilotEndpoint!
                }
                if self.publicApiServerEndpoint != nil {
                    map["PublicApiServerEndpoint"] = self.publicApiServerEndpoint!
                }
                if self.publicPilotEndpoint != nil {
                    map["PublicPilotEndpoint"] = self.publicPilotEndpoint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IntranetApiServerEndpoint") && dict["IntranetApiServerEndpoint"] != nil {
                    self.intranetApiServerEndpoint = dict["IntranetApiServerEndpoint"] as! String
                }
                if dict.keys.contains("IntranetPilotEndpoint") && dict["IntranetPilotEndpoint"] != nil {
                    self.intranetPilotEndpoint = dict["IntranetPilotEndpoint"] as! String
                }
                if dict.keys.contains("PublicApiServerEndpoint") && dict["PublicApiServerEndpoint"] != nil {
                    self.publicApiServerEndpoint = dict["PublicApiServerEndpoint"] as! String
                }
                if dict.keys.contains("PublicPilotEndpoint") && dict["PublicPilotEndpoint"] != nil {
                    self.publicPilotEndpoint = dict["PublicPilotEndpoint"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") && dict["Profile"] != nil {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
                    self.serviceMeshId = dict["ServiceMeshId"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiServerLoadbalancerId") && dict["ApiServerLoadbalancerId"] != nil {
                        self.apiServerLoadbalancerId = dict["ApiServerLoadbalancerId"] as! String
                    }
                    if dict.keys.contains("ApiServerPublicEip") && dict["ApiServerPublicEip"] != nil {
                        self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
                    }
                    if dict.keys.contains("PilotPublicEip") && dict["PilotPublicEip"] != nil {
                        self.pilotPublicEip = dict["PilotPublicEip"] as! Bool
                    }
                    if dict.keys.contains("PilotPublicLoadbalancerId") && dict["PilotPublicLoadbalancerId"] != nil {
                        self.pilotPublicLoadbalancerId = dict["PilotPublicLoadbalancerId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Project") && dict["Project"] != nil {
                            self.project = dict["Project"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AuditProjectStatus") && dict["AuditProjectStatus"] != nil {
                            self.auditProjectStatus = dict["AuditProjectStatus"] as! String
                        }
                        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Project") && dict["Project"] != nil {
                            self.project = dict["Project"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("LogTTL") && dict["LogTTL"] != nil {
                            self.logTTL = dict["LogTTL"] as! Int32
                        }
                        if dict.keys.contains("Project") && dict["Project"] != nil {
                            self.project = dict["Project"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("IstiodImageTag") && dict["IstiodImageTag"] != nil {
                            self.istiodImageTag = dict["IstiodImageTag"] as! String
                        }
                        if dict.keys.contains("Name") && dict["Name"] != nil {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("ProxyImageTag") && dict["ProxyImageTag"] != nil {
                            self.proxyImageTag = dict["ProxyImageTag"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("GatewayEnabled") && dict["GatewayEnabled"] != nil {
                                self.gatewayEnabled = dict["GatewayEnabled"] as! Bool
                            }
                            if dict.keys.contains("GatewayLifecycle") && dict["GatewayLifecycle"] != nil {
                                self.gatewayLifecycle = dict["GatewayLifecycle"] as! Int32
                            }
                            if dict.keys.contains("SidecarEnabled") && dict["SidecarEnabled"] != nil {
                                self.sidecarEnabled = dict["SidecarEnabled"] as! Bool
                            }
                            if dict.keys.contains("SidecarLifecycle") && dict["SidecarLifecycle"] != nil {
                                self.sidecarLifecycle = dict["SidecarLifecycle"] as! Int32
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("TargetAverageUtilization") && dict["TargetAverageUtilization"] != nil {
                                    self.targetAverageUtilization = dict["TargetAverageUtilization"] as! Int32
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("TargetAverageUtilization") && dict["TargetAverageUtilization"] != nil {
                                    self.targetAverageUtilization = dict["TargetAverageUtilization"] as! Int32
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Limits") && dict["Limits"] != nil {
                                    self.limits = dict["Limits"] as! [String: Any]
                                }
                                if dict.keys.contains("Requests") && dict["Requests"] != nil {
                                    self.requests = dict["Requests"] as! [String: Any]
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("EgressAutoscaleEnabled") && dict["EgressAutoscaleEnabled"] != nil {
                                self.egressAutoscaleEnabled = dict["EgressAutoscaleEnabled"] as! Bool
                            }
                            if dict.keys.contains("EgressHpaCpu") && dict["EgressHpaCpu"] != nil {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressHpaCpu()
                                model.fromMap(dict["EgressHpaCpu"] as! [String: Any])
                                self.egressHpaCpu = model
                            }
                            if dict.keys.contains("EgressHpaMemory") && dict["EgressHpaMemory"] != nil {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressHpaMemory()
                                model.fromMap(dict["EgressHpaMemory"] as! [String: Any])
                                self.egressHpaMemory = model
                            }
                            if dict.keys.contains("EgressMaxReplica") && dict["EgressMaxReplica"] != nil {
                                self.egressMaxReplica = dict["EgressMaxReplica"] as! Int32
                            }
                            if dict.keys.contains("EgressMinReplica") && dict["EgressMinReplica"] != nil {
                                self.egressMinReplica = dict["EgressMinReplica"] as! Int32
                            }
                            if dict.keys.contains("EgressReplicaCount") && dict["EgressReplicaCount"] != nil {
                                self.egressReplicaCount = dict["EgressReplicaCount"] as! Int32
                            }
                            if dict.keys.contains("EgressResources") && dict["EgressResources"] != nil {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressResources()
                                model.fromMap(dict["EgressResources"] as! [String: Any])
                                self.egressResources = model
                            }
                            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                                self.enabled = dict["Enabled"] as! Bool
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AutoDiagnosisEnabled") && dict["AutoDiagnosisEnabled"] != nil {
                                self.autoDiagnosisEnabled = dict["AutoDiagnosisEnabled"] as! Bool
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                                self.enabled = dict["Enabled"] as! Bool
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("EnableHistory") && dict["EnableHistory"] != nil {
                                self.enableHistory = dict["EnableHistory"] as! Bool
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("command") && dict["command"] != nil {
                                        self.command = dict["command"] as! [String]
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

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("name") && dict["name"] != nil {
                                            self.name = dict["name"] as! String
                                        }
                                        if dict.keys.contains("value") && dict["value"] != nil {
                                            self.value = dict["value"] as! String
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("host") && dict["host"] != nil {
                                        self.host = dict["host"] as! String
                                    }
                                    if dict.keys.contains("httpHeaders") && dict["httpHeaders"] != nil {
                                        var tmp : [DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet.HttpHeaders] = []
                                        for v in dict["httpHeaders"] as! [Any] {
                                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet.HttpHeaders()
                                            if v != nil {
                                                model.fromMap(v as! [String: Any])
                                            }
                                            tmp.append(model)
                                        }
                                        self.httpHeaders = tmp
                                    }
                                    if dict.keys.contains("port") && dict["port"] != nil {
                                        self.port = dict["port"] as! String
                                    }
                                    if dict.keys.contains("scheme") && dict["scheme"] != nil {
                                        self.scheme = dict["scheme"] as! String
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("host") && dict["host"] != nil {
                                        self.host = dict["host"] as! String
                                    }
                                    if dict.keys.contains("port") && dict["port"] != nil {
                                        self.port = dict["port"] as! String
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("exec") && dict["exec"] != nil {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.Exec()
                                    model.fromMap(dict["exec"] as! [String: Any])
                                    self.exec = model
                                }
                                if dict.keys.contains("httpGet") && dict["httpGet"] != nil {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet()
                                    model.fromMap(dict["httpGet"] as! [String: Any])
                                    self.httpGet = model
                                }
                                if dict.keys.contains("tcpSocket") && dict["tcpSocket"] != nil {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.TcpSocket()
                                    model.fromMap(dict["tcpSocket"] as! [String: Any])
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("command") && dict["command"] != nil {
                                        self.command = dict["command"] as! [String]
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

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("name") && dict["name"] != nil {
                                            self.name = dict["name"] as! String
                                        }
                                        if dict.keys.contains("value") && dict["value"] != nil {
                                            self.value = dict["value"] as! String
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("host") && dict["host"] != nil {
                                        self.host = dict["host"] as! String
                                    }
                                    if dict.keys.contains("httpHeaders") && dict["httpHeaders"] != nil {
                                        var tmp : [DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet.HttpHeaders] = []
                                        for v in dict["httpHeaders"] as! [Any] {
                                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet.HttpHeaders()
                                            if v != nil {
                                                model.fromMap(v as! [String: Any])
                                            }
                                            tmp.append(model)
                                        }
                                        self.httpHeaders = tmp
                                    }
                                    if dict.keys.contains("port") && dict["port"] != nil {
                                        self.port = dict["port"] as! String
                                    }
                                    if dict.keys.contains("scheme") && dict["scheme"] != nil {
                                        self.scheme = dict["scheme"] as! String
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("host") && dict["host"] != nil {
                                        self.host = dict["host"] as! String
                                    }
                                    if dict.keys.contains("port") && dict["port"] != nil {
                                        self.port = dict["port"] as! String
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("exec") && dict["exec"] != nil {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.Exec()
                                    model.fromMap(dict["exec"] as! [String: Any])
                                    self.exec = model
                                }
                                if dict.keys.contains("httpGet") && dict["httpGet"] != nil {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet()
                                    model.fromMap(dict["httpGet"] as! [String: Any])
                                    self.httpGet = model
                                }
                                if dict.keys.contains("tcpSocket") && dict["tcpSocket"] != nil {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.TcpSocket()
                                    model.fromMap(dict["tcpSocket"] as! [String: Any])
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("postStart") && dict["postStart"] != nil {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart()
                                model.fromMap(dict["postStart"] as! [String: Any])
                                self.postStart = model
                            }
                            if dict.keys.contains("preStop") && dict["preStop"] != nil {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop()
                                model.fromMap(dict["preStop"] as! [String: Any])
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("PollDelay") && dict["PollDelay"] != nil {
                                self.pollDelay = dict["PollDelay"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("NFDLabelPruned") && dict["NFDLabelPruned"] != nil {
                                self.NFDLabelPruned = dict["NFDLabelPruned"] as! Bool
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("OPAScopeInjected") && dict["OPAScopeInjected"] != nil {
                                self.OPAScopeInjected = dict["OPAScopeInjected"] as! Bool
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ResourceCPULimit") && dict["ResourceCPULimit"] != nil {
                                self.resourceCPULimit = dict["ResourceCPULimit"] as! String
                            }
                            if dict.keys.contains("ResourceMemoryLimit") && dict["ResourceMemoryLimit"] != nil {
                                self.resourceMemoryLimit = dict["ResourceMemoryLimit"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ResourceCPURequest") && dict["ResourceCPURequest"] != nil {
                                self.resourceCPURequest = dict["ResourceCPURequest"] as! String
                            }
                            if dict.keys.contains("ResourceMemoryRequest") && dict["ResourceMemoryRequest"] != nil {
                                self.resourceMemoryRequest = dict["ResourceMemoryRequest"] as! String
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

                    public var lifecycle: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle?

                    public var multiBuffer: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.MultiBuffer?

                    public var NFDConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.NFDConfiguration?

                    public var OPAScopeInjection: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.OPAScopeInjection?

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
                        try self.lifecycle?.validate()
                        try self.multiBuffer?.validate()
                        try self.NFDConfiguration?.validate()
                        try self.OPAScopeInjection?.validate()
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessLogExtraConf") && dict["AccessLogExtraConf"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AccessLogExtraConf()
                            model.fromMap(dict["AccessLogExtraConf"] as! [String: Any])
                            self.accessLogExtraConf = model
                        }
                        if dict.keys.contains("AdaptiveXdsConfiguration") && dict["AdaptiveXdsConfiguration"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration()
                            model.fromMap(dict["AdaptiveXdsConfiguration"] as! [String: Any])
                            self.adaptiveXdsConfiguration = model
                        }
                        if dict.keys.contains("AutoDiagnosis") && dict["AutoDiagnosis"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AutoDiagnosis()
                            model.fromMap(dict["AutoDiagnosis"] as! [String: Any])
                            self.autoDiagnosis = model
                        }
                        if dict.keys.contains("CRAggregationConfiguration") && dict["CRAggregationConfiguration"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.CRAggregationConfiguration()
                            model.fromMap(dict["CRAggregationConfiguration"] as! [String: Any])
                            self.CRAggregationConfiguration = model
                        }
                        if dict.keys.contains("CRAggregationEnabled") && dict["CRAggregationEnabled"] != nil {
                            self.CRAggregationEnabled = dict["CRAggregationEnabled"] as! Bool
                        }
                        if dict.keys.contains("DiscoverySelectors") && dict["DiscoverySelectors"] != nil {
                            self.discoverySelectors = dict["DiscoverySelectors"] as! [[String: Any]]
                        }
                        if dict.keys.contains("IstioCRHistory") && dict["IstioCRHistory"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.IstioCRHistory()
                            model.fromMap(dict["IstioCRHistory"] as! [String: Any])
                            self.istioCRHistory = model
                        }
                        if dict.keys.contains("Lifecycle") && dict["Lifecycle"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle()
                            model.fromMap(dict["Lifecycle"] as! [String: Any])
                            self.lifecycle = model
                        }
                        if dict.keys.contains("MultiBuffer") && dict["MultiBuffer"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.MultiBuffer()
                            model.fromMap(dict["MultiBuffer"] as! [String: Any])
                            self.multiBuffer = model
                        }
                        if dict.keys.contains("NFDConfiguration") && dict["NFDConfiguration"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.NFDConfiguration()
                            model.fromMap(dict["NFDConfiguration"] as! [String: Any])
                            self.NFDConfiguration = model
                        }
                        if dict.keys.contains("OPAScopeInjection") && dict["OPAScopeInjection"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.OPAScopeInjection()
                            model.fromMap(dict["OPAScopeInjection"] as! [String: Any])
                            self.OPAScopeInjection = model
                        }
                        if dict.keys.contains("SidecarProxyInitResourceLimit") && dict["SidecarProxyInitResourceLimit"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.SidecarProxyInitResourceLimit()
                            model.fromMap(dict["SidecarProxyInitResourceLimit"] as! [String: Any])
                            self.sidecarProxyInitResourceLimit = model
                        }
                        if dict.keys.contains("SidecarProxyInitResourceRequest") && dict["SidecarProxyInitResourceRequest"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.SidecarProxyInitResourceRequest()
                            model.fromMap(dict["SidecarProxyInitResourceRequest"] as! [String: Any])
                            self.sidecarProxyInitResourceRequest = model
                        }
                        if dict.keys.contains("TerminationDrainDuration") && dict["TerminationDrainDuration"] != nil {
                            self.terminationDrainDuration = dict["TerminationDrainDuration"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("GatewayAPIEnabled") && dict["GatewayAPIEnabled"] != nil {
                            self.gatewayAPIEnabled = dict["GatewayAPIEnabled"] as! Bool
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Url") && dict["Url"] != nil {
                            self.url = dict["Url"] as! String
                        }
                    }
                }
                public class LocalityLB : Tea.TeaModel {
                    public var distribute: [String: Any]?

                    public var enabled: Bool?

                    public var failover: [String: Any]?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Distribute") && dict["Distribute"] != nil {
                            self.distribute = dict["Distribute"] as! [String: Any]
                        }
                        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Failover") && dict["Failover"] != nil {
                            self.failover = dict["Failover"] as! [String: Any]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                            self.enabled = dict["Enabled"] as! Bool
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("LimitCPU") && dict["LimitCPU"] != nil {
                            self.limitCPU = dict["LimitCPU"] as! String
                        }
                        if dict.keys.contains("LimitMemory") && dict["LimitMemory"] != nil {
                            self.limitMemory = dict["LimitMemory"] as! String
                        }
                        if dict.keys.contains("LogLevel") && dict["LogLevel"] != nil {
                            self.logLevel = dict["LogLevel"] as! String
                        }
                        if dict.keys.contains("RequestCPU") && dict["RequestCPU"] != nil {
                            self.requestCPU = dict["RequestCPU"] as! String
                        }
                        if dict.keys.contains("RequestMemory") && dict["RequestMemory"] != nil {
                            self.requestMemory = dict["RequestMemory"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("NacosID") && dict["NacosID"] != nil {
                                self.nacosID = dict["NacosID"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("EnableSDSServer") && dict["EnableSDSServer"] != nil {
                                self.enableSDSServer = dict["EnableSDSServer"] as! Bool
                            }
                            if dict.keys.contains("FilterGatewayClusterConfig") && dict["FilterGatewayClusterConfig"] != nil {
                                self.filterGatewayClusterConfig = dict["FilterGatewayClusterConfig"] as! Bool
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConfigSource") && dict["ConfigSource"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot.ConfigSource()
                            model.fromMap(dict["ConfigSource"] as! [String: Any])
                            self.configSource = model
                        }
                        if dict.keys.contains("Feature") && dict["Feature"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot.Feature()
                            model.fromMap(dict["Feature"] as! [String: Any])
                            self.feature = model
                        }
                        if dict.keys.contains("Http10Enabled") && dict["Http10Enabled"] != nil {
                            self.http10Enabled = dict["Http10Enabled"] as! Bool
                        }
                        if dict.keys.contains("TraceSampling") && dict["TraceSampling"] != nil {
                            self.traceSampling = dict["TraceSampling"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ExternalUrl") && dict["ExternalUrl"] != nil {
                            self.externalUrl = dict["ExternalUrl"] as! String
                        }
                        if dict.keys.contains("UseExternal") && dict["UseExternal"] != nil {
                            self.useExternal = dict["UseExternal"] as! Bool
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DubboFilterEnabled") && dict["DubboFilterEnabled"] != nil {
                            self.dubboFilterEnabled = dict["DubboFilterEnabled"] as! Bool
                        }
                        if dict.keys.contains("MysqlFilterEnabled") && dict["MysqlFilterEnabled"] != nil {
                            self.mysqlFilterEnabled = dict["MysqlFilterEnabled"] as! Bool
                        }
                        if dict.keys.contains("RedisFilterEnabled") && dict["RedisFilterEnabled"] != nil {
                            self.redisFilterEnabled = dict["RedisFilterEnabled"] as! Bool
                        }
                        if dict.keys.contains("ThriftFilterEnabled") && dict["ThriftFilterEnabled"] != nil {
                            self.thriftFilterEnabled = dict["ThriftFilterEnabled"] as! Bool
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessLogFile") && dict["AccessLogFile"] != nil {
                            self.accessLogFile = dict["AccessLogFile"] as! String
                        }
                        if dict.keys.contains("AccessLogFormat") && dict["AccessLogFormat"] != nil {
                            self.accessLogFormat = dict["AccessLogFormat"] as! String
                        }
                        if dict.keys.contains("AccessLogServiceEnabled") && dict["AccessLogServiceEnabled"] != nil {
                            self.accessLogServiceEnabled = dict["AccessLogServiceEnabled"] as! Bool
                        }
                        if dict.keys.contains("AccessLogServiceHost") && dict["AccessLogServiceHost"] != nil {
                            self.accessLogServiceHost = dict["AccessLogServiceHost"] as! String
                        }
                        if dict.keys.contains("AccessLogServicePort") && dict["AccessLogServicePort"] != nil {
                            self.accessLogServicePort = dict["AccessLogServicePort"] as! Int32
                        }
                        if dict.keys.contains("ClusterDomain") && dict["ClusterDomain"] != nil {
                            self.clusterDomain = dict["ClusterDomain"] as! String
                        }
                        if dict.keys.contains("EnableDNSProxying") && dict["EnableDNSProxying"] != nil {
                            self.enableDNSProxying = dict["EnableDNSProxying"] as! Bool
                        }
                        if dict.keys.contains("LimitCPU") && dict["LimitCPU"] != nil {
                            self.limitCPU = dict["LimitCPU"] as! String
                        }
                        if dict.keys.contains("LimitMemory") && dict["LimitMemory"] != nil {
                            self.limitMemory = dict["LimitMemory"] as! String
                        }
                        if dict.keys.contains("RequestCPU") && dict["RequestCPU"] != nil {
                            self.requestCPU = dict["RequestCPU"] as! String
                        }
                        if dict.keys.contains("RequestMemory") && dict["RequestMemory"] != nil {
                            self.requestMemory = dict["RequestMemory"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("ExcludeNamespaces") && dict["ExcludeNamespaces"] != nil {
                                self.excludeNamespaces = dict["ExcludeNamespaces"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AutoInjectionPolicyEnabled") && dict["AutoInjectionPolicyEnabled"] != nil {
                            self.autoInjectionPolicyEnabled = dict["AutoInjectionPolicyEnabled"] as! Bool
                        }
                        if dict.keys.contains("EnableNamespacesByDefault") && dict["EnableNamespacesByDefault"] != nil {
                            self.enableNamespacesByDefault = dict["EnableNamespacesByDefault"] as! Bool
                        }
                        if dict.keys.contains("InitCNIConfiguration") && dict["InitCNIConfiguration"] != nil {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.SidecarInjector.InitCNIConfiguration()
                            model.fromMap(dict["InitCNIConfiguration"] as! [String: Any])
                            self.initCNIConfiguration = model
                        }
                        if dict.keys.contains("LimitCPU") && dict["LimitCPU"] != nil {
                            self.limitCPU = dict["LimitCPU"] as! String
                        }
                        if dict.keys.contains("LimitMemory") && dict["LimitMemory"] != nil {
                            self.limitMemory = dict["LimitMemory"] as! String
                        }
                        if dict.keys.contains("RequestCPU") && dict["RequestCPU"] != nil {
                            self.requestCPU = dict["RequestCPU"] as! String
                        }
                        if dict.keys.contains("RequestMemory") && dict["RequestMemory"] != nil {
                            self.requestMemory = dict["RequestMemory"] as! String
                        }
                        if dict.keys.contains("SidecarInjectorNum") && dict["SidecarInjectorNum"] != nil {
                            self.sidecarInjectorNum = dict["SidecarInjectorNum"] as! Int32
                        }
                        if dict.keys.contains("SidecarInjectorWebhookAsYaml") && dict["SidecarInjectorWebhookAsYaml"] != nil {
                            self.sidecarInjectorWebhookAsYaml = dict["SidecarInjectorWebhookAsYaml"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                            self.enabled = dict["Enabled"] as! Bool
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessLog") && dict["AccessLog"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.AccessLog()
                        model.fromMap(dict["AccessLog"] as! [String: Any])
                        self.accessLog = model
                    }
                    if dict.keys.contains("Audit") && dict["Audit"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Audit()
                        model.fromMap(dict["Audit"] as! [String: Any])
                        self.audit = model
                    }
                    if dict.keys.contains("ControlPlaneLogInfo") && dict["ControlPlaneLogInfo"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ControlPlaneLogInfo()
                        model.fromMap(dict["ControlPlaneLogInfo"] as! [String: Any])
                        self.controlPlaneLogInfo = model
                    }
                    if dict.keys.contains("CustomizedZipkin") && dict["CustomizedZipkin"] != nil {
                        self.customizedZipkin = dict["CustomizedZipkin"] as! Bool
                    }
                    if dict.keys.contains("Edition") && dict["Edition"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Edition()
                        model.fromMap(dict["Edition"] as! [String: Any])
                        self.edition = model
                    }
                    if dict.keys.contains("EnableLocalityLB") && dict["EnableLocalityLB"] != nil {
                        self.enableLocalityLB = dict["EnableLocalityLB"] as! Bool
                    }
                    if dict.keys.contains("ExcludeIPRanges") && dict["ExcludeIPRanges"] != nil {
                        self.excludeIPRanges = dict["ExcludeIPRanges"] as! String
                    }
                    if dict.keys.contains("ExcludeInboundPorts") && dict["ExcludeInboundPorts"] != nil {
                        self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
                    }
                    if dict.keys.contains("ExcludeOutboundPorts") && dict["ExcludeOutboundPorts"] != nil {
                        self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
                    }
                    if dict.keys.contains("ExtraConfiguration") && dict["ExtraConfiguration"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration()
                        model.fromMap(dict["ExtraConfiguration"] as! [String: Any])
                        self.extraConfiguration = model
                    }
                    if dict.keys.contains("IncludeIPRanges") && dict["IncludeIPRanges"] != nil {
                        self.includeIPRanges = dict["IncludeIPRanges"] as! String
                    }
                    if dict.keys.contains("K8sNewAPIsSupport") && dict["K8sNewAPIsSupport"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.K8sNewAPIsSupport()
                        model.fromMap(dict["K8sNewAPIsSupport"] as! [String: Any])
                        self.k8sNewAPIsSupport = model
                    }
                    if dict.keys.contains("Kiali") && dict["Kiali"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Kiali()
                        model.fromMap(dict["Kiali"] as! [String: Any])
                        self.kiali = model
                    }
                    if dict.keys.contains("LocalityLB") && dict["LocalityLB"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.LocalityLB()
                        model.fromMap(dict["LocalityLB"] as! [String: Any])
                        self.localityLB = model
                    }
                    if dict.keys.contains("MSE") && dict["MSE"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.MSE()
                        model.fromMap(dict["MSE"] as! [String: Any])
                        self.MSE = model
                    }
                    if dict.keys.contains("OPA") && dict["OPA"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.OPA()
                        model.fromMap(dict["OPA"] as! [String: Any])
                        self.OPA = model
                    }
                    if dict.keys.contains("OutboundTrafficPolicy") && dict["OutboundTrafficPolicy"] != nil {
                        self.outboundTrafficPolicy = dict["OutboundTrafficPolicy"] as! String
                    }
                    if dict.keys.contains("Pilot") && dict["Pilot"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot()
                        model.fromMap(dict["Pilot"] as! [String: Any])
                        self.pilot = model
                    }
                    if dict.keys.contains("Prometheus") && dict["Prometheus"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Prometheus()
                        model.fromMap(dict["Prometheus"] as! [String: Any])
                        self.prometheus = model
                    }
                    if dict.keys.contains("ProtocolSupport") && dict["ProtocolSupport"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ProtocolSupport()
                        model.fromMap(dict["ProtocolSupport"] as! [String: Any])
                        self.protocolSupport = model
                    }
                    if dict.keys.contains("Proxy") && dict["Proxy"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Proxy()
                        model.fromMap(dict["Proxy"] as! [String: Any])
                        self.proxy = model
                    }
                    if dict.keys.contains("SidecarInjector") && dict["SidecarInjector"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.SidecarInjector()
                        model.fromMap(dict["SidecarInjector"] as! [String: Any])
                        self.sidecarInjector = model
                    }
                    if dict.keys.contains("Telemetry") && dict["Telemetry"] != nil {
                        self.telemetry = dict["Telemetry"] as! Bool
                    }
                    if dict.keys.contains("Tracing") && dict["Tracing"] != nil {
                        self.tracing = dict["Tracing"] as! Bool
                    }
                    if dict.keys.contains("WebAssemblyFilterDeployment") && dict["WebAssemblyFilterDeployment"] != nil {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.WebAssemblyFilterDeployment()
                        model.fromMap(dict["WebAssemblyFilterDeployment"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
                        self.securityGroupId = dict["SecurityGroupId"] as! String
                    }
                    if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
                        self.vSwitches = dict["VSwitches"] as! [String]
                    }
                    if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                        self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LoadBalancer") && dict["LoadBalancer"] != nil {
                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.LoadBalancer()
                    model.fromMap(dict["LoadBalancer"] as! [String: Any])
                    self.loadBalancer = model
                }
                if dict.keys.contains("MeshConfig") && dict["MeshConfig"] != nil {
                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig()
                    model.fromMap(dict["MeshConfig"] as! [String: Any])
                    self.meshConfig = model
                }
                if dict.keys.contains("Network") && dict["Network"] != nil {
                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.Network()
                    model.fromMap(dict["Network"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterSpec") && dict["ClusterSpec"] != nil {
                self.clusterSpec = dict["ClusterSpec"] as! String
            }
            if dict.keys.contains("Clusters") && dict["Clusters"] != nil {
                self.clusters = dict["Clusters"] as! [String]
            }
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerType") && dict["OwnerType"] != nil {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("ServiceMeshInfo") && dict["ServiceMeshInfo"] != nil {
                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.ServiceMeshInfo()
                model.fromMap(dict["ServiceMeshInfo"] as! [String: Any])
                self.serviceMeshInfo = model
            }
            if dict.keys.contains("Spec") && dict["Spec"] != nil {
                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec()
                model.fromMap(dict["Spec"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceMesh") && dict["ServiceMesh"] != nil {
            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh()
            model.fromMap(dict["ServiceMesh"] as! [String: Any])
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
            self.privateIpAddress = dict["PrivateIpAddress"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("Kubeconfig") && dict["Kubeconfig"] != nil {
            self.kubeconfig = dict["Kubeconfig"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshKubeconfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Log") && dict["Log"] != nil {
                self.log = dict["Log"] as! String
            }
            if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
                self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Logs") && dict["Logs"] != nil {
            var tmp : [DescribeServiceMeshLogsResponseBody.Logs] = []
            for v in dict["Logs"] as! [Any] {
                var model = DescribeServiceMeshLogsResponseBody.Logs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.logs = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterSynced") && dict["ClusterSynced"] != nil {
                self.clusterSynced = dict["ClusterSynced"] as! String
            }
            if dict.keys.contains("EndpointPercent") && dict["EndpointPercent"] != nil {
                self.endpointPercent = dict["EndpointPercent"] as! String
            }
            if dict.keys.contains("EndpointSynced") && dict["EndpointSynced"] != nil {
                self.endpointSynced = dict["EndpointSynced"] as! String
            }
            if dict.keys.contains("IstioVersion") && dict["IstioVersion"] != nil {
                self.istioVersion = dict["IstioVersion"] as! String
            }
            if dict.keys.contains("ListenerSynced") && dict["ListenerSynced"] != nil {
                self.listenerSynced = dict["ListenerSynced"] as! String
            }
            if dict.keys.contains("ProxyId") && dict["ProxyId"] != nil {
                self.proxyId = dict["ProxyId"] as! String
            }
            if dict.keys.contains("ProxyVersion") && dict["ProxyVersion"] != nil {
                self.proxyVersion = dict["ProxyVersion"] as! String
            }
            if dict.keys.contains("RouteSynced") && dict["RouteSynced"] != nil {
                self.routeSynced = dict["RouteSynced"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProxyStatus") && dict["ProxyStatus"] != nil {
            var tmp : [DescribeServiceMeshProxyStatusResponseBody.ProxyStatus] = []
            for v in dict["ProxyStatus"] as! [Any] {
                var model = DescribeServiceMeshProxyStatusResponseBody.ProxyStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.proxyStatus = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshProxyStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllIstioGatewayFullNames") && dict["AllIstioGatewayFullNames"] != nil {
            self.allIstioGatewayFullNames = dict["AllIstioGatewayFullNames"] as! String
        }
        if dict.keys.contains("GuestClusterIds") && dict["GuestClusterIds"] != nil {
            self.guestClusterIds = dict["GuestClusterIds"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinishedGatewaysNum") && dict["FinishedGatewaysNum"] != nil {
                self.finishedGatewaysNum = dict["FinishedGatewaysNum"] as! Int64
            }
            if dict.keys.contains("GatewayStatusRecord") && dict["GatewayStatusRecord"] != nil {
                var tmp : [String: UpgradeDetailGatewayStatusRecordValue] = [:]
                for (k, v) in dict["GatewayStatusRecord"] as! [String: Any] {
                    if v != nil {
                        var model = UpgradeDetailGatewayStatusRecordValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.gatewayStatusRecord = tmp
            }
            if dict.keys.contains("MeshStatus") && dict["MeshStatus"] != nil {
                self.meshStatus = dict["MeshStatus"] as! String
            }
            if dict.keys.contains("TotalGatewaysNum") && dict["TotalGatewaysNum"] != nil {
                self.totalGatewaysNum = dict["TotalGatewaysNum"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpgradeDetail") && dict["UpgradeDetail"] != nil {
            var model = DescribeServiceMeshUpgradeStatusResponseBody.UpgradeDetail()
            model.fromMap(dict["UpgradeDetail"] as! [String: Any])
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshUpgradeStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasTag") && dict["HasTag"] != nil {
                self.hasTag = dict["HasTag"] as! Bool
            }
            if dict.keys.contains("HostName") && dict["HostName"] != nil {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
                self.securityGroupIds = dict["SecurityGroupIds"] as! String
            }
            if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
                self.serviceMeshId = dict["ServiceMeshId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VMs") && dict["VMs"] != nil {
            var tmp : [DescribeServiceMeshVMsResponseBody.VMs] = []
            for v in dict["VMs"] as! [Any] {
                var model = DescribeServiceMeshVMsResponseBody.VMs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshVMsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeServiceMeshesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeServiceMeshesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IntranetApiServerEndpoint") && dict["IntranetApiServerEndpoint"] != nil {
                    self.intranetApiServerEndpoint = dict["IntranetApiServerEndpoint"] as! String
                }
                if dict.keys.contains("IntranetPilotEndpoint") && dict["IntranetPilotEndpoint"] != nil {
                    self.intranetPilotEndpoint = dict["IntranetPilotEndpoint"] as! String
                }
                if dict.keys.contains("PublicApiServerEndpoint") && dict["PublicApiServerEndpoint"] != nil {
                    self.publicApiServerEndpoint = dict["PublicApiServerEndpoint"] as! String
                }
                if dict.keys.contains("PublicPilotEndpoint") && dict["PublicPilotEndpoint"] != nil {
                    self.publicPilotEndpoint = dict["PublicPilotEndpoint"] as! String
                }
                if dict.keys.contains("ReverseTunnelEndpoint") && dict["ReverseTunnelEndpoint"] != nil {
                    self.reverseTunnelEndpoint = dict["ReverseTunnelEndpoint"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") && dict["Profile"] != nil {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
                    self.serviceMeshId = dict["ServiceMeshId"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiServerLoadbalancerId") && dict["ApiServerLoadbalancerId"] != nil {
                        self.apiServerLoadbalancerId = dict["ApiServerLoadbalancerId"] as! String
                    }
                    if dict.keys.contains("ApiServerPublicEip") && dict["ApiServerPublicEip"] != nil {
                        self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
                    }
                    if dict.keys.contains("PilotPublicEip") && dict["PilotPublicEip"] != nil {
                        self.pilotPublicEip = dict["PilotPublicEip"] as! Bool
                    }
                    if dict.keys.contains("PilotPublicLoadbalancerId") && dict["PilotPublicLoadbalancerId"] != nil {
                        self.pilotPublicLoadbalancerId = dict["PilotPublicLoadbalancerId"] as! String
                    }
                }
            }
            public class MeshConfig : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Http10Enabled") && dict["Http10Enabled"] != nil {
                            self.http10Enabled = dict["Http10Enabled"] as! Bool
                        }
                        if dict.keys.contains("TraceSampling") && dict["TraceSampling"] != nil {
                            self.traceSampling = dict["TraceSampling"] as! Double
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("ExcludeNamespaces") && dict["ExcludeNamespaces"] != nil {
                                self.excludeNamespaces = dict["ExcludeNamespaces"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AutoInjectionPolicyEnabled") && dict["AutoInjectionPolicyEnabled"] != nil {
                            self.autoInjectionPolicyEnabled = dict["AutoInjectionPolicyEnabled"] as! Bool
                        }
                        if dict.keys.contains("EnableNamespacesByDefault") && dict["EnableNamespacesByDefault"] != nil {
                            self.enableNamespacesByDefault = dict["EnableNamespacesByDefault"] as! Bool
                        }
                        if dict.keys.contains("InitCNIConfiguration") && dict["InitCNIConfiguration"] != nil {
                            var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.SidecarInjector.InitCNIConfiguration()
                            model.fromMap(dict["InitCNIConfiguration"] as! [String: Any])
                            self.initCNIConfiguration = model
                        }
                    }
                }
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
                    try self.pilot?.validate()
                    try self.sidecarInjector?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Mtls") && dict["Mtls"] != nil {
                        self.mtls = dict["Mtls"] as! Bool
                    }
                    if dict.keys.contains("OutboundTrafficPolicy") && dict["OutboundTrafficPolicy"] != nil {
                        self.outboundTrafficPolicy = dict["OutboundTrafficPolicy"] as! String
                    }
                    if dict.keys.contains("Pilot") && dict["Pilot"] != nil {
                        var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.Pilot()
                        model.fromMap(dict["Pilot"] as! [String: Any])
                        self.pilot = model
                    }
                    if dict.keys.contains("SidecarInjector") && dict["SidecarInjector"] != nil {
                        var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.SidecarInjector()
                        model.fromMap(dict["SidecarInjector"] as! [String: Any])
                        self.sidecarInjector = model
                    }
                    if dict.keys.contains("StrictMtls") && dict["StrictMtls"] != nil {
                        self.strictMtls = dict["StrictMtls"] as! Bool
                    }
                    if dict.keys.contains("Telemetry") && dict["Telemetry"] != nil {
                        self.telemetry = dict["Telemetry"] as! Bool
                    }
                    if dict.keys.contains("Tracing") && dict["Tracing"] != nil {
                        self.tracing = dict["Tracing"] as! Bool
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
                        self.securityGroupId = dict["SecurityGroupId"] as! String
                    }
                    if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
                        self.vSwitches = dict["VSwitches"] as! [String]
                    }
                    if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                        self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LoadBalancer") && dict["LoadBalancer"] != nil {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.LoadBalancer()
                    model.fromMap(dict["LoadBalancer"] as! [String: Any])
                    self.loadBalancer = model
                }
                if dict.keys.contains("MeshConfig") && dict["MeshConfig"] != nil {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig()
                    model.fromMap(dict["MeshConfig"] as! [String: Any])
                    self.meshConfig = model
                }
                if dict.keys.contains("Network") && dict["Network"] != nil {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.Network()
                    model.fromMap(dict["Network"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterSpec") && dict["ClusterSpec"] != nil {
                self.clusterSpec = dict["ClusterSpec"] as! String
            }
            if dict.keys.contains("Clusters") && dict["Clusters"] != nil {
                self.clusters = dict["Clusters"] as! [String]
            }
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerType") && dict["OwnerType"] != nil {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("ServiceMeshInfo") && dict["ServiceMeshInfo"] != nil {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.ServiceMeshInfo()
                model.fromMap(dict["ServiceMeshInfo"] as! [String: Any])
                self.serviceMeshInfo = model
            }
            if dict.keys.contains("Spec") && dict["Spec"] != nil {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec()
                model.fromMap(dict["Spec"] as! [String: Any])
                self.spec = model
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [DescribeServiceMeshesResponseBody.ServiceMeshes.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceMeshes") && dict["ServiceMeshes"] != nil {
            var tmp : [DescribeServiceMeshesResponseBody.ServiceMeshes] = []
            for v in dict["ServiceMeshes"] as! [Any] {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceMeshesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IstioOperatorVersion") && dict["IstioOperatorVersion"] != nil {
                self.istioOperatorVersion = dict["IstioOperatorVersion"] as! String
            }
            if dict.keys.contains("IstioVersion") && dict["IstioVersion"] != nil {
                self.istioVersion = dict["IstioVersion"] as! String
            }
            if dict.keys.contains("KubernetesVersion") && dict["KubernetesVersion"] != nil {
                self.kubernetesVersion = dict["KubernetesVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            var model = DescribeUpgradeVersionResponseBody.Version()
            model.fromMap(dict["Version"] as! [String: Any])
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUpgradeVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubAccountUserId") && dict["SubAccountUserId"] != nil {
            self.subAccountUserId = dict["SubAccountUserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsRamRole") && dict["IsRamRole"] != nil {
                self.isRamRole = dict["IsRamRole"] as! String
            }
            if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("RoleName") && dict["RoleName"] != nil {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
                self.roleType = dict["RoleType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
            var tmp : [DescribeUserPermissionsResponseBody.Permissions] = []
            for v in dict["Permissions"] as! [Any] {
                var model = DescribeUserPermissionsResponseBody.Permissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUserPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
            self.userType = dict["UserType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UIDs") && dict["UIDs"] != nil {
            self.UIDs = dict["UIDs"] as! [String]
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUsersWithPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasTag") && dict["HasTag"] != nil {
                self.hasTag = dict["HasTag"] as! Bool
            }
            if dict.keys.contains("HostName") && dict["HostName"] != nil {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
                self.securityGroupIds = dict["SecurityGroupIds"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VMs") && dict["VMs"] != nil {
            var tmp : [DescribeVMsInServiceMeshResponseBody.VMs] = []
            for v in dict["VMs"] as! [Any] {
                var model = DescribeVMsInServiceMeshResponseBody.VMs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeVMsInServiceMeshResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VSwitchName") && dict["VSwitchName"] != nil {
                self.vSwitchName = dict["VSwitchName"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
            var tmp : [DescribeVSwitchesResponseBody.VSwitches] = []
            for v in dict["VSwitches"] as! [Any] {
                var model = DescribeVSwitchesResponseBody.VSwitches()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeVSwitchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Edition") && dict["Edition"] != nil {
                self.edition = dict["Edition"] as! String
            }
            if dict.keys.contains("Versions") && dict["Versions"] != nil {
                self.versions = dict["Versions"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VersionInfo") && dict["VersionInfo"] != nil {
            var tmp : [DescribeVersionsResponseBody.VersionInfo] = []
            for v in dict["VersionInfo"] as! [Any] {
                var model = DescribeVersionsResponseBody.VersionInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                self.vpcName = dict["VpcName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Vpcs") && dict["Vpcs"] != nil {
            var tmp : [DescribeVpcsResponseBody.Vpcs] = []
            for v in dict["Vpcs"] as! [Any] {
                var model = DescribeVpcsResponseBody.Vpcs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeVpcsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaCert") && dict["CaCert"] != nil {
            self.caCert = dict["CaCert"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetCaCertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GuestCluster") && dict["GuestCluster"] != nil {
            self.guestCluster = dict["GuestCluster"] as! String
        }
        if dict.keys.contains("LabelSelector") && dict["LabelSelector"] != nil {
            self.labelSelector = dict["LabelSelector"] as! [String: String]
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Mark") && dict["Mark"] != nil {
            self.mark = dict["Mark"] as! String
        }
        if dict.keys.contains("NameSpace") && dict["NameSpace"] != nil {
            self.nameSpace = dict["NameSpace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GuestCluster") && dict["GuestCluster"] != nil {
            self.guestCluster = dict["GuestCluster"] as! String
        }
        if dict.keys.contains("LabelSelector") && dict["LabelSelector"] != nil {
            self.labelSelectorShrink = dict["LabelSelector"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Mark") && dict["Mark"] != nil {
            self.mark = dict["Mark"] as! String
        }
        if dict.keys.contains("NameSpace") && dict["NameSpace"] != nil {
            self.nameSpace = dict["NameSpace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeploymentNameList") && dict["DeploymentNameList"] != nil {
            self.deploymentNameList = dict["DeploymentNameList"] as! [[UInt8]]
        }
        if dict.keys.contains("Mark") && dict["Mark"] != nil {
            self.mark = dict["Mark"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetDeploymentBySelectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("K8sClusterId") && dict["K8sClusterId"] != nil {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dashboards") && dict["Dashboards"] != nil {
            var tmp : [GetGrafanaDashboardUrlResponseBody.Dashboards] = []
            for v in dict["Dashboards"] as! [Any] {
                var model = GetGrafanaDashboardUrlResponseBody.Dashboards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dashboards = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetGrafanaDashboardUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterIds") && dict["ClusterIds"] != nil {
            self.clusterIds = dict["ClusterIds"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
            self.serviceType = dict["ServiceType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") && dict["Address"] != nil {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                    self.hostname = dict["Hostname"] as! String
                }
                if dict.keys.contains("PodName") && dict["PodName"] != nil {
                    self.podName = dict["PodName"] as! String
                }
                if dict.keys.contains("Ports") && dict["Ports"] != nil {
                    self.ports = dict["Ports"] as! [Int32]
                }
                if dict.keys.contains("Region") && dict["Region"] != nil {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("SidecarInjected") && dict["SidecarInjected"] != nil {
                    self.sidecarInjected = dict["SidecarInjected"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointsDetails") && dict["EndpointsDetails"] != nil {
                var tmp : [GetRegisteredServiceEndpointsResponseBody.EndPointSlice.EndpointsDetails] = []
                for v in dict["EndpointsDetails"] as! [Any] {
                    var model = GetRegisteredServiceEndpointsResponseBody.EndPointSlice.EndpointsDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.endpointsDetails = tmp
            }
            if dict.keys.contains("Location") && dict["Location"] != nil {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndPointSlice") && dict["EndPointSlice"] != nil {
            var model = GetRegisteredServiceEndpointsResponseBody.EndPointSlice()
            model.fromMap(dict["EndPointSlice"] as! [String: Any])
            self.endPointSlice = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceEndpoints") && dict["ServiceEndpoints"] != nil {
            var tmp : [GetRegisteredServiceEndpointsResponseBody.ServiceEndpoints] = []
            for v in dict["ServiceEndpoints"] as! [Any] {
                var model = GetRegisteredServiceEndpointsResponseBody.ServiceEndpoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRegisteredServiceEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespaces") && dict["Namespaces"] != nil {
            self.namespaces = dict["Namespaces"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRegisteredServiceNamespacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("SwimLaneName") && dict["SwimLaneName"] != nil {
            self.swimLaneName = dict["SwimLaneName"] as! String
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IngressRule") && dict["IngressRule"] != nil {
            self.ingressRule = dict["IngressRule"] as! String
        }
        if dict.keys.contains("IngressService") && dict["IngressService"] != nil {
            self.ingressService = dict["IngressService"] as! String
        }
        if dict.keys.contains("LabelSelectorKey") && dict["LabelSelectorKey"] != nil {
            self.labelSelectorKey = dict["LabelSelectorKey"] as! String
        }
        if dict.keys.contains("LabelSelectorValue") && dict["LabelSelectorValue"] != nil {
            self.labelSelectorValue = dict["LabelSelectorValue"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServicesList") && dict["ServicesList"] != nil {
            self.servicesList = dict["ServicesList"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetSwimLaneDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
    }
}

public class GetSwimLaneGroupListResponseBody : Tea.TeaModel {
    public class SwimLaneGroupList : Tea.TeaModel {
        public var groupName: String?

        public var ingressGatewayName: String?

        public var ingressType: String?

        public var serviceList: String?

        public override init() {
            super.init()
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
            if self.ingressType != nil {
                map["IngressType"] = self.ingressType!
            }
            if self.serviceList != nil {
                map["ServiceList"] = self.serviceList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("IngressGatewayName") && dict["IngressGatewayName"] != nil {
                self.ingressGatewayName = dict["IngressGatewayName"] as! String
            }
            if dict.keys.contains("IngressType") && dict["IngressType"] != nil {
                self.ingressType = dict["IngressType"] as! String
            }
            if dict.keys.contains("ServiceList") && dict["ServiceList"] != nil {
                self.serviceList = dict["ServiceList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SwimLaneGroupList") && dict["SwimLaneGroupList"] != nil {
            var tmp : [GetSwimLaneGroupListResponseBody.SwimLaneGroupList] = []
            for v in dict["SwimLaneGroupList"] as! [Any] {
                var model = GetSwimLaneGroupListResponseBody.SwimLaneGroupList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetSwimLaneGroupListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("IngressRule") && dict["IngressRule"] != nil {
                self.ingressRule = dict["IngressRule"] as! String
            }
            if dict.keys.contains("IngressService") && dict["IngressService"] != nil {
                self.ingressService = dict["IngressService"] as! String
            }
            if dict.keys.contains("LabelSelectorKey") && dict["LabelSelectorKey"] != nil {
                self.labelSelectorKey = dict["LabelSelectorKey"] as! String
            }
            if dict.keys.contains("LabelSelectorValue") && dict["LabelSelectorValue"] != nil {
                self.labelSelectorValue = dict["LabelSelectorValue"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ServiceList") && dict["ServiceList"] != nil {
                self.serviceList = dict["ServiceList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SwimLaneList") && dict["SwimLaneList"] != nil {
            var tmp : [GetSwimLaneListResponseBody.SwimLaneList] = []
            for v in dict["SwimLaneList"] as! [Any] {
                var model = GetSwimLaneListResponseBody.SwimLaneList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetSwimLaneListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetVmAppMeshInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceAccount") && dict["ServiceAccount"] != nil {
            self.serviceAccount = dict["ServiceAccount"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("TrustDomain") && dict["TrustDomain"] != nil {
            self.trustDomain = dict["TrustDomain"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnvoyEnvContent") && dict["EnvoyEnvContent"] != nil {
                self.envoyEnvContent = dict["EnvoyEnvContent"] as! String
            }
            if dict.keys.contains("HostsContent") && dict["HostsContent"] != nil {
                self.hostsContent = dict["HostsContent"] as! String
            }
            if dict.keys.contains("TokenContent") && dict["TokenContent"] != nil {
                self.tokenContent = dict["TokenContent"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VmMetaInfo") && dict["VmMetaInfo"] != nil {
            var model = GetVmMetaResponseBody.VmMetaInfo()
            model.fromMap(dict["VmMetaInfo"] as! [String: Any])
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetVmMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
            self.permissions = dict["Permissions"] as! String
        }
        if dict.keys.contains("SubAccountUserId") && dict["SubAccountUserId"] != nil {
            self.subAccountUserId = dict["SubAccountUserId"] as! String
        }
        if dict.keys.contains("SubAccountUserIds") && dict["SubAccountUserIds"] != nil {
            self.subAccountUserIds = dict["SubAccountUserIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
            self.permissions = dict["Permissions"] as! String
        }
        if dict.keys.contains("SubAccountUserId") && dict["SubAccountUserId"] != nil {
            self.subAccountUserId = dict["SubAccountUserId"] as! String
        }
        if dict.keys.contains("SubAccountUserIds") && dict["SubAccountUserIds"] != nil {
            self.subAccountUserIdsShrink = dict["SubAccountUserIds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GrantUserPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiServerEipId") && dict["ApiServerEipId"] != nil {
            self.apiServerEipId = dict["ApiServerEipId"] as! String
        }
        if dict.keys.contains("Operation") && dict["Operation"] != nil {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyApiServerEipResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyServiceMeshNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableAudit") && dict["EnableAudit"] != nil {
            self.enableAudit = dict["EnableAudit"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReActivateAuditResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ReserveNamespace") && dict["ReserveNamespace"] != nil {
            self.reserveNamespace = dict["ReserveNamespace"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveClusterFromServiceMeshResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcsId") && dict["EcsId"] != nil {
            self.ecsId = dict["EcsId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveVMFromServiceMeshResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
            self.privateIpAddress = dict["PrivateIpAddress"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Kubeconfig") && dict["Kubeconfig"] != nil {
            self.kubeconfig = dict["Kubeconfig"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RevokeKubeconfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") && dict["Body"] != nil {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateASMGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASMGatewayName") && dict["ASMGatewayName"] != nil {
            self.ASMGatewayName = dict["ASMGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServiceNames") && dict["ServiceNames"] != nil {
            self.serviceNames = dict["ServiceNames"] as! String
        }
        if dict.keys.contains("ServiceNamespace") && dict["ServiceNamespace"] != nil {
            self.serviceNamespace = dict["ServiceNamespace"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateASMGatewayImportedServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("K8sClusterId") && dict["K8sClusterId"] != nil {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateASMNamespaceFromGuestClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("LogTTLInDay") && dict["LogTTLInDay"] != nil {
            self.logTTLInDay = dict["LogTTLInDay"] as! Int32
        }
        if dict.keys.contains("Project") && dict["Project"] != nil {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateControlPlaneLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                        self.namespace = dict["Namespace"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HttpStatus") && dict["HttpStatus"] != nil {
                            self.httpStatus = dict["HttpStatus"] as! Int32
                        }
                        if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort.Percentage()
                            model.fromMap(dict["Percentage"] as! [String: Any])
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FixedDelay") && dict["FixedDelay"] != nil {
                            self.fixedDelay = dict["FixedDelay"] as! String
                        }
                        if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay.Percentage()
                            model.fromMap(dict["Percentage"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Abort") && dict["Abort"] != nil {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(dict["Abort"] as! [String: Any])
                        self.abort = model
                    }
                    if dict.keys.contains("Delay") && dict["Delay"] != nil {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay()
                        model.fromMap(dict["Delay"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authority") && dict["Authority"] != nil {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("RedirectCode") && dict["RedirectCode"] != nil {
                        self.redirectCode = dict["RedirectCode"] as! Int32
                    }
                    if dict.keys.contains("Uri") && dict["Uri"] != nil {
                        self.uri = dict["Uri"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Subset") && dict["Subset"] != nil {
                        self.subset = dict["Subset"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! Bool
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attempts") && dict["Attempts"] != nil {
                        self.attempts = dict["Attempts"] as! Int32
                    }
                    if dict.keys.contains("PerTryTimeout") && dict["PerTryTimeout"] != nil {
                        self.perTryTimeout = dict["PerTryTimeout"] as! String
                    }
                    if dict.keys.contains("RetryOn") && dict["RetryOn"] != nil {
                        self.retryOn = dict["RetryOn"] as! String
                    }
                    if dict.keys.contains("RetryRemoteLocalities") && dict["RetryRemoteLocalities"] != nil {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries.RetryRemoteLocalities()
                        model.fromMap(dict["RetryRemoteLocalities"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authority") && dict["Authority"] != nil {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("Uri") && dict["Uri"] != nil {
                        self.uri = dict["Uri"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Delegate") && dict["Delegate"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Delegate()
                    model.fromMap(dict["Delegate"] as! [String: Any])
                    self.delegate = model
                }
                if dict.keys.contains("Fault") && dict["Fault"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault()
                    model.fromMap(dict["Fault"] as! [String: Any])
                    self.fault = model
                }
                if dict.keys.contains("HTTPRedirect") && dict["HTTPRedirect"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(dict["HTTPRedirect"] as! [String: Any])
                    self.HTTPRedirect = model
                }
                if dict.keys.contains("Mirror") && dict["Mirror"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Mirror()
                    model.fromMap(dict["Mirror"] as! [String: Any])
                    self.mirror = model
                }
                if dict.keys.contains("MirrorPercentage") && dict["MirrorPercentage"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(dict["MirrorPercentage"] as! [String: Any])
                    self.mirrorPercentage = model
                }
                if dict.keys.contains("Retries") && dict["Retries"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries()
                    model.fromMap(dict["Retries"] as! [String: Any])
                    self.retries = model
                }
                if dict.keys.contains("Rewrite") && dict["Rewrite"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(dict["Rewrite"] as! [String: Any])
                    self.rewrite = model
                }
                if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
                    self.timeout = dict["Timeout"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchingContent") && dict["MatchingContent"] != nil {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") && dict["MatchingMode"] != nil {
                        self.matchingMode = dict["MatchingMode"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SNIHosts") && dict["SNIHosts"] != nil {
                        self.SNIHosts = dict["SNIHosts"] as! [String]
                    }
                    if dict.keys.contains("TLSPort") && dict["TLSPort"] != nil {
                        self.TLSPort = dict["TLSPort"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchingContent") && dict["MatchingContent"] != nil {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") && dict["MatchingMode"] != nil {
                        self.matchingMode = dict["MatchingMode"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Headers") && dict["Headers"] != nil {
                    var tmp : [UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers] = []
                    for v in dict["Headers"] as! [Any] {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.headers = tmp
                }
                if dict.keys.contains("Ports") && dict["Ports"] != nil {
                    self.ports = dict["Ports"] as! [Int32]
                }
                if dict.keys.contains("TLSMatchAttributes") && dict["TLSMatchAttributes"] != nil {
                    var tmp : [UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes] = []
                    for v in dict["TLSMatchAttributes"] as! [Any] {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.TLSMatchAttributes = tmp
                }
                if dict.keys.contains("URI") && dict["URI"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.URI()
                    model.fromMap(dict["URI"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Number") && dict["Number"] != nil {
                            self.number = dict["Number"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination.Port()
                        model.fromMap(dict["Port"] as! [String: Any])
                        self.port = model
                    }
                    if dict.keys.contains("Subset") && dict["Subset"] != nil {
                        self.subset = dict["Subset"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Destination") && dict["Destination"] != nil {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination()
                    model.fromMap(dict["Destination"] as! [String: Any])
                    self.destination = model
                }
                if dict.keys.contains("Weight") && dict["Weight"] != nil {
                    self.weight = dict["Weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domains") && dict["Domains"] != nil {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("HTTPAdvancedOptions") && dict["HTTPAdvancedOptions"] != nil {
                var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions()
                model.fromMap(dict["HTTPAdvancedOptions"] as! [String: Any])
                self.HTTPAdvancedOptions = model
            }
            if dict.keys.contains("MatchRequest") && dict["MatchRequest"] != nil {
                var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest()
                model.fromMap(dict["MatchRequest"] as! [String: Any])
                self.matchRequest = model
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("RawVSRoute") && dict["RawVSRoute"] != nil {
                self.rawVSRoute = dict["RawVSRoute"] as! Any
            }
            if dict.keys.contains("RouteDestinations") && dict["RouteDestinations"] != nil {
                var tmp : [UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations] = []
                for v in dict["RouteDestinations"] as! [Any] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.routeDestinations = tmp
            }
            if dict.keys.contains("RouteName") && dict["RouteName"] != nil {
                self.routeName = dict["RouteName"] as! String
            }
            if dict.keys.contains("RouteType") && dict["RouteType"] != nil {
                self.routeType = dict["RouteType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayRoute") && dict["GatewayRoute"] != nil {
            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute()
            model.fromMap(dict["GatewayRoute"] as! [String: Any])
            self.gatewayRoute = model
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayRoute") && dict["GatewayRoute"] != nil {
            self.gatewayRouteShrink = dict["GatewayRoute"] as! String
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateIstioGatewayRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPlaneMode") && dict["DataPlaneMode"] != nil {
            self.dataPlaneMode = dict["DataPlaneMode"] as! String
        }
        if dict.keys.contains("EnableIstioInjection") && dict["EnableIstioInjection"] != nil {
            self.enableIstioInjection = dict["EnableIstioInjection"] as! Bool
        }
        if dict.keys.contains("EnableSidecarSetInjection") && dict["EnableSidecarSetInjection"] != nil {
            self.enableSidecarSetInjection = dict["EnableSidecarSetInjection"] as! Bool
        }
        if dict.keys.contains("IstioRev") && dict["IstioRev"] != nil {
            self.istioRev = dict["IstioRev"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateIstioInjectionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IstioGatewayName") && dict["IstioGatewayName"] != nil {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RouteName") && dict["RouteName"] != nil {
            self.routeName = dict["RouteName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateIstioRouteAdditionalStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CPULimit") && dict["CPULimit"] != nil {
            self.CPULimit = dict["CPULimit"] as! String
        }
        if dict.keys.contains("CPURequirement") && dict["CPURequirement"] != nil {
            self.CPURequirement = dict["CPURequirement"] as! String
        }
        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("MemoryLimit") && dict["MemoryLimit"] != nil {
            self.memoryLimit = dict["MemoryLimit"] as! String
        }
        if dict.keys.contains("MemoryRequirement") && dict["MemoryRequirement"] != nil {
            self.memoryRequirement = dict["MemoryRequirement"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("UsePublicApiServer") && dict["UsePublicApiServer"] != nil {
            self.usePublicApiServer = dict["UsePublicApiServer"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateMeshCRAggregationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLogEnabled") && dict["AccessLogEnabled"] != nil {
            self.accessLogEnabled = dict["AccessLogEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogFile") && dict["AccessLogFile"] != nil {
            self.accessLogFile = dict["AccessLogFile"] as! String
        }
        if dict.keys.contains("AccessLogFormat") && dict["AccessLogFormat"] != nil {
            self.accessLogFormat = dict["AccessLogFormat"] as! String
        }
        if dict.keys.contains("AccessLogGatewayEnabled") && dict["AccessLogGatewayEnabled"] != nil {
            self.accessLogGatewayEnabled = dict["AccessLogGatewayEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogGatewayLifecycle") && dict["AccessLogGatewayLifecycle"] != nil {
            self.accessLogGatewayLifecycle = dict["AccessLogGatewayLifecycle"] as! Int32
        }
        if dict.keys.contains("AccessLogProject") && dict["AccessLogProject"] != nil {
            self.accessLogProject = dict["AccessLogProject"] as! String
        }
        if dict.keys.contains("AccessLogServiceEnabled") && dict["AccessLogServiceEnabled"] != nil {
            self.accessLogServiceEnabled = dict["AccessLogServiceEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogServiceHost") && dict["AccessLogServiceHost"] != nil {
            self.accessLogServiceHost = dict["AccessLogServiceHost"] as! String
        }
        if dict.keys.contains("AccessLogServicePort") && dict["AccessLogServicePort"] != nil {
            self.accessLogServicePort = dict["AccessLogServicePort"] as! Int32
        }
        if dict.keys.contains("AccessLogSidecarEnabled") && dict["AccessLogSidecarEnabled"] != nil {
            self.accessLogSidecarEnabled = dict["AccessLogSidecarEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogSidecarLifecycle") && dict["AccessLogSidecarLifecycle"] != nil {
            self.accessLogSidecarLifecycle = dict["AccessLogSidecarLifecycle"] as! Int32
        }
        if dict.keys.contains("AuditProject") && dict["AuditProject"] != nil {
            self.auditProject = dict["AuditProject"] as! String
        }
        if dict.keys.contains("AutoInjectionPolicyEnabled") && dict["AutoInjectionPolicyEnabled"] != nil {
            self.autoInjectionPolicyEnabled = dict["AutoInjectionPolicyEnabled"] as! Bool
        }
        if dict.keys.contains("CRAggregationEnabled") && dict["CRAggregationEnabled"] != nil {
            self.CRAggregationEnabled = dict["CRAggregationEnabled"] as! Bool
        }
        if dict.keys.contains("ClusterSpec") && dict["ClusterSpec"] != nil {
            self.clusterSpec = dict["ClusterSpec"] as! String
        }
        if dict.keys.contains("CniEnabled") && dict["CniEnabled"] != nil {
            self.cniEnabled = dict["CniEnabled"] as! Bool
        }
        if dict.keys.contains("CniExcludeNamespaces") && dict["CniExcludeNamespaces"] != nil {
            self.cniExcludeNamespaces = dict["CniExcludeNamespaces"] as! String
        }
        if dict.keys.contains("Concurrency") && dict["Concurrency"] != nil {
            self.concurrency = dict["Concurrency"] as! Int32
        }
        if dict.keys.contains("ConfigSourceEnabled") && dict["ConfigSourceEnabled"] != nil {
            self.configSourceEnabled = dict["ConfigSourceEnabled"] as! Bool
        }
        if dict.keys.contains("ConfigSourceNacosID") && dict["ConfigSourceNacosID"] != nil {
            self.configSourceNacosID = dict["ConfigSourceNacosID"] as! String
        }
        if dict.keys.contains("CustomizedPrometheus") && dict["CustomizedPrometheus"] != nil {
            self.customizedPrometheus = dict["CustomizedPrometheus"] as! Bool
        }
        if dict.keys.contains("CustomizedZipkin") && dict["CustomizedZipkin"] != nil {
            self.customizedZipkin = dict["CustomizedZipkin"] as! Bool
        }
        if dict.keys.contains("DNSProxyingEnabled") && dict["DNSProxyingEnabled"] != nil {
            self.DNSProxyingEnabled = dict["DNSProxyingEnabled"] as! Bool
        }
        if dict.keys.contains("DefaultComponentsScheduleConfig") && dict["DefaultComponentsScheduleConfig"] != nil {
            self.defaultComponentsScheduleConfig = dict["DefaultComponentsScheduleConfig"] as! String
        }
        if dict.keys.contains("DiscoverySelectors") && dict["DiscoverySelectors"] != nil {
            self.discoverySelectors = dict["DiscoverySelectors"] as! String
        }
        if dict.keys.contains("DubboFilterEnabled") && dict["DubboFilterEnabled"] != nil {
            self.dubboFilterEnabled = dict["DubboFilterEnabled"] as! Bool
        }
        if dict.keys.contains("EnableAudit") && dict["EnableAudit"] != nil {
            self.enableAudit = dict["EnableAudit"] as! Bool
        }
        if dict.keys.contains("EnableAutoDiagnosis") && dict["EnableAutoDiagnosis"] != nil {
            self.enableAutoDiagnosis = dict["EnableAutoDiagnosis"] as! Bool
        }
        if dict.keys.contains("EnableBootstrapXdsAgent") && dict["EnableBootstrapXdsAgent"] != nil {
            self.enableBootstrapXdsAgent = dict["EnableBootstrapXdsAgent"] as! Bool
        }
        if dict.keys.contains("EnableCRHistory") && dict["EnableCRHistory"] != nil {
            self.enableCRHistory = dict["EnableCRHistory"] as! Bool
        }
        if dict.keys.contains("EnableNamespacesByDefault") && dict["EnableNamespacesByDefault"] != nil {
            self.enableNamespacesByDefault = dict["EnableNamespacesByDefault"] as! Bool
        }
        if dict.keys.contains("EnableSDSServer") && dict["EnableSDSServer"] != nil {
            self.enableSDSServer = dict["EnableSDSServer"] as! Bool
        }
        if dict.keys.contains("ExcludeIPRanges") && dict["ExcludeIPRanges"] != nil {
            self.excludeIPRanges = dict["ExcludeIPRanges"] as! String
        }
        if dict.keys.contains("ExcludeInboundPorts") && dict["ExcludeInboundPorts"] != nil {
            self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
        }
        if dict.keys.contains("ExcludeOutboundPorts") && dict["ExcludeOutboundPorts"] != nil {
            self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
        }
        if dict.keys.contains("FilterGatewayClusterConfig") && dict["FilterGatewayClusterConfig"] != nil {
            self.filterGatewayClusterConfig = dict["FilterGatewayClusterConfig"] as! Bool
        }
        if dict.keys.contains("GatewayAPIEnabled") && dict["GatewayAPIEnabled"] != nil {
            self.gatewayAPIEnabled = dict["GatewayAPIEnabled"] as! Bool
        }
        if dict.keys.contains("HoldApplicationUntilProxyStarts") && dict["HoldApplicationUntilProxyStarts"] != nil {
            self.holdApplicationUntilProxyStarts = dict["HoldApplicationUntilProxyStarts"] as! Bool
        }
        if dict.keys.contains("Http10Enabled") && dict["Http10Enabled"] != nil {
            self.http10Enabled = dict["Http10Enabled"] as! Bool
        }
        if dict.keys.contains("IncludeIPRanges") && dict["IncludeIPRanges"] != nil {
            self.includeIPRanges = dict["IncludeIPRanges"] as! String
        }
        if dict.keys.contains("IncludeInboundPorts") && dict["IncludeInboundPorts"] != nil {
            self.includeInboundPorts = dict["IncludeInboundPorts"] as! String
        }
        if dict.keys.contains("IncludeOutboundPorts") && dict["IncludeOutboundPorts"] != nil {
            self.includeOutboundPorts = dict["IncludeOutboundPorts"] as! String
        }
        if dict.keys.contains("IntegrateKiali") && dict["IntegrateKiali"] != nil {
            self.integrateKiali = dict["IntegrateKiali"] as! Bool
        }
        if dict.keys.contains("InterceptionMode") && dict["InterceptionMode"] != nil {
            self.interceptionMode = dict["InterceptionMode"] as! String
        }
        if dict.keys.contains("KialiArmsAuthTokens") && dict["KialiArmsAuthTokens"] != nil {
            self.kialiArmsAuthTokens = dict["KialiArmsAuthTokens"] as! String
        }
        if dict.keys.contains("KialiEnabled") && dict["KialiEnabled"] != nil {
            self.kialiEnabled = dict["KialiEnabled"] as! Bool
        }
        if dict.keys.contains("KialiServiceAnnotations") && dict["KialiServiceAnnotations"] != nil {
            self.kialiServiceAnnotations = dict["KialiServiceAnnotations"] as! String
        }
        if dict.keys.contains("Lifecycle") && dict["Lifecycle"] != nil {
            self.lifecycle = dict["Lifecycle"] as! String
        }
        if dict.keys.contains("LocalityLBConf") && dict["LocalityLBConf"] != nil {
            self.localityLBConf = dict["LocalityLBConf"] as! String
        }
        if dict.keys.contains("LocalityLoadBalancing") && dict["LocalityLoadBalancing"] != nil {
            self.localityLoadBalancing = dict["LocalityLoadBalancing"] as! Bool
        }
        if dict.keys.contains("LogLevel") && dict["LogLevel"] != nil {
            self.logLevel = dict["LogLevel"] as! String
        }
        if dict.keys.contains("MSEEnabled") && dict["MSEEnabled"] != nil {
            self.MSEEnabled = dict["MSEEnabled"] as! Bool
        }
        if dict.keys.contains("MultiBufferEnabled") && dict["MultiBufferEnabled"] != nil {
            self.multiBufferEnabled = dict["MultiBufferEnabled"] as! Bool
        }
        if dict.keys.contains("MultiBufferPollDelay") && dict["MultiBufferPollDelay"] != nil {
            self.multiBufferPollDelay = dict["MultiBufferPollDelay"] as! String
        }
        if dict.keys.contains("MysqlFilterEnabled") && dict["MysqlFilterEnabled"] != nil {
            self.mysqlFilterEnabled = dict["MysqlFilterEnabled"] as! Bool
        }
        if dict.keys.contains("NFDEnabled") && dict["NFDEnabled"] != nil {
            self.NFDEnabled = dict["NFDEnabled"] as! Bool
        }
        if dict.keys.contains("NFDLabelPruned") && dict["NFDLabelPruned"] != nil {
            self.NFDLabelPruned = dict["NFDLabelPruned"] as! Bool
        }
        if dict.keys.contains("OPAInjectorCPULimit") && dict["OPAInjectorCPULimit"] != nil {
            self.OPAInjectorCPULimit = dict["OPAInjectorCPULimit"] as! String
        }
        if dict.keys.contains("OPAInjectorCPURequirement") && dict["OPAInjectorCPURequirement"] != nil {
            self.OPAInjectorCPURequirement = dict["OPAInjectorCPURequirement"] as! String
        }
        if dict.keys.contains("OPAInjectorMemoryLimit") && dict["OPAInjectorMemoryLimit"] != nil {
            self.OPAInjectorMemoryLimit = dict["OPAInjectorMemoryLimit"] as! String
        }
        if dict.keys.contains("OPAInjectorMemoryRequirement") && dict["OPAInjectorMemoryRequirement"] != nil {
            self.OPAInjectorMemoryRequirement = dict["OPAInjectorMemoryRequirement"] as! String
        }
        if dict.keys.contains("OPALimitCPU") && dict["OPALimitCPU"] != nil {
            self.OPALimitCPU = dict["OPALimitCPU"] as! String
        }
        if dict.keys.contains("OPALimitMemory") && dict["OPALimitMemory"] != nil {
            self.OPALimitMemory = dict["OPALimitMemory"] as! String
        }
        if dict.keys.contains("OPALogLevel") && dict["OPALogLevel"] != nil {
            self.OPALogLevel = dict["OPALogLevel"] as! String
        }
        if dict.keys.contains("OPARequestCPU") && dict["OPARequestCPU"] != nil {
            self.OPARequestCPU = dict["OPARequestCPU"] as! String
        }
        if dict.keys.contains("OPARequestMemory") && dict["OPARequestMemory"] != nil {
            self.OPARequestMemory = dict["OPARequestMemory"] as! String
        }
        if dict.keys.contains("OPAScopeInjected") && dict["OPAScopeInjected"] != nil {
            self.OPAScopeInjected = dict["OPAScopeInjected"] as! Bool
        }
        if dict.keys.contains("OpaEnabled") && dict["OpaEnabled"] != nil {
            self.opaEnabled = dict["OpaEnabled"] as! Bool
        }
        if dict.keys.contains("OpenAgentPolicy") && dict["OpenAgentPolicy"] != nil {
            self.openAgentPolicy = dict["OpenAgentPolicy"] as! Bool
        }
        if dict.keys.contains("OutboundTrafficPolicy") && dict["OutboundTrafficPolicy"] != nil {
            self.outboundTrafficPolicy = dict["OutboundTrafficPolicy"] as! String
        }
        if dict.keys.contains("PrometheusUrl") && dict["PrometheusUrl"] != nil {
            self.prometheusUrl = dict["PrometheusUrl"] as! String
        }
        if dict.keys.contains("ProxyInitCPUResourceLimit") && dict["ProxyInitCPUResourceLimit"] != nil {
            self.proxyInitCPUResourceLimit = dict["ProxyInitCPUResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitCPUResourceRequest") && dict["ProxyInitCPUResourceRequest"] != nil {
            self.proxyInitCPUResourceRequest = dict["ProxyInitCPUResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyInitMemoryResourceLimit") && dict["ProxyInitMemoryResourceLimit"] != nil {
            self.proxyInitMemoryResourceLimit = dict["ProxyInitMemoryResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitMemoryResourceRequest") && dict["ProxyInitMemoryResourceRequest"] != nil {
            self.proxyInitMemoryResourceRequest = dict["ProxyInitMemoryResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyLimitCPU") && dict["ProxyLimitCPU"] != nil {
            self.proxyLimitCPU = dict["ProxyLimitCPU"] as! String
        }
        if dict.keys.contains("ProxyLimitMemory") && dict["ProxyLimitMemory"] != nil {
            self.proxyLimitMemory = dict["ProxyLimitMemory"] as! String
        }
        if dict.keys.contains("ProxyRequestCPU") && dict["ProxyRequestCPU"] != nil {
            self.proxyRequestCPU = dict["ProxyRequestCPU"] as! String
        }
        if dict.keys.contains("ProxyRequestMemory") && dict["ProxyRequestMemory"] != nil {
            self.proxyRequestMemory = dict["ProxyRequestMemory"] as! String
        }
        if dict.keys.contains("ProxyStatsMatcher") && dict["ProxyStatsMatcher"] != nil {
            self.proxyStatsMatcher = dict["ProxyStatsMatcher"] as! String
        }
        if dict.keys.contains("RedisFilterEnabled") && dict["RedisFilterEnabled"] != nil {
            self.redisFilterEnabled = dict["RedisFilterEnabled"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("SidecarInjectorLimitCPU") && dict["SidecarInjectorLimitCPU"] != nil {
            self.sidecarInjectorLimitCPU = dict["SidecarInjectorLimitCPU"] as! String
        }
        if dict.keys.contains("SidecarInjectorLimitMemory") && dict["SidecarInjectorLimitMemory"] != nil {
            self.sidecarInjectorLimitMemory = dict["SidecarInjectorLimitMemory"] as! String
        }
        if dict.keys.contains("SidecarInjectorRequestCPU") && dict["SidecarInjectorRequestCPU"] != nil {
            self.sidecarInjectorRequestCPU = dict["SidecarInjectorRequestCPU"] as! String
        }
        if dict.keys.contains("SidecarInjectorRequestMemory") && dict["SidecarInjectorRequestMemory"] != nil {
            self.sidecarInjectorRequestMemory = dict["SidecarInjectorRequestMemory"] as! String
        }
        if dict.keys.contains("SidecarInjectorWebhookAsYaml") && dict["SidecarInjectorWebhookAsYaml"] != nil {
            self.sidecarInjectorWebhookAsYaml = dict["SidecarInjectorWebhookAsYaml"] as! String
        }
        if dict.keys.contains("Telemetry") && dict["Telemetry"] != nil {
            self.telemetry = dict["Telemetry"] as! Bool
        }
        if dict.keys.contains("TerminationDrainDuration") && dict["TerminationDrainDuration"] != nil {
            self.terminationDrainDuration = dict["TerminationDrainDuration"] as! String
        }
        if dict.keys.contains("ThriftFilterEnabled") && dict["ThriftFilterEnabled"] != nil {
            self.thriftFilterEnabled = dict["ThriftFilterEnabled"] as! Bool
        }
        if dict.keys.contains("TraceCustomTags") && dict["TraceCustomTags"] != nil {
            self.traceCustomTags = dict["TraceCustomTags"] as! String
        }
        if dict.keys.contains("TraceMaxPathTagLength") && dict["TraceMaxPathTagLength"] != nil {
            self.traceMaxPathTagLength = dict["TraceMaxPathTagLength"] as! String
        }
        if dict.keys.contains("TraceSampling") && dict["TraceSampling"] != nil {
            self.traceSampling = dict["TraceSampling"] as! Double
        }
        if dict.keys.contains("Tracing") && dict["Tracing"] != nil {
            self.tracing = dict["Tracing"] as! Bool
        }
        if dict.keys.contains("TracingOnExtZipkinLimitCPU") && dict["TracingOnExtZipkinLimitCPU"] != nil {
            self.tracingOnExtZipkinLimitCPU = dict["TracingOnExtZipkinLimitCPU"] as! String
        }
        if dict.keys.contains("TracingOnExtZipkinLimitMemory") && dict["TracingOnExtZipkinLimitMemory"] != nil {
            self.tracingOnExtZipkinLimitMemory = dict["TracingOnExtZipkinLimitMemory"] as! String
        }
        if dict.keys.contains("TracingOnExtZipkinRequestCPU") && dict["TracingOnExtZipkinRequestCPU"] != nil {
            self.tracingOnExtZipkinRequestCPU = dict["TracingOnExtZipkinRequestCPU"] as! String
        }
        if dict.keys.contains("TracingOnExtZipkinRequestMemory") && dict["TracingOnExtZipkinRequestMemory"] != nil {
            self.tracingOnExtZipkinRequestMemory = dict["TracingOnExtZipkinRequestMemory"] as! String
        }
        if dict.keys.contains("WebAssemblyFilterEnabled") && dict["WebAssemblyFilterEnabled"] != nil {
            self.webAssemblyFilterEnabled = dict["WebAssemblyFilterEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateMeshFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNamespaceScopeSidecarConfigRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Concurrency") && dict["Concurrency"] != nil {
            self.concurrency = dict["Concurrency"] as! Int32
        }
        if dict.keys.contains("EnableCoreDump") && dict["EnableCoreDump"] != nil {
            self.enableCoreDump = dict["EnableCoreDump"] as! Bool
        }
        if dict.keys.contains("ExcludeIPRanges") && dict["ExcludeIPRanges"] != nil {
            self.excludeIPRanges = dict["ExcludeIPRanges"] as! String
        }
        if dict.keys.contains("ExcludeInboundPorts") && dict["ExcludeInboundPorts"] != nil {
            self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
        }
        if dict.keys.contains("ExcludeOutboundPorts") && dict["ExcludeOutboundPorts"] != nil {
            self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
        }
        if dict.keys.contains("HoldApplicationUntilProxyStarts") && dict["HoldApplicationUntilProxyStarts"] != nil {
            self.holdApplicationUntilProxyStarts = dict["HoldApplicationUntilProxyStarts"] as! Bool
        }
        if dict.keys.contains("IncludeIPRanges") && dict["IncludeIPRanges"] != nil {
            self.includeIPRanges = dict["IncludeIPRanges"] as! String
        }
        if dict.keys.contains("IncludeInboundPorts") && dict["IncludeInboundPorts"] != nil {
            self.includeInboundPorts = dict["IncludeInboundPorts"] as! String
        }
        if dict.keys.contains("IncludeOutboundPorts") && dict["IncludeOutboundPorts"] != nil {
            self.includeOutboundPorts = dict["IncludeOutboundPorts"] as! String
        }
        if dict.keys.contains("InterceptionMode") && dict["InterceptionMode"] != nil {
            self.interceptionMode = dict["InterceptionMode"] as! String
        }
        if dict.keys.contains("IstioDNSProxyEnabled") && dict["IstioDNSProxyEnabled"] != nil {
            self.istioDNSProxyEnabled = dict["IstioDNSProxyEnabled"] as! Bool
        }
        if dict.keys.contains("Lifecycle") && dict["Lifecycle"] != nil {
            self.lifecycle = dict["Lifecycle"] as! String
        }
        if dict.keys.contains("LogLevel") && dict["LogLevel"] != nil {
            self.logLevel = dict["LogLevel"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("PostStart") && dict["PostStart"] != nil {
            self.postStart = dict["PostStart"] as! String
        }
        if dict.keys.contains("PreStop") && dict["PreStop"] != nil {
            self.preStop = dict["PreStop"] as! String
        }
        if dict.keys.contains("Privileged") && dict["Privileged"] != nil {
            self.privileged = dict["Privileged"] as! Bool
        }
        if dict.keys.contains("ProxyInitAckSloCPUResourceLimit") && dict["ProxyInitAckSloCPUResourceLimit"] != nil {
            self.proxyInitAckSloCPUResourceLimit = dict["ProxyInitAckSloCPUResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitAckSloCPUResourceRequest") && dict["ProxyInitAckSloCPUResourceRequest"] != nil {
            self.proxyInitAckSloCPUResourceRequest = dict["ProxyInitAckSloCPUResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyInitAckSloMemoryResourceLimit") && dict["ProxyInitAckSloMemoryResourceLimit"] != nil {
            self.proxyInitAckSloMemoryResourceLimit = dict["ProxyInitAckSloMemoryResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitAckSloMemoryResourceRequest") && dict["ProxyInitAckSloMemoryResourceRequest"] != nil {
            self.proxyInitAckSloMemoryResourceRequest = dict["ProxyInitAckSloMemoryResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyInitCPUResourceLimit") && dict["ProxyInitCPUResourceLimit"] != nil {
            self.proxyInitCPUResourceLimit = dict["ProxyInitCPUResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitCPUResourceRequest") && dict["ProxyInitCPUResourceRequest"] != nil {
            self.proxyInitCPUResourceRequest = dict["ProxyInitCPUResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyInitMemoryResourceLimit") && dict["ProxyInitMemoryResourceLimit"] != nil {
            self.proxyInitMemoryResourceLimit = dict["ProxyInitMemoryResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitMemoryResourceRequest") && dict["ProxyInitMemoryResourceRequest"] != nil {
            self.proxyInitMemoryResourceRequest = dict["ProxyInitMemoryResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyMetadata") && dict["ProxyMetadata"] != nil {
            self.proxyMetadata = dict["ProxyMetadata"] as! String
        }
        if dict.keys.contains("ProxyStatsMatcher") && dict["ProxyStatsMatcher"] != nil {
            self.proxyStatsMatcher = dict["ProxyStatsMatcher"] as! String
        }
        if dict.keys.contains("ReadinessFailureThreshold") && dict["ReadinessFailureThreshold"] != nil {
            self.readinessFailureThreshold = dict["ReadinessFailureThreshold"] as! Int32
        }
        if dict.keys.contains("ReadinessInitialDelaySeconds") && dict["ReadinessInitialDelaySeconds"] != nil {
            self.readinessInitialDelaySeconds = dict["ReadinessInitialDelaySeconds"] as! Int32
        }
        if dict.keys.contains("ReadinessPeriodSeconds") && dict["ReadinessPeriodSeconds"] != nil {
            self.readinessPeriodSeconds = dict["ReadinessPeriodSeconds"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("SidecarProxyAckSloCPUResourceLimit") && dict["SidecarProxyAckSloCPUResourceLimit"] != nil {
            self.sidecarProxyAckSloCPUResourceLimit = dict["SidecarProxyAckSloCPUResourceLimit"] as! String
        }
        if dict.keys.contains("SidecarProxyAckSloCPUResourceRequest") && dict["SidecarProxyAckSloCPUResourceRequest"] != nil {
            self.sidecarProxyAckSloCPUResourceRequest = dict["SidecarProxyAckSloCPUResourceRequest"] as! String
        }
        if dict.keys.contains("SidecarProxyAckSloMemoryResourceLimit") && dict["SidecarProxyAckSloMemoryResourceLimit"] != nil {
            self.sidecarProxyAckSloMemoryResourceLimit = dict["SidecarProxyAckSloMemoryResourceLimit"] as! String
        }
        if dict.keys.contains("SidecarProxyAckSloMemoryResourceRequest") && dict["SidecarProxyAckSloMemoryResourceRequest"] != nil {
            self.sidecarProxyAckSloMemoryResourceRequest = dict["SidecarProxyAckSloMemoryResourceRequest"] as! String
        }
        if dict.keys.contains("SidecarProxyCPUResourceLimit") && dict["SidecarProxyCPUResourceLimit"] != nil {
            self.sidecarProxyCPUResourceLimit = dict["SidecarProxyCPUResourceLimit"] as! String
        }
        if dict.keys.contains("SidecarProxyCPUResourceRequest") && dict["SidecarProxyCPUResourceRequest"] != nil {
            self.sidecarProxyCPUResourceRequest = dict["SidecarProxyCPUResourceRequest"] as! String
        }
        if dict.keys.contains("SidecarProxyMemoryResourceLimit") && dict["SidecarProxyMemoryResourceLimit"] != nil {
            self.sidecarProxyMemoryResourceLimit = dict["SidecarProxyMemoryResourceLimit"] as! String
        }
        if dict.keys.contains("SidecarProxyMemoryResourceRequest") && dict["SidecarProxyMemoryResourceRequest"] != nil {
            self.sidecarProxyMemoryResourceRequest = dict["SidecarProxyMemoryResourceRequest"] as! String
        }
        if dict.keys.contains("TerminationDrainDuration") && dict["TerminationDrainDuration"] != nil {
            self.terminationDrainDuration = dict["TerminationDrainDuration"] as! String
        }
        if dict.keys.contains("Tracing") && dict["Tracing"] != nil {
            self.tracing = dict["Tracing"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateNamespaceScopeSidecarConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("LabelSelectorKey") && dict["LabelSelectorKey"] != nil {
            self.labelSelectorKey = dict["LabelSelectorKey"] as! String
        }
        if dict.keys.contains("LabelSelectorValue") && dict["LabelSelectorValue"] != nil {
            self.labelSelectorValue = dict["LabelSelectorValue"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServicesList") && dict["ServicesList"] != nil {
            self.servicesList = dict["ServicesList"] as! String
        }
        if dict.keys.contains("SwimLaneName") && dict["SwimLaneName"] != nil {
            self.swimLaneName = dict["SwimLaneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateSwimLaneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSwimLaneGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var serviceMeshId: String?

    public var servicesList: String?

    public override init() {
        super.init()
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
        if self.servicesList != nil {
            map["ServicesList"] = self.servicesList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServicesList") && dict["ServicesList"] != nil {
            self.servicesList = dict["ServicesList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateSwimLaneGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASMGatewayContinue") && dict["ASMGatewayContinue"] != nil {
            self.ASMGatewayContinue = dict["ASMGatewayContinue"] as! Bool
        }
        if dict.keys.contains("ExpectedVersion") && dict["ExpectedVersion"] != nil {
            self.expectedVersion = dict["ExpectedVersion"] as! String
        }
        if dict.keys.contains("PreCheck") && dict["PreCheck"] != nil {
            self.preCheck = dict["PreCheck"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("SwitchToPro") && dict["SwitchToPro"] != nil {
            self.switchToPro = dict["SwitchToPro"] as! Bool
        }
        if dict.keys.contains("UpgradeGatewayRecords") && dict["UpgradeGatewayRecords"] != nil {
            self.upgradeGatewayRecords = dict["UpgradeGatewayRecords"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradeMeshEditionPartiallyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PreCheck") && dict["PreCheck"] != nil {
            self.preCheck = dict["PreCheck"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") && dict["ServiceMeshId"] != nil {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradeMeshVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
