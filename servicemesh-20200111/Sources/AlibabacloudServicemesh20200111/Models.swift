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
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Message") {
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
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Message") {
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
        if dict.keys.contains("QueryState") {
            self.queryState = dict["QueryState"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
        if dict.keys.contains("SLBGracefulDrainSupport") {
            self.SLBGracefulDrainSupport = dict["SLBGracefulDrainSupport"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Message") {
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
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class AddClusterIntoServiceMeshRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("EcsId") {
            self.ecsId = dict["EcsId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Cert") {
            self.cert = dict["Cert"] as! String
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("SecretName") {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretCreateRecord") {
            var tmp : [String: SecretCreateRecordValue] = [:]
            for (k, v) in dict["SecretCreateRecord"] as! [String: SecretCreateRecordValue] {
                var model = SecretCreateRecordValue()
                model.fromMap(v as! [String: Any])
                tmp[k] = model
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Credential") {
            self.credential = dict["Credential"] as! String
        }
        if dict.keys.contains("ForceHttps") {
            self.forceHttps = dict["ForceHttps"] as! Bool
        }
        if dict.keys.contains("Hosts") {
            self.hosts = dict["Hosts"] as! String
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Number") {
            self.number = dict["Number"] as! Int32
        }
        if dict.keys.contains("PortName") {
            self.portName = dict["PortName"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Namespace") {
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
                            if dict.keys.contains("Value") {
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
                        if dict.keys.contains("HttpStatus") {
                            self.httpStatus = dict["HttpStatus"] as! Int32
                        }
                        if dict.keys.contains("Percentage") {
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
                            if dict.keys.contains("Value") {
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
                        if dict.keys.contains("FixedDelay") {
                            self.fixedDelay = dict["FixedDelay"] as! String
                        }
                        if dict.keys.contains("Percentage") {
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
                    if dict.keys.contains("Abort") {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(dict["Abort"] as! [String: Any])
                        self.abort = model
                    }
                    if dict.keys.contains("Delay") {
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
                    if dict.keys.contains("Authority") {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("RedirectCode") {
                        self.redirectCode = dict["RedirectCode"] as! Int32
                    }
                    if dict.keys.contains("Uri") {
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
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Subset") {
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
                    if dict.keys.contains("Value") {
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
                        if dict.keys.contains("Value") {
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
                    if dict.keys.contains("Attempts") {
                        self.attempts = dict["Attempts"] as! Int32
                    }
                    if dict.keys.contains("PerTryTimeout") {
                        self.perTryTimeout = dict["PerTryTimeout"] as! String
                    }
                    if dict.keys.contains("RetryOn") {
                        self.retryOn = dict["RetryOn"] as! String
                    }
                    if dict.keys.contains("RetryRemoteLocalities") {
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
                    if dict.keys.contains("Authority") {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("Uri") {
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
                if dict.keys.contains("Delegate") {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Delegate()
                    model.fromMap(dict["Delegate"] as! [String: Any])
                    self.delegate = model
                }
                if dict.keys.contains("Fault") {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault()
                    model.fromMap(dict["Fault"] as! [String: Any])
                    self.fault = model
                }
                if dict.keys.contains("HTTPRedirect") {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(dict["HTTPRedirect"] as! [String: Any])
                    self.HTTPRedirect = model
                }
                if dict.keys.contains("Mirror") {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Mirror()
                    model.fromMap(dict["Mirror"] as! [String: Any])
                    self.mirror = model
                }
                if dict.keys.contains("MirrorPercentage") {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(dict["MirrorPercentage"] as! [String: Any])
                    self.mirrorPercentage = model
                }
                if dict.keys.contains("Retries") {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries()
                    model.fromMap(dict["Retries"] as! [String: Any])
                    self.retries = model
                }
                if dict.keys.contains("Rewrite") {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(dict["Rewrite"] as! [String: Any])
                    self.rewrite = model
                }
                if dict.keys.contains("Timeout") {
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
                    if dict.keys.contains("MatchingContent") {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") {
                        self.matchingMode = dict["MatchingMode"] as! String
                    }
                    if dict.keys.contains("Name") {
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
                    if dict.keys.contains("SNIHosts") {
                        self.SNIHosts = dict["SNIHosts"] as! [String]
                    }
                    if dict.keys.contains("TLSPort") {
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
                    if dict.keys.contains("MatchingContent") {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") {
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
                if dict.keys.contains("Headers") {
                    self.headers = dict["Headers"] as! [CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers]
                }
                if dict.keys.contains("Ports") {
                    self.ports = dict["Ports"] as! [Int32]
                }
                if dict.keys.contains("TLSMatchAttributes") {
                    self.TLSMatchAttributes = dict["TLSMatchAttributes"] as! [CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes]
                }
                if dict.keys.contains("URI") {
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
                        if dict.keys.contains("Number") {
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
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Port") {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination.Port()
                        model.fromMap(dict["Port"] as! [String: Any])
                        self.port = model
                    }
                    if dict.keys.contains("Subset") {
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
                if dict.keys.contains("Destination") {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination()
                    model.fromMap(dict["Destination"] as! [String: Any])
                    self.destination = model
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var domains: [String]?

        public var HTTPAdvancedOptions: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions?

        public var matchRequest: CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest?

        public var namespace: String?

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
            if dict.keys.contains("Domains") {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("HTTPAdvancedOptions") {
                var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions()
                model.fromMap(dict["HTTPAdvancedOptions"] as! [String: Any])
                self.HTTPAdvancedOptions = model
            }
            if dict.keys.contains("MatchRequest") {
                var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest()
                model.fromMap(dict["MatchRequest"] as! [String: Any])
                self.matchRequest = model
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("RouteDestinations") {
                self.routeDestinations = dict["RouteDestinations"] as! [CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations]
            }
            if dict.keys.contains("RouteName") {
                self.routeName = dict["RouteName"] as! String
            }
            if dict.keys.contains("RouteType") {
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayRoute") {
            var model = CreateIstioGatewayRoutesRequest.GatewayRoute()
            model.fromMap(dict["GatewayRoute"] as! [String: Any])
            self.gatewayRoute = model
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayRoute") {
            self.gatewayRouteShrink = dict["GatewayRoute"] as! String
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateIstioGatewayRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceMeshRequest : Tea.TeaModel {
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

    public var enableAudit: Bool?

    public var enableCRHistory: Bool?

    public var enableSDSServer: Bool?

    public var excludeIPRanges: String?

    public var excludeInboundPorts: String?

    public var excludeOutboundPorts: String?

    public var filterGatewayClusterConfig: Bool?

    public var gatewayAPIEnabled: Bool?

    public var globalRateLimitEnabled: Bool?

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

    public var telemetry: Bool?

    public var thriftFilterEnabled: Bool?

    public var traceSampling: Double?

    public var tracing: Bool?

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
        if self.filterGatewayClusterConfig != nil {
            map["FilterGatewayClusterConfig"] = self.filterGatewayClusterConfig!
        }
        if self.gatewayAPIEnabled != nil {
            map["GatewayAPIEnabled"] = self.gatewayAPIEnabled!
        }
        if self.globalRateLimitEnabled != nil {
            map["GlobalRateLimitEnabled"] = self.globalRateLimitEnabled!
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
        if dict.keys.contains("AccessLogEnabled") {
            self.accessLogEnabled = dict["AccessLogEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogFile") {
            self.accessLogFile = dict["AccessLogFile"] as! String
        }
        if dict.keys.contains("AccessLogFormat") {
            self.accessLogFormat = dict["AccessLogFormat"] as! String
        }
        if dict.keys.contains("AccessLogProject") {
            self.accessLogProject = dict["AccessLogProject"] as! String
        }
        if dict.keys.contains("AccessLogServiceEnabled") {
            self.accessLogServiceEnabled = dict["AccessLogServiceEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogServiceHost") {
            self.accessLogServiceHost = dict["AccessLogServiceHost"] as! String
        }
        if dict.keys.contains("AccessLogServicePort") {
            self.accessLogServicePort = dict["AccessLogServicePort"] as! Int32
        }
        if dict.keys.contains("ApiServerLoadBalancerSpec") {
            self.apiServerLoadBalancerSpec = dict["ApiServerLoadBalancerSpec"] as! String
        }
        if dict.keys.contains("ApiServerPublicEip") {
            self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
        }
        if dict.keys.contains("AuditProject") {
            self.auditProject = dict["AuditProject"] as! String
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("CRAggregationEnabled") {
            self.CRAggregationEnabled = dict["CRAggregationEnabled"] as! Bool
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClusterSpec") {
            self.clusterSpec = dict["ClusterSpec"] as! String
        }
        if dict.keys.contains("ConfigSourceEnabled") {
            self.configSourceEnabled = dict["ConfigSourceEnabled"] as! Bool
        }
        if dict.keys.contains("ConfigSourceNacosID") {
            self.configSourceNacosID = dict["ConfigSourceNacosID"] as! String
        }
        if dict.keys.contains("ControlPlaneLogEnabled") {
            self.controlPlaneLogEnabled = dict["ControlPlaneLogEnabled"] as! Bool
        }
        if dict.keys.contains("ControlPlaneLogProject") {
            self.controlPlaneLogProject = dict["ControlPlaneLogProject"] as! String
        }
        if dict.keys.contains("CustomizedPrometheus") {
            self.customizedPrometheus = dict["CustomizedPrometheus"] as! Bool
        }
        if dict.keys.contains("CustomizedZipkin") {
            self.customizedZipkin = dict["CustomizedZipkin"] as! Bool
        }
        if dict.keys.contains("DNSProxyingEnabled") {
            self.DNSProxyingEnabled = dict["DNSProxyingEnabled"] as! Bool
        }
        if dict.keys.contains("DubboFilterEnabled") {
            self.dubboFilterEnabled = dict["DubboFilterEnabled"] as! Bool
        }
        if dict.keys.contains("Edition") {
            self.edition = dict["Edition"] as! String
        }
        if dict.keys.contains("EnableAudit") {
            self.enableAudit = dict["EnableAudit"] as! Bool
        }
        if dict.keys.contains("EnableCRHistory") {
            self.enableCRHistory = dict["EnableCRHistory"] as! Bool
        }
        if dict.keys.contains("EnableSDSServer") {
            self.enableSDSServer = dict["EnableSDSServer"] as! Bool
        }
        if dict.keys.contains("ExcludeIPRanges") {
            self.excludeIPRanges = dict["ExcludeIPRanges"] as! String
        }
        if dict.keys.contains("ExcludeInboundPorts") {
            self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
        }
        if dict.keys.contains("ExcludeOutboundPorts") {
            self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
        }
        if dict.keys.contains("FilterGatewayClusterConfig") {
            self.filterGatewayClusterConfig = dict["FilterGatewayClusterConfig"] as! Bool
        }
        if dict.keys.contains("GatewayAPIEnabled") {
            self.gatewayAPIEnabled = dict["GatewayAPIEnabled"] as! Bool
        }
        if dict.keys.contains("GlobalRateLimitEnabled") {
            self.globalRateLimitEnabled = dict["GlobalRateLimitEnabled"] as! Bool
        }
        if dict.keys.contains("IncludeIPRanges") {
            self.includeIPRanges = dict["IncludeIPRanges"] as! String
        }
        if dict.keys.contains("IstioVersion") {
            self.istioVersion = dict["IstioVersion"] as! String
        }
        if dict.keys.contains("KialiEnabled") {
            self.kialiEnabled = dict["KialiEnabled"] as! Bool
        }
        if dict.keys.contains("LocalityLBConf") {
            self.localityLBConf = dict["LocalityLBConf"] as! String
        }
        if dict.keys.contains("LocalityLoadBalancing") {
            self.localityLoadBalancing = dict["LocalityLoadBalancing"] as! Bool
        }
        if dict.keys.contains("MSEEnabled") {
            self.MSEEnabled = dict["MSEEnabled"] as! Bool
        }
        if dict.keys.contains("MultiBufferEnabled") {
            self.multiBufferEnabled = dict["MultiBufferEnabled"] as! Bool
        }
        if dict.keys.contains("MultiBufferPollDelay") {
            self.multiBufferPollDelay = dict["MultiBufferPollDelay"] as! String
        }
        if dict.keys.contains("MysqlFilterEnabled") {
            self.mysqlFilterEnabled = dict["MysqlFilterEnabled"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OPALimitCPU") {
            self.OPALimitCPU = dict["OPALimitCPU"] as! String
        }
        if dict.keys.contains("OPALimitMemory") {
            self.OPALimitMemory = dict["OPALimitMemory"] as! String
        }
        if dict.keys.contains("OPALogLevel") {
            self.OPALogLevel = dict["OPALogLevel"] as! String
        }
        if dict.keys.contains("OPARequestCPU") {
            self.OPARequestCPU = dict["OPARequestCPU"] as! String
        }
        if dict.keys.contains("OPARequestMemory") {
            self.OPARequestMemory = dict["OPARequestMemory"] as! String
        }
        if dict.keys.contains("OpaEnabled") {
            self.opaEnabled = dict["OpaEnabled"] as! Bool
        }
        if dict.keys.contains("OpenAgentPolicy") {
            self.openAgentPolicy = dict["OpenAgentPolicy"] as! Bool
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PilotLoadBalancerSpec") {
            self.pilotLoadBalancerSpec = dict["PilotLoadBalancerSpec"] as! String
        }
        if dict.keys.contains("PrometheusUrl") {
            self.prometheusUrl = dict["PrometheusUrl"] as! String
        }
        if dict.keys.contains("ProxyLimitCPU") {
            self.proxyLimitCPU = dict["ProxyLimitCPU"] as! String
        }
        if dict.keys.contains("ProxyLimitMemory") {
            self.proxyLimitMemory = dict["ProxyLimitMemory"] as! String
        }
        if dict.keys.contains("ProxyRequestCPU") {
            self.proxyRequestCPU = dict["ProxyRequestCPU"] as! String
        }
        if dict.keys.contains("ProxyRequestMemory") {
            self.proxyRequestMemory = dict["ProxyRequestMemory"] as! String
        }
        if dict.keys.contains("RedisFilterEnabled") {
            self.redisFilterEnabled = dict["RedisFilterEnabled"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Telemetry") {
            self.telemetry = dict["Telemetry"] as! Bool
        }
        if dict.keys.contains("ThriftFilterEnabled") {
            self.thriftFilterEnabled = dict["ThriftFilterEnabled"] as! Bool
        }
        if dict.keys.contains("TraceSampling") {
            self.traceSampling = dict["TraceSampling"] as! Double
        }
        if dict.keys.contains("Tracing") {
            self.tracing = dict["Tracing"] as! Bool
        }
        if dict.keys.contains("VSwitches") {
            self.vSwitches = dict["VSwitches"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WebAssemblyFilterEnabled") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceMeshResponseBody()
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
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("RouteName") {
            self.routeName = dict["RouteName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("SecretName") {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretDeleteRecord") {
            var tmp : [String: SecretDeleteRecordValue] = [:]
            for (k, v) in dict["SecretDeleteRecord"] as! [String: SecretDeleteRecordValue] {
                var model = SecretDeleteRecordValue()
                model.fromMap(v as! [String: Any])
                tmp[k] = model
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Hosts") {
            self.hosts = dict["Hosts"] as! String
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("PortName") {
            self.portName = dict["PortName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RetainResources") {
            self.retainResources = dict["RetainResources"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceMeshResponseBody()
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
        if dict.keys.contains("ASMGatewayName") {
            self.ASMGatewayName = dict["ASMGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServiceNamespace") {
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
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceNamespace") {
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
        if dict.keys.contains("ImportedServices") {
            self.importedServices = dict["ImportedServices"] as! [DescribeASMGatewayImportedServicesResponseBody.ImportedServices]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeASMGatewayImportedServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAhasProRequest : Tea.TeaModel {
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAhasProResponseBody : Tea.TeaModel {
    public var requestId: String?

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
            self.status = dict["Status"] as! Bool
        }
    }
}

public class DescribeAhasProResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAhasProResponseBody?

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
            var model = DescribeAhasProResponseBody()
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
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("CCMVersions") {
            var tmp : [String: CCMVersionsValue] = [:]
            for (k, v) in dict["CCMVersions"] as! [String: CCMVersionsValue] {
                var model = CCMVersionsValue()
                model.fromMap(v as! [String: Any])
                tmp[k] = model
            }
            self.CCMVersions = tmp
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Clusters") {
            self.clusters = dict["Clusters"] as! [String]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("K8sClusterId") {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") {
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
        if dict.keys.contains("Dashboards") {
            self.dashboards = dict["Dashboards"] as! [DescribeClusterGrafanaResponseBody.Dashboards]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("K8sClusterId") {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("K8sClusterRegionId") {
            self.k8sClusterRegionId = dict["K8sClusterRegionId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Prometheus") {
            self.prometheus = dict["Prometheus"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Url") {
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
            if dict.keys.contains("AccessLogDashboards") {
                self.accessLogDashboards = dict["AccessLogDashboards"] as! [DescribeClustersInServiceMeshResponseBody.Clusters.AccessLogDashboards]
            }
            if dict.keys.contains("ClusterDomain") {
                self.clusterDomain = dict["ClusterDomain"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterType") {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("LogtailInstalledState") {
                self.logtailInstalledState = dict["LogtailInstalledState"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SgId") {
                self.sgId = dict["SgId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcId") {
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
        if dict.keys.contains("Clusters") {
            self.clusters = dict["Clusters"] as! [DescribeClustersInServiceMeshResponseBody.Clusters]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("IstioVersion") {
            self.istioVersion = dict["IstioVersion"] as! String
        }
        if dict.keys.contains("Kind") {
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
            if dict.keys.contains("ChineseName") {
                self.chineseName = dict["ChineseName"] as! String
            }
            if dict.keys.contains("EnglishName") {
                self.englishName = dict["EnglishName"] as! String
            }
            if dict.keys.contains("Yaml") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") {
            self.templates = dict["Templates"] as! [DescribeCrTemplatesResponseBody.Templates]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("AllocationId") {
                self.allocationId = dict["AllocationId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("IpAddress") {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Status") {
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("EipList") {
            self.eipList = dict["EipList"] as! [DescribeEipResourcesResponseBody.EipList]
        }
        if dict.keys.contains("PageResult") {
            var model = DescribeEipResourcesResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GatewayName") {
                self.gatewayName = dict["GatewayName"] as! String
            }
            if dict.keys.contains("IssueTime") {
                self.issueTime = dict["IssueTime"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("SNI") {
                self.SNI = dict["SNI"] as! String
            }
            if dict.keys.contains("SecretName") {
                self.secretName = dict["SecretName"] as! String
            }
            if dict.keys.contains("State") {
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
        if dict.keys.contains("GatewaySecretDetails") {
            self.gatewaySecretDetails = dict["GatewaySecretDetails"] as! [DescribeGatewaySecretDetailsResponseBody.GatewaySecretDetails]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("K8sClusterId") {
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
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") {
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
        if dict.keys.contains("Dashboards") {
            self.dashboards = dict["Dashboards"] as! [DescribeGuestClusterAccessLogDashboardsResponseBody.Dashboards]
        }
        if dict.keys.contains("K8sClusterId") {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGuestClusterAccessLogDashboardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGuestClusterNamespacesRequest : Tea.TeaModel {
    public var guestClusterID: String?

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
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GuestClusterID") {
            self.guestClusterID = dict["GuestClusterID"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
    }
}

public class DescribeGuestClusterNamespacesResponseBody : Tea.TeaModel {
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
        if self.nsList != nil {
            map["NsList"] = self.nsList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NsList") {
            self.nsList = dict["NsList"] as! [String]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("GuestClusterID") {
            self.guestClusterID = dict["GuestClusterID"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("PodList") {
            self.podList = dict["PodList"] as! [String]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ASMGatewayName") {
            self.ASMGatewayName = dict["ASMGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServiceNamespace") {
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
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NodePort") {
                    self.nodePort = dict["NodePort"] as! Int32
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("TargetPort") {
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
            if dict.keys.contains("ClusterIds") {
                self.clusterIds = dict["ClusterIds"] as! [String]
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String: String]
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("Ports") {
                self.ports = dict["Ports"] as! [DescribeImportedServicesDetailResponseBody.Details.Ports]
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceType") {
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
        if dict.keys.contains("Details") {
            self.details = dict["Details"] as! [DescribeImportedServicesDetailResponseBody.Details]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeImportedServicesDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIngressGatewaysRequest : Tea.TeaModel {
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
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
    }
}

public class DescribeIngressGatewaysResponseBody : Tea.TeaModel {
    public var ingressGateways: [[String: Any]]?

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
        if self.ingressGateways != nil {
            map["IngressGateways"] = self.ingressGateways!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IngressGateways") {
            self.ingressGateways = dict["IngressGateways"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeIngressGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIngressGatewaysResponseBody?

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
            var model = DescribeIngressGatewaysResponseBody()
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
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
    }
}

public class DescribeIstioGatewayDomainsResponseBody : Tea.TeaModel {
    public class GatewaySecretDetails : Tea.TeaModel {
        public var credentialName: String?

        public var detail: String?

        public var domains: [String]?

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
            if dict.keys.contains("CredentialName") {
                self.credentialName = dict["CredentialName"] as! String
            }
            if dict.keys.contains("Detail") {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("Domains") {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("PortName") {
                self.portName = dict["PortName"] as! String
            }
            if dict.keys.contains("Protocol") {
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
        if dict.keys.contains("GatewaySecretDetails") {
            self.gatewaySecretDetails = dict["GatewaySecretDetails"] as! [DescribeIstioGatewayDomainsResponseBody.GatewaySecretDetails]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("RouteName") {
            self.routeName = dict["RouteName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Namespace") {
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
                            if dict.keys.contains("Value") {
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
                        if dict.keys.contains("HttpStatus") {
                            self.httpStatus = dict["HttpStatus"] as! Int32
                        }
                        if dict.keys.contains("Percentage") {
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
                            if dict.keys.contains("Value") {
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
                        if dict.keys.contains("ExponentialDelay") {
                            self.exponentialDelay = dict["ExponentialDelay"] as! String
                        }
                        if dict.keys.contains("FixedDelay") {
                            self.fixedDelay = dict["FixedDelay"] as! String
                        }
                        if dict.keys.contains("Percentage") {
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
                    if dict.keys.contains("Abort") {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(dict["Abort"] as! [String: Any])
                        self.abort = model
                    }
                    if dict.keys.contains("Delay") {
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
                    if dict.keys.contains("Authority") {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("RedirectCode") {
                        self.redirectCode = dict["RedirectCode"] as! Int32
                    }
                    if dict.keys.contains("Uri") {
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
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Subset") {
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
                    if dict.keys.contains("Value") {
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
                        if dict.keys.contains("Value") {
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
                    if dict.keys.contains("Attempts") {
                        self.attempts = dict["Attempts"] as! Int32
                    }
                    if dict.keys.contains("PerTryTimeout") {
                        self.perTryTimeout = dict["PerTryTimeout"] as! String
                    }
                    if dict.keys.contains("RetryOn") {
                        self.retryOn = dict["RetryOn"] as! String
                    }
                    if dict.keys.contains("RetryRemoteLocalities") {
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
                    if dict.keys.contains("Authority") {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("Uri") {
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
                if dict.keys.contains("Delegate") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Delegate()
                    model.fromMap(dict["Delegate"] as! [String: Any])
                    self.delegate = model
                }
                if dict.keys.contains("Fault") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault()
                    model.fromMap(dict["Fault"] as! [String: Any])
                    self.fault = model
                }
                if dict.keys.contains("HTTPRedirect") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(dict["HTTPRedirect"] as! [String: Any])
                    self.HTTPRedirect = model
                }
                if dict.keys.contains("Mirror") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Mirror()
                    model.fromMap(dict["Mirror"] as! [String: Any])
                    self.mirror = model
                }
                if dict.keys.contains("MirrorPercentage") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(dict["MirrorPercentage"] as! [String: Any])
                    self.mirrorPercentage = model
                }
                if dict.keys.contains("Retries") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Retries()
                    model.fromMap(dict["Retries"] as! [String: Any])
                    self.retries = model
                }
                if dict.keys.contains("Rewrite") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(dict["Rewrite"] as! [String: Any])
                    self.rewrite = model
                }
                if dict.keys.contains("Timeout") {
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
                    if dict.keys.contains("MatchingContent") {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") {
                        self.matchingMode = dict["MatchingMode"] as! String
                    }
                    if dict.keys.contains("Name") {
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
                    if dict.keys.contains("SNIHosts") {
                        self.SNIHosts = dict["SNIHosts"] as! [String]
                    }
                    if dict.keys.contains("TLSPort") {
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
                    if dict.keys.contains("MatchingContent") {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") {
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
                if dict.keys.contains("Headers") {
                    self.headers = dict["Headers"] as! [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.Headers]
                }
                if dict.keys.contains("Ports") {
                    self.ports = dict["Ports"] as! [Int32]
                }
                if dict.keys.contains("TLSMatchAttributes") {
                    self.TLSMatchAttributes = dict["TLSMatchAttributes"] as! [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.TLSMatchAttributes]
                }
                if dict.keys.contains("URI") {
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
                        if dict.keys.contains("Number") {
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
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Port") {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Destination.Port()
                        model.fromMap(dict["Port"] as! [String: Any])
                        self.port = model
                    }
                    if dict.keys.contains("Subset") {
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
                        if dict.keys.contains("Add") {
                            self.add = dict["Add"] as! [String: Any]
                        }
                        if dict.keys.contains("Remove") {
                            self.remove = dict["Remove"] as! [String]
                        }
                        if dict.keys.contains("Set") {
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
                        if dict.keys.contains("Add") {
                            self.add = dict["Add"] as! [String: Any]
                        }
                        if dict.keys.contains("Remove") {
                            self.remove = dict["Remove"] as! [String]
                        }
                        if dict.keys.contains("Set") {
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
                    if dict.keys.contains("Request") {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers.Request()
                        model.fromMap(dict["Request"] as! [String: Any])
                        self.request = model
                    }
                    if dict.keys.contains("Response") {
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
                if dict.keys.contains("Destination") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Destination()
                    model.fromMap(dict["Destination"] as! [String: Any])
                    self.destination = model
                }
                if dict.keys.contains("Headers") {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers()
                    model.fromMap(dict["Headers"] as! [String: Any])
                    self.headers = model
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var domains: [String]?

        public var HTTPAdvancedOptions: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions?

        public var matchRequest: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest?

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
            if self.matchRequest != nil {
                map["MatchRequest"] = self.matchRequest?.toMap()
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
            if dict.keys.contains("Domains") {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("HTTPAdvancedOptions") {
                var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions()
                model.fromMap(dict["HTTPAdvancedOptions"] as! [String: Any])
                self.HTTPAdvancedOptions = model
            }
            if dict.keys.contains("MatchRequest") {
                var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest()
                model.fromMap(dict["MatchRequest"] as! [String: Any])
                self.matchRequest = model
            }
            if dict.keys.contains("RouteDestinations") {
                self.routeDestinations = dict["RouteDestinations"] as! [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations]
            }
            if dict.keys.contains("RouteName") {
                self.routeName = dict["RouteName"] as! String
            }
            if dict.keys.contains("RouteType") {
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RouteDetail") {
            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail()
            model.fromMap(dict["RouteDetail"] as! [String: Any])
            self.routeDetail = model
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("ASMGatewayName") {
                self.ASMGatewayName = dict["ASMGatewayName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationHost") {
                self.destinationHost = dict["DestinationHost"] as! [String]
            }
            if dict.keys.contains("DestinationSubSet") {
                self.destinationSubSet = dict["DestinationSubSet"] as! [String]
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RouteName") {
                self.routeName = dict["RouteName"] as! String
            }
            if dict.keys.contains("RoutePath") {
                self.routePath = dict["RoutePath"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("ManagementRoutes") {
            self.managementRoutes = dict["ManagementRoutes"] as! [DescribeIstioGatewayRoutesResponseBody.ManagementRoutes]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeIstioGatewayRoutesResponseBody()
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
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
                if dict.keys.contains("InclusionPrefixes") {
                    self.inclusionPrefixes = dict["InclusionPrefixes"] as! [String]
                }
                if dict.keys.contains("InclusionRegexps") {
                    self.inclusionRegexps = dict["InclusionRegexps"] as! [String]
                }
                if dict.keys.contains("InclusionSuffixes") {
                    self.inclusionSuffixes = dict["InclusionSuffixes"] as! [String]
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
                if dict.keys.contains("ResourceCPULimit") {
                    self.resourceCPULimit = dict["ResourceCPULimit"] as! String
                }
                if dict.keys.contains("ResourceMemoryLimit") {
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
                if dict.keys.contains("ResourceCPURequest") {
                    self.resourceCPURequest = dict["ResourceCPURequest"] as! String
                }
                if dict.keys.contains("ResourceMemoryRequest") {
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
                if dict.keys.contains("ResourceCPULimit") {
                    self.resourceCPULimit = dict["ResourceCPULimit"] as! String
                }
                if dict.keys.contains("ResourceMemoryLimit") {
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
                if dict.keys.contains("ResourceCPURequest") {
                    self.resourceCPURequest = dict["ResourceCPURequest"] as! String
                }
                if dict.keys.contains("ResourceMemoryRequest") {
                    self.resourceMemoryRequest = dict["ResourceMemoryRequest"] as! String
                }
            }
        }
        public var concurrency: Int32?

        public var excludeInboundPorts: String?

        public var excludeOutboundIPRanges: String?

        public var excludeOutboundPorts: String?

        public var holdApplicationUntilProxyStarts: Bool?

        public var includeInboundPorts: String?

        public var includeOutboundIPRanges: String?

        public var includeOutboundPorts: String?

        public var istioDNSProxyEnabled: Bool?

        public var lifecycleStr: String?

        public var logLevel: String?

        public var proxyStatsMatcher: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.ProxyStatsMatcher?

        public var sidecarProxyInitResourceLimit: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceLimit?

        public var sidecarProxyInitResourceRequest: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceRequest?

        public var sidecarProxyResourceLimit: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceLimit?

        public var sidecarProxyResourceRequest: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceRequest?

        public var terminationDrainDuration: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.proxyStatsMatcher?.validate()
            try self.sidecarProxyInitResourceLimit?.validate()
            try self.sidecarProxyInitResourceRequest?.validate()
            try self.sidecarProxyResourceLimit?.validate()
            try self.sidecarProxyResourceRequest?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
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
            if self.istioDNSProxyEnabled != nil {
                map["IstioDNSProxyEnabled"] = self.istioDNSProxyEnabled!
            }
            if self.lifecycleStr != nil {
                map["LifecycleStr"] = self.lifecycleStr!
            }
            if self.logLevel != nil {
                map["LogLevel"] = self.logLevel!
            }
            if self.proxyStatsMatcher != nil {
                map["ProxyStatsMatcher"] = self.proxyStatsMatcher?.toMap()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Concurrency") {
                self.concurrency = dict["Concurrency"] as! Int32
            }
            if dict.keys.contains("ExcludeInboundPorts") {
                self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
            }
            if dict.keys.contains("ExcludeOutboundIPRanges") {
                self.excludeOutboundIPRanges = dict["ExcludeOutboundIPRanges"] as! String
            }
            if dict.keys.contains("ExcludeOutboundPorts") {
                self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
            }
            if dict.keys.contains("HoldApplicationUntilProxyStarts") {
                self.holdApplicationUntilProxyStarts = dict["HoldApplicationUntilProxyStarts"] as! Bool
            }
            if dict.keys.contains("IncludeInboundPorts") {
                self.includeInboundPorts = dict["IncludeInboundPorts"] as! String
            }
            if dict.keys.contains("IncludeOutboundIPRanges") {
                self.includeOutboundIPRanges = dict["IncludeOutboundIPRanges"] as! String
            }
            if dict.keys.contains("IncludeOutboundPorts") {
                self.includeOutboundPorts = dict["IncludeOutboundPorts"] as! String
            }
            if dict.keys.contains("IstioDNSProxyEnabled") {
                self.istioDNSProxyEnabled = dict["IstioDNSProxyEnabled"] as! Bool
            }
            if dict.keys.contains("LifecycleStr") {
                self.lifecycleStr = dict["LifecycleStr"] as! String
            }
            if dict.keys.contains("LogLevel") {
                self.logLevel = dict["LogLevel"] as! String
            }
            if dict.keys.contains("ProxyStatsMatcher") {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.ProxyStatsMatcher()
                model.fromMap(dict["ProxyStatsMatcher"] as! [String: Any])
                self.proxyStatsMatcher = model
            }
            if dict.keys.contains("SidecarProxyInitResourceLimit") {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceLimit()
                model.fromMap(dict["SidecarProxyInitResourceLimit"] as! [String: Any])
                self.sidecarProxyInitResourceLimit = model
            }
            if dict.keys.contains("SidecarProxyInitResourceRequest") {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceRequest()
                model.fromMap(dict["SidecarProxyInitResourceRequest"] as! [String: Any])
                self.sidecarProxyInitResourceRequest = model
            }
            if dict.keys.contains("SidecarProxyResourceLimit") {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceLimit()
                model.fromMap(dict["SidecarProxyResourceLimit"] as! [String: Any])
                self.sidecarProxyResourceLimit = model
            }
            if dict.keys.contains("SidecarProxyResourceRequest") {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceRequest()
                model.fromMap(dict["SidecarProxyResourceRequest"] as! [String: Any])
                self.sidecarProxyResourceRequest = model
            }
            if dict.keys.contains("TerminationDrainDuration") {
                self.terminationDrainDuration = dict["TerminationDrainDuration"] as! String
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
        if dict.keys.contains("ConfigPatches") {
            var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches()
            model.fromMap(dict["ConfigPatches"] as! [String: Any])
            self.configPatches = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("MultiBufferEnabled") {
                self.multiBufferEnabled = dict["MultiBufferEnabled"] as! Bool
            }
            if dict.keys.contains("NodeType") {
                self.nodeType = dict["NodeType"] as! String
            }
            if dict.keys.contains("Value") {
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
        if dict.keys.contains("InstanceTypes") {
            self.instanceTypes = dict["InstanceTypes"] as! [DescribeNodesInstanceTypeResponseBody.InstanceTypes]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("K8sClusterId") {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("NetworkType") {
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
            if dict.keys.contains("LoadBalancerId") {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("LoadBalancerName") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReusableSlbList") {
            self.reusableSlbList = dict["ReusableSlbList"] as! [DescribeReusableSlbResponseBody.ReusableSlbList]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("CheckMode") {
            self.checkMode = dict["CheckMode"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
                if dict.keys.contains("Locked") {
                    self.locked = dict["Locked"] as! Bool
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Reused") {
                    self.reused = dict["Reused"] as! Bool
                }
                if dict.keys.contains("SLBBackEndServerNumStatus") {
                    self.SLBBackEndServerNumStatus = dict["SLBBackEndServerNumStatus"] as! String
                }
                if dict.keys.contains("SLBExistStatus") {
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
                if dict.keys.contains("Locked") {
                    self.locked = dict["Locked"] as! Bool
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Reused") {
                    self.reused = dict["Reused"] as! Bool
                }
                if dict.keys.contains("SLBBackEndServerNumStatus") {
                    self.SLBBackEndServerNumStatus = dict["SLBBackEndServerNumStatus"] as! String
                }
                if dict.keys.contains("SLBExistStatus") {
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
                if dict.keys.contains("Locked") {
                    self.locked = dict["Locked"] as! Bool
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Reused") {
                    self.reused = dict["Reused"] as! Bool
                }
                if dict.keys.contains("SLBBackEndServerNumStatus") {
                    self.SLBBackEndServerNumStatus = dict["SLBBackEndServerNumStatus"] as! String
                }
                if dict.keys.contains("SLBExistStatus") {
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
            if self.sgStatus != nil {
                map["SgStatus"] = self.sgStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLogProjectStatus") {
                self.accessLogProjectStatus = dict["AccessLogProjectStatus"] as! String
            }
            if dict.keys.contains("ApiServerEIPStatus") {
                self.apiServerEIPStatus = dict["ApiServerEIPStatus"] as! String
            }
            if dict.keys.contains("ApiServerLoadBalancerStatus") {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.ApiServerLoadBalancerStatus()
                model.fromMap(dict["ApiServerLoadBalancerStatus"] as! [String: Any])
                self.apiServerLoadBalancerStatus = model
            }
            if dict.keys.contains("AuditProjectStatus") {
                self.auditProjectStatus = dict["AuditProjectStatus"] as! String
            }
            if dict.keys.contains("CanaryPilotLoadBalancerStatus") {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.CanaryPilotLoadBalancerStatus()
                model.fromMap(dict["CanaryPilotLoadBalancerStatus"] as! [String: Any])
                self.canaryPilotLoadBalancerStatus = model
            }
            if dict.keys.contains("ControlPlaneProjectStatus") {
                self.controlPlaneProjectStatus = dict["ControlPlaneProjectStatus"] as! String
            }
            if dict.keys.contains("LogtailStatusRecord") {
                self.logtailStatusRecord = dict["LogtailStatusRecord"] as! [String: Any]
            }
            if dict.keys.contains("PilotLoadBalancerStatus") {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.PilotLoadBalancerStatus()
                model.fromMap(dict["PilotLoadBalancerStatus"] as! [String: Any])
                self.pilotLoadBalancerStatus = model
            }
            if dict.keys.contains("SgStatus") {
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
        if dict.keys.contains("ClusterStatus") {
            var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus()
            model.fromMap(dict["ClusterStatus"] as! [String: Any])
            self.clusterStatus = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("ClusterDomain") {
                self.clusterDomain = dict["ClusterDomain"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterType") {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("ForbiddenFlag") {
                self.forbiddenFlag = dict["ForbiddenFlag"] as! Int64
            }
            if dict.keys.contains("ForbiddenInfo") {
                self.forbiddenInfo = dict["ForbiddenInfo"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ServiceMeshId") {
                self.serviceMeshId = dict["ServiceMeshId"] as! String
            }
            if dict.keys.contains("SgId") {
                self.sgId = dict["SgId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcId") {
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
        if dict.keys.contains("Clusters") {
            self.clusters = dict["Clusters"] as! [DescribeServiceMeshClustersResponseBody.Clusters]
        }
        if dict.keys.contains("NumberOfClusters") {
            self.numberOfClusters = dict["NumberOfClusters"] as! Int64
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
                if dict.keys.contains("IntranetApiServerEndpoint") {
                    self.intranetApiServerEndpoint = dict["IntranetApiServerEndpoint"] as! String
                }
                if dict.keys.contains("IntranetPilotEndpoint") {
                    self.intranetPilotEndpoint = dict["IntranetPilotEndpoint"] as! String
                }
                if dict.keys.contains("PublicApiServerEndpoint") {
                    self.publicApiServerEndpoint = dict["PublicApiServerEndpoint"] as! String
                }
                if dict.keys.contains("PublicPilotEndpoint") {
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
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ServiceMeshId") {
                    self.serviceMeshId = dict["ServiceMeshId"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Version") {
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
                    if dict.keys.contains("ApiServerLoadbalancerId") {
                        self.apiServerLoadbalancerId = dict["ApiServerLoadbalancerId"] as! String
                    }
                    if dict.keys.contains("ApiServerPublicEip") {
                        self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
                    }
                    if dict.keys.contains("PilotPublicEip") {
                        self.pilotPublicEip = dict["PilotPublicEip"] as! Bool
                    }
                    if dict.keys.contains("PilotPublicLoadbalancerId") {
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
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Project") {
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
                        if dict.keys.contains("AuditProjectStatus") {
                            self.auditProjectStatus = dict["AuditProjectStatus"] as! String
                        }
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Project") {
                            self.project = dict["Project"] as! String
                        }
                    }
                }
                public class ControlPlaneLogInfo : Tea.TeaModel {
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
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Project") {
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
                        if dict.keys.contains("IstiodImageTag") {
                            self.istiodImageTag = dict["IstiodImageTag"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("ProxyImageTag") {
                            self.proxyImageTag = dict["ProxyImageTag"] as! String
                        }
                    }
                }
                public class ExtraConfiguration : Tea.TeaModel {
                    public class AccessLogExtraConf : Tea.TeaModel {
                        public var gatewayLifecycle: Int32?

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
                            if self.gatewayLifecycle != nil {
                                map["GatewayLifecycle"] = self.gatewayLifecycle!
                            }
                            if self.sidecarLifecycle != nil {
                                map["SidecarLifecycle"] = self.sidecarLifecycle!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("GatewayLifecycle") {
                                self.gatewayLifecycle = dict["GatewayLifecycle"] as! Int32
                            }
                            if dict.keys.contains("SidecarLifecycle") {
                                self.sidecarLifecycle = dict["SidecarLifecycle"] as! Int32
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
                            if dict.keys.contains("AutoDiagnosisEnabled") {
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
                            if dict.keys.contains("Enabled") {
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
                            if dict.keys.contains("EnableHistory") {
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
                                    if dict.keys.contains("command") {
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
                                        if dict.keys.contains("name") {
                                            self.name = dict["name"] as! String
                                        }
                                        if dict.keys.contains("value") {
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
                                    if dict.keys.contains("host") {
                                        self.host = dict["host"] as! String
                                    }
                                    if dict.keys.contains("httpHeaders") {
                                        self.httpHeaders = dict["httpHeaders"] as! [DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet.HttpHeaders]
                                    }
                                    if dict.keys.contains("port") {
                                        self.port = dict["port"] as! String
                                    }
                                    if dict.keys.contains("scheme") {
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
                                    if dict.keys.contains("host") {
                                        self.host = dict["host"] as! String
                                    }
                                    if dict.keys.contains("port") {
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
                                if dict.keys.contains("exec") {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.Exec()
                                    model.fromMap(dict["exec"] as! [String: Any])
                                    self.exec = model
                                }
                                if dict.keys.contains("httpGet") {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet()
                                    model.fromMap(dict["httpGet"] as! [String: Any])
                                    self.httpGet = model
                                }
                                if dict.keys.contains("tcpSocket") {
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
                                    if dict.keys.contains("command") {
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
                                        if dict.keys.contains("name") {
                                            self.name = dict["name"] as! String
                                        }
                                        if dict.keys.contains("value") {
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
                                    if dict.keys.contains("host") {
                                        self.host = dict["host"] as! String
                                    }
                                    if dict.keys.contains("httpHeaders") {
                                        self.httpHeaders = dict["httpHeaders"] as! [DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet.HttpHeaders]
                                    }
                                    if dict.keys.contains("port") {
                                        self.port = dict["port"] as! String
                                    }
                                    if dict.keys.contains("scheme") {
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
                                    if dict.keys.contains("host") {
                                        self.host = dict["host"] as! String
                                    }
                                    if dict.keys.contains("port") {
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
                                if dict.keys.contains("exec") {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.Exec()
                                    model.fromMap(dict["exec"] as! [String: Any])
                                    self.exec = model
                                }
                                if dict.keys.contains("httpGet") {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet()
                                    model.fromMap(dict["httpGet"] as! [String: Any])
                                    self.httpGet = model
                                }
                                if dict.keys.contains("tcpSocket") {
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
                            if dict.keys.contains("postStart") {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart()
                                model.fromMap(dict["postStart"] as! [String: Any])
                                self.postStart = model
                            }
                            if dict.keys.contains("preStop") {
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
                            if dict.keys.contains("Enabled") {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("PollDelay") {
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
                            if dict.keys.contains("Enabled") {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("NFDLabelPruned") {
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
                            if dict.keys.contains("OPAScopeInjected") {
                                self.OPAScopeInjected = dict["OPAScopeInjected"] as! Bool
                            }
                        }
                    }
                    public class RateLimit : Tea.TeaModel {
                        public var enableGlobalRateLimit: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enableGlobalRateLimit != nil {
                                map["EnableGlobalRateLimit"] = self.enableGlobalRateLimit!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("EnableGlobalRateLimit") {
                                self.enableGlobalRateLimit = dict["EnableGlobalRateLimit"] as! Bool
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
                            if dict.keys.contains("ResourceCPULimit") {
                                self.resourceCPULimit = dict["ResourceCPULimit"] as! String
                            }
                            if dict.keys.contains("ResourceMemoryLimit") {
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
                            if dict.keys.contains("ResourceCPURequest") {
                                self.resourceCPURequest = dict["ResourceCPURequest"] as! String
                            }
                            if dict.keys.contains("ResourceMemoryRequest") {
                                self.resourceMemoryRequest = dict["ResourceMemoryRequest"] as! String
                            }
                        }
                    }
                    public var accessLogExtraConf: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AccessLogExtraConf?

                    public var autoDiagnosis: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AutoDiagnosis?

                    public var CRAggregationConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.CRAggregationConfiguration?

                    public var CRAggregationEnabled: Bool?

                    public var discoverySelectors: [[String: Any]]?

                    public var istioCRHistory: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.IstioCRHistory?

                    public var lifecycle: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle?

                    public var multiBuffer: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.MultiBuffer?

                    public var NFDConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.NFDConfiguration?

                    public var OPAScopeInjection: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.OPAScopeInjection?

                    public var rateLimit: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.RateLimit?

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
                        try self.autoDiagnosis?.validate()
                        try self.CRAggregationConfiguration?.validate()
                        try self.istioCRHistory?.validate()
                        try self.lifecycle?.validate()
                        try self.multiBuffer?.validate()
                        try self.NFDConfiguration?.validate()
                        try self.OPAScopeInjection?.validate()
                        try self.rateLimit?.validate()
                        try self.sidecarProxyInitResourceLimit?.validate()
                        try self.sidecarProxyInitResourceRequest?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessLogExtraConf != nil {
                            map["AccessLogExtraConf"] = self.accessLogExtraConf?.toMap()
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
                        if self.rateLimit != nil {
                            map["RateLimit"] = self.rateLimit?.toMap()
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
                        if dict.keys.contains("AccessLogExtraConf") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AccessLogExtraConf()
                            model.fromMap(dict["AccessLogExtraConf"] as! [String: Any])
                            self.accessLogExtraConf = model
                        }
                        if dict.keys.contains("AutoDiagnosis") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AutoDiagnosis()
                            model.fromMap(dict["AutoDiagnosis"] as! [String: Any])
                            self.autoDiagnosis = model
                        }
                        if dict.keys.contains("CRAggregationConfiguration") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.CRAggregationConfiguration()
                            model.fromMap(dict["CRAggregationConfiguration"] as! [String: Any])
                            self.CRAggregationConfiguration = model
                        }
                        if dict.keys.contains("CRAggregationEnabled") {
                            self.CRAggregationEnabled = dict["CRAggregationEnabled"] as! Bool
                        }
                        if dict.keys.contains("DiscoverySelectors") {
                            self.discoverySelectors = dict["DiscoverySelectors"] as! [[String: Any]]
                        }
                        if dict.keys.contains("IstioCRHistory") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.IstioCRHistory()
                            model.fromMap(dict["IstioCRHistory"] as! [String: Any])
                            self.istioCRHistory = model
                        }
                        if dict.keys.contains("Lifecycle") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle()
                            model.fromMap(dict["Lifecycle"] as! [String: Any])
                            self.lifecycle = model
                        }
                        if dict.keys.contains("MultiBuffer") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.MultiBuffer()
                            model.fromMap(dict["MultiBuffer"] as! [String: Any])
                            self.multiBuffer = model
                        }
                        if dict.keys.contains("NFDConfiguration") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.NFDConfiguration()
                            model.fromMap(dict["NFDConfiguration"] as! [String: Any])
                            self.NFDConfiguration = model
                        }
                        if dict.keys.contains("OPAScopeInjection") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.OPAScopeInjection()
                            model.fromMap(dict["OPAScopeInjection"] as! [String: Any])
                            self.OPAScopeInjection = model
                        }
                        if dict.keys.contains("RateLimit") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.RateLimit()
                            model.fromMap(dict["RateLimit"] as! [String: Any])
                            self.rateLimit = model
                        }
                        if dict.keys.contains("SidecarProxyInitResourceLimit") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.SidecarProxyInitResourceLimit()
                            model.fromMap(dict["SidecarProxyInitResourceLimit"] as! [String: Any])
                            self.sidecarProxyInitResourceLimit = model
                        }
                        if dict.keys.contains("SidecarProxyInitResourceRequest") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.SidecarProxyInitResourceRequest()
                            model.fromMap(dict["SidecarProxyInitResourceRequest"] as! [String: Any])
                            self.sidecarProxyInitResourceRequest = model
                        }
                        if dict.keys.contains("TerminationDrainDuration") {
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
                        if dict.keys.contains("GatewayAPIEnabled") {
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
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Url") {
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
                        if dict.keys.contains("Distribute") {
                            self.distribute = dict["Distribute"] as! [String: Any]
                        }
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Failover") {
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
                        if dict.keys.contains("Enabled") {
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
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("LimitCPU") {
                            self.limitCPU = dict["LimitCPU"] as! String
                        }
                        if dict.keys.contains("LimitMemory") {
                            self.limitMemory = dict["LimitMemory"] as! String
                        }
                        if dict.keys.contains("LogLevel") {
                            self.logLevel = dict["LogLevel"] as! String
                        }
                        if dict.keys.contains("RequestCPU") {
                            self.requestCPU = dict["RequestCPU"] as! String
                        }
                        if dict.keys.contains("RequestMemory") {
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
                            if dict.keys.contains("Enabled") {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("NacosID") {
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
                            if dict.keys.contains("EnableSDSServer") {
                                self.enableSDSServer = dict["EnableSDSServer"] as! Bool
                            }
                            if dict.keys.contains("FilterGatewayClusterConfig") {
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
                        if dict.keys.contains("ConfigSource") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot.ConfigSource()
                            model.fromMap(dict["ConfigSource"] as! [String: Any])
                            self.configSource = model
                        }
                        if dict.keys.contains("Feature") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot.Feature()
                            model.fromMap(dict["Feature"] as! [String: Any])
                            self.feature = model
                        }
                        if dict.keys.contains("Http10Enabled") {
                            self.http10Enabled = dict["Http10Enabled"] as! Bool
                        }
                        if dict.keys.contains("TraceSampling") {
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
                        if dict.keys.contains("ExternalUrl") {
                            self.externalUrl = dict["ExternalUrl"] as! String
                        }
                        if dict.keys.contains("UseExternal") {
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
                        if dict.keys.contains("DubboFilterEnabled") {
                            self.dubboFilterEnabled = dict["DubboFilterEnabled"] as! Bool
                        }
                        if dict.keys.contains("MysqlFilterEnabled") {
                            self.mysqlFilterEnabled = dict["MysqlFilterEnabled"] as! Bool
                        }
                        if dict.keys.contains("RedisFilterEnabled") {
                            self.redisFilterEnabled = dict["RedisFilterEnabled"] as! Bool
                        }
                        if dict.keys.contains("ThriftFilterEnabled") {
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
                        if dict.keys.contains("AccessLogFile") {
                            self.accessLogFile = dict["AccessLogFile"] as! String
                        }
                        if dict.keys.contains("AccessLogFormat") {
                            self.accessLogFormat = dict["AccessLogFormat"] as! String
                        }
                        if dict.keys.contains("AccessLogServiceEnabled") {
                            self.accessLogServiceEnabled = dict["AccessLogServiceEnabled"] as! Bool
                        }
                        if dict.keys.contains("AccessLogServiceHost") {
                            self.accessLogServiceHost = dict["AccessLogServiceHost"] as! String
                        }
                        if dict.keys.contains("AccessLogServicePort") {
                            self.accessLogServicePort = dict["AccessLogServicePort"] as! Int32
                        }
                        if dict.keys.contains("ClusterDomain") {
                            self.clusterDomain = dict["ClusterDomain"] as! String
                        }
                        if dict.keys.contains("EnableDNSProxying") {
                            self.enableDNSProxying = dict["EnableDNSProxying"] as! Bool
                        }
                        if dict.keys.contains("LimitCPU") {
                            self.limitCPU = dict["LimitCPU"] as! String
                        }
                        if dict.keys.contains("LimitMemory") {
                            self.limitMemory = dict["LimitMemory"] as! String
                        }
                        if dict.keys.contains("RequestCPU") {
                            self.requestCPU = dict["RequestCPU"] as! String
                        }
                        if dict.keys.contains("RequestMemory") {
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
                            if dict.keys.contains("Enabled") {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("ExcludeNamespaces") {
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
                        if dict.keys.contains("AutoInjectionPolicyEnabled") {
                            self.autoInjectionPolicyEnabled = dict["AutoInjectionPolicyEnabled"] as! Bool
                        }
                        if dict.keys.contains("EnableNamespacesByDefault") {
                            self.enableNamespacesByDefault = dict["EnableNamespacesByDefault"] as! Bool
                        }
                        if dict.keys.contains("InitCNIConfiguration") {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.SidecarInjector.InitCNIConfiguration()
                            model.fromMap(dict["InitCNIConfiguration"] as! [String: Any])
                            self.initCNIConfiguration = model
                        }
                        if dict.keys.contains("LimitCPU") {
                            self.limitCPU = dict["LimitCPU"] as! String
                        }
                        if dict.keys.contains("LimitMemory") {
                            self.limitMemory = dict["LimitMemory"] as! String
                        }
                        if dict.keys.contains("RequestCPU") {
                            self.requestCPU = dict["RequestCPU"] as! String
                        }
                        if dict.keys.contains("RequestMemory") {
                            self.requestMemory = dict["RequestMemory"] as! String
                        }
                        if dict.keys.contains("SidecarInjectorNum") {
                            self.sidecarInjectorNum = dict["SidecarInjectorNum"] as! Int32
                        }
                        if dict.keys.contains("SidecarInjectorWebhookAsYaml") {
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
                        if dict.keys.contains("Enabled") {
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
                    if dict.keys.contains("AccessLog") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.AccessLog()
                        model.fromMap(dict["AccessLog"] as! [String: Any])
                        self.accessLog = model
                    }
                    if dict.keys.contains("Audit") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Audit()
                        model.fromMap(dict["Audit"] as! [String: Any])
                        self.audit = model
                    }
                    if dict.keys.contains("ControlPlaneLogInfo") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ControlPlaneLogInfo()
                        model.fromMap(dict["ControlPlaneLogInfo"] as! [String: Any])
                        self.controlPlaneLogInfo = model
                    }
                    if dict.keys.contains("CustomizedZipkin") {
                        self.customizedZipkin = dict["CustomizedZipkin"] as! Bool
                    }
                    if dict.keys.contains("Edition") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Edition()
                        model.fromMap(dict["Edition"] as! [String: Any])
                        self.edition = model
                    }
                    if dict.keys.contains("EnableLocalityLB") {
                        self.enableLocalityLB = dict["EnableLocalityLB"] as! Bool
                    }
                    if dict.keys.contains("ExcludeIPRanges") {
                        self.excludeIPRanges = dict["ExcludeIPRanges"] as! String
                    }
                    if dict.keys.contains("ExcludeInboundPorts") {
                        self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
                    }
                    if dict.keys.contains("ExcludeOutboundPorts") {
                        self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
                    }
                    if dict.keys.contains("ExtraConfiguration") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration()
                        model.fromMap(dict["ExtraConfiguration"] as! [String: Any])
                        self.extraConfiguration = model
                    }
                    if dict.keys.contains("IncludeIPRanges") {
                        self.includeIPRanges = dict["IncludeIPRanges"] as! String
                    }
                    if dict.keys.contains("K8sNewAPIsSupport") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.K8sNewAPIsSupport()
                        model.fromMap(dict["K8sNewAPIsSupport"] as! [String: Any])
                        self.k8sNewAPIsSupport = model
                    }
                    if dict.keys.contains("Kiali") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Kiali()
                        model.fromMap(dict["Kiali"] as! [String: Any])
                        self.kiali = model
                    }
                    if dict.keys.contains("LocalityLB") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.LocalityLB()
                        model.fromMap(dict["LocalityLB"] as! [String: Any])
                        self.localityLB = model
                    }
                    if dict.keys.contains("MSE") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.MSE()
                        model.fromMap(dict["MSE"] as! [String: Any])
                        self.MSE = model
                    }
                    if dict.keys.contains("OPA") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.OPA()
                        model.fromMap(dict["OPA"] as! [String: Any])
                        self.OPA = model
                    }
                    if dict.keys.contains("OutboundTrafficPolicy") {
                        self.outboundTrafficPolicy = dict["OutboundTrafficPolicy"] as! String
                    }
                    if dict.keys.contains("Pilot") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot()
                        model.fromMap(dict["Pilot"] as! [String: Any])
                        self.pilot = model
                    }
                    if dict.keys.contains("Prometheus") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Prometheus()
                        model.fromMap(dict["Prometheus"] as! [String: Any])
                        self.prometheus = model
                    }
                    if dict.keys.contains("ProtocolSupport") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ProtocolSupport()
                        model.fromMap(dict["ProtocolSupport"] as! [String: Any])
                        self.protocolSupport = model
                    }
                    if dict.keys.contains("Proxy") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Proxy()
                        model.fromMap(dict["Proxy"] as! [String: Any])
                        self.proxy = model
                    }
                    if dict.keys.contains("SidecarInjector") {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.SidecarInjector()
                        model.fromMap(dict["SidecarInjector"] as! [String: Any])
                        self.sidecarInjector = model
                    }
                    if dict.keys.contains("Telemetry") {
                        self.telemetry = dict["Telemetry"] as! Bool
                    }
                    if dict.keys.contains("Tracing") {
                        self.tracing = dict["Tracing"] as! Bool
                    }
                    if dict.keys.contains("WebAssemblyFilterDeployment") {
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
                    if dict.keys.contains("SecurityGroupId") {
                        self.securityGroupId = dict["SecurityGroupId"] as! String
                    }
                    if dict.keys.contains("VSwitches") {
                        self.vSwitches = dict["VSwitches"] as! [String]
                    }
                    if dict.keys.contains("VpcId") {
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
                if dict.keys.contains("LoadBalancer") {
                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.LoadBalancer()
                    model.fromMap(dict["LoadBalancer"] as! [String: Any])
                    self.loadBalancer = model
                }
                if dict.keys.contains("MeshConfig") {
                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig()
                    model.fromMap(dict["MeshConfig"] as! [String: Any])
                    self.meshConfig = model
                }
                if dict.keys.contains("Network") {
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
            if dict.keys.contains("ClusterSpec") {
                self.clusterSpec = dict["ClusterSpec"] as! String
            }
            if dict.keys.contains("Clusters") {
                self.clusters = dict["Clusters"] as! [String]
            }
            if dict.keys.contains("Endpoints") {
                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerType") {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("ServiceMeshInfo") {
                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.ServiceMeshInfo()
                model.fromMap(dict["ServiceMeshInfo"] as! [String: Any])
                self.serviceMeshInfo = model
            }
            if dict.keys.contains("Spec") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceMesh") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
    }
}

public class DescribeServiceMeshKubeconfigResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Kubeconfig") {
            self.kubeconfig = dict["Kubeconfig"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Log") {
                self.log = dict["Log"] as! String
            }
            if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Logs") {
            self.logs = dict["Logs"] as! [DescribeServiceMeshLogsResponseBody.Logs]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("ClusterSynced") {
                self.clusterSynced = dict["ClusterSynced"] as! String
            }
            if dict.keys.contains("EndpointPercent") {
                self.endpointPercent = dict["EndpointPercent"] as! String
            }
            if dict.keys.contains("EndpointSynced") {
                self.endpointSynced = dict["EndpointSynced"] as! String
            }
            if dict.keys.contains("IstioVersion") {
                self.istioVersion = dict["IstioVersion"] as! String
            }
            if dict.keys.contains("ListenerSynced") {
                self.listenerSynced = dict["ListenerSynced"] as! String
            }
            if dict.keys.contains("ProxyId") {
                self.proxyId = dict["ProxyId"] as! String
            }
            if dict.keys.contains("ProxyVersion") {
                self.proxyVersion = dict["ProxyVersion"] as! String
            }
            if dict.keys.contains("RouteSynced") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProxyStatus") {
            self.proxyStatus = dict["ProxyStatus"] as! [DescribeServiceMeshProxyStatusResponseBody.ProxyStatus]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AllIstioGatewayFullNames") {
            self.allIstioGatewayFullNames = dict["AllIstioGatewayFullNames"] as! String
        }
        if dict.keys.contains("GuestClusterIds") {
            self.guestClusterIds = dict["GuestClusterIds"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("FinishedGatewaysNum") {
                self.finishedGatewaysNum = dict["FinishedGatewaysNum"] as! Int64
            }
            if dict.keys.contains("GatewayStatusRecord") {
                var tmp : [String: UpgradeDetailGatewayStatusRecordValue] = [:]
                for (k, v) in dict["GatewayStatusRecord"] as! [String: UpgradeDetailGatewayStatusRecordValue] {
                    var model = UpgradeDetailGatewayStatusRecordValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
                self.gatewayStatusRecord = tmp
            }
            if dict.keys.contains("MeshStatus") {
                self.meshStatus = dict["MeshStatus"] as! String
            }
            if dict.keys.contains("TotalGatewaysNum") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpgradeDetail") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("HasTag") {
                self.hasTag = dict["HasTag"] as! Bool
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("IpAddress") {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SecurityGroupIds") {
                self.securityGroupIds = dict["SecurityGroupIds"] as! String
            }
            if dict.keys.contains("ServiceMeshId") {
                self.serviceMeshId = dict["ServiceMeshId"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VMs") {
            self.VMs = dict["VMs"] as! [DescribeServiceMeshVMsResponseBody.VMs]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceMeshVMsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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
                if dict.keys.contains("IntranetApiServerEndpoint") {
                    self.intranetApiServerEndpoint = dict["IntranetApiServerEndpoint"] as! String
                }
                if dict.keys.contains("IntranetPilotEndpoint") {
                    self.intranetPilotEndpoint = dict["IntranetPilotEndpoint"] as! String
                }
                if dict.keys.contains("PublicApiServerEndpoint") {
                    self.publicApiServerEndpoint = dict["PublicApiServerEndpoint"] as! String
                }
                if dict.keys.contains("PublicPilotEndpoint") {
                    self.publicPilotEndpoint = dict["PublicPilotEndpoint"] as! String
                }
                if dict.keys.contains("ReverseTunnelEndpoint") {
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
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ServiceMeshId") {
                    self.serviceMeshId = dict["ServiceMeshId"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Version") {
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
                    if dict.keys.contains("ApiServerLoadbalancerId") {
                        self.apiServerLoadbalancerId = dict["ApiServerLoadbalancerId"] as! String
                    }
                    if dict.keys.contains("ApiServerPublicEip") {
                        self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
                    }
                    if dict.keys.contains("PilotPublicEip") {
                        self.pilotPublicEip = dict["PilotPublicEip"] as! Bool
                    }
                    if dict.keys.contains("PilotPublicLoadbalancerId") {
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
                        if dict.keys.contains("Http10Enabled") {
                            self.http10Enabled = dict["Http10Enabled"] as! Bool
                        }
                        if dict.keys.contains("TraceSampling") {
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
                            if dict.keys.contains("Enabled") {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("ExcludeNamespaces") {
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
                        if dict.keys.contains("AutoInjectionPolicyEnabled") {
                            self.autoInjectionPolicyEnabled = dict["AutoInjectionPolicyEnabled"] as! Bool
                        }
                        if dict.keys.contains("EnableNamespacesByDefault") {
                            self.enableNamespacesByDefault = dict["EnableNamespacesByDefault"] as! Bool
                        }
                        if dict.keys.contains("InitCNIConfiguration") {
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
                    if dict.keys.contains("Mtls") {
                        self.mtls = dict["Mtls"] as! Bool
                    }
                    if dict.keys.contains("OutboundTrafficPolicy") {
                        self.outboundTrafficPolicy = dict["OutboundTrafficPolicy"] as! String
                    }
                    if dict.keys.contains("Pilot") {
                        var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.Pilot()
                        model.fromMap(dict["Pilot"] as! [String: Any])
                        self.pilot = model
                    }
                    if dict.keys.contains("SidecarInjector") {
                        var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.SidecarInjector()
                        model.fromMap(dict["SidecarInjector"] as! [String: Any])
                        self.sidecarInjector = model
                    }
                    if dict.keys.contains("StrictMtls") {
                        self.strictMtls = dict["StrictMtls"] as! Bool
                    }
                    if dict.keys.contains("Telemetry") {
                        self.telemetry = dict["Telemetry"] as! Bool
                    }
                    if dict.keys.contains("Tracing") {
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
                    if dict.keys.contains("SecurityGroupId") {
                        self.securityGroupId = dict["SecurityGroupId"] as! String
                    }
                    if dict.keys.contains("VSwitches") {
                        self.vSwitches = dict["VSwitches"] as! [String]
                    }
                    if dict.keys.contains("VpcId") {
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
                if dict.keys.contains("LoadBalancer") {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.LoadBalancer()
                    model.fromMap(dict["LoadBalancer"] as! [String: Any])
                    self.loadBalancer = model
                }
                if dict.keys.contains("MeshConfig") {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig()
                    model.fromMap(dict["MeshConfig"] as! [String: Any])
                    self.meshConfig = model
                }
                if dict.keys.contains("Network") {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.Network()
                    model.fromMap(dict["Network"] as! [String: Any])
                    self.network = model
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
            if dict.keys.contains("ClusterSpec") {
                self.clusterSpec = dict["ClusterSpec"] as! String
            }
            if dict.keys.contains("Clusters") {
                self.clusters = dict["Clusters"] as! [String]
            }
            if dict.keys.contains("Endpoints") {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerType") {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("ServiceMeshInfo") {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.ServiceMeshInfo()
                model.fromMap(dict["ServiceMeshInfo"] as! [String: Any])
                self.serviceMeshInfo = model
            }
            if dict.keys.contains("Spec") {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec()
                model.fromMap(dict["Spec"] as! [String: Any])
                self.spec = model
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceMeshes") {
            self.serviceMeshes = dict["ServiceMeshes"] as! [DescribeServiceMeshesResponseBody.ServiceMeshes]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("IstioOperatorVersion") {
                self.istioOperatorVersion = dict["IstioOperatorVersion"] as! String
            }
            if dict.keys.contains("IstioVersion") {
                self.istioVersion = dict["IstioVersion"] as! String
            }
            if dict.keys.contains("KubernetesVersion") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Version") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("SubAccountUserId") {
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
            if dict.keys.contains("IsRamRole") {
                self.isRamRole = dict["IsRamRole"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("RoleType") {
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
        if dict.keys.contains("Permissions") {
            self.permissions = dict["Permissions"] as! [DescribeUserPermissionsResponseBody.Permissions]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("UserType") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UIDs") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
            if dict.keys.contains("HasTag") {
                self.hasTag = dict["HasTag"] as! Bool
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("IpAddress") {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SecurityGroupIds") {
                self.securityGroupIds = dict["SecurityGroupIds"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VMs") {
            self.VMs = dict["VMs"] as! [DescribeVMsInServiceMeshResponseBody.VMs]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpcId") {
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VSwitchName") {
                self.vSwitchName = dict["VSwitchName"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VSwitches") {
            self.vSwitches = dict["VSwitches"] as! [DescribeVSwitchesResponseBody.VSwitches]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("Edition") {
                self.edition = dict["Edition"] as! String
            }
            if dict.keys.contains("Versions") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VersionInfo") {
            self.versionInfo = dict["VersionInfo"] as! [DescribeVersionsResponseBody.VersionInfo]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("RegionId") {
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
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") {
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Vpcs") {
            self.vpcs = dict["Vpcs"] as! [DescribeVpcsResponseBody.Vpcs]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("CaCert") {
            self.caCert = dict["CaCert"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCaCertResponseBody()
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
        if dict.keys.contains("ClusterIds") {
            self.clusterIds = dict["ClusterIds"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServiceType") {
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
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("Hostname") {
                    self.hostname = dict["Hostname"] as! String
                }
                if dict.keys.contains("PodName") {
                    self.podName = dict["PodName"] as! String
                }
                if dict.keys.contains("Ports") {
                    self.ports = dict["Ports"] as! [Int32]
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("SidecarInjected") {
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
            if dict.keys.contains("EndpointsDetails") {
                self.endpointsDetails = dict["EndpointsDetails"] as! [GetRegisteredServiceEndpointsResponseBody.EndPointSlice.EndpointsDetails]
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("ServiceName") {
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
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("ClusterId") {
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
        if dict.keys.contains("EndPointSlice") {
            var model = GetRegisteredServiceEndpointsResponseBody.EndPointSlice()
            model.fromMap(dict["EndPointSlice"] as! [String: Any])
            self.endPointSlice = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceEndpoints") {
            self.serviceEndpoints = dict["ServiceEndpoints"] as! [GetRegisteredServiceEndpointsResponseBody.ServiceEndpoints]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Namespaces") {
            self.namespaces = dict["Namespaces"] as! [String]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetRegisteredServiceNamespacesResponseBody()
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
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ServiceAccount") {
            self.serviceAccount = dict["ServiceAccount"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("TrustDomain") {
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
            if dict.keys.contains("EnvoyEnvContent") {
                self.envoyEnvContent = dict["EnvoyEnvContent"] as! String
            }
            if dict.keys.contains("HostsContent") {
                self.hostsContent = dict["HostsContent"] as! String
            }
            if dict.keys.contains("TokenContent") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VmMetaInfo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetVmMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantUserPermissionsRequest : Tea.TeaModel {
    public var permissions: String?

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
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.subAccountUserId != nil {
            map["SubAccountUserId"] = self.subAccountUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permissions") {
            self.permissions = dict["Permissions"] as! String
        }
        if dict.keys.contains("SubAccountUserId") {
            self.subAccountUserId = dict["SubAccountUserId"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GrantUserPermissionsResponseBody()
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
        if dict.keys.contains("ApiServerEipId") {
            self.apiServerEipId = dict["ApiServerEipId"] as! String
        }
        if dict.keys.contains("Operation") {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("EnableAudit") {
            self.enableAudit = dict["EnableAudit"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReActivateAuditResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveClusterFromServiceMeshRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("EcsId") {
            self.ecsId = dict["EcsId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("Kubeconfig") {
            self.kubeconfig = dict["Kubeconfig"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RevokeKubeconfigResponseBody()
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
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ASMGatewayName") {
            self.ASMGatewayName = dict["ASMGatewayName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("ServiceNames") {
            self.serviceNames = dict["ServiceNames"] as! String
        }
        if dict.keys.contains("ServiceNamespace") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("K8sClusterId") {
            self.k8sClusterId = dict["K8sClusterId"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateASMNamespaceFromGuestClusterResponseBody()
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
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Namespace") {
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
                            if dict.keys.contains("Value") {
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
                        if dict.keys.contains("HttpStatus") {
                            self.httpStatus = dict["HttpStatus"] as! Int32
                        }
                        if dict.keys.contains("Percentage") {
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
                            if dict.keys.contains("Value") {
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
                        if dict.keys.contains("FixedDelay") {
                            self.fixedDelay = dict["FixedDelay"] as! String
                        }
                        if dict.keys.contains("Percentage") {
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
                    if dict.keys.contains("Abort") {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(dict["Abort"] as! [String: Any])
                        self.abort = model
                    }
                    if dict.keys.contains("Delay") {
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
                    if dict.keys.contains("Authority") {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("RedirectCode") {
                        self.redirectCode = dict["RedirectCode"] as! Int32
                    }
                    if dict.keys.contains("Uri") {
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
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Subset") {
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
                    if dict.keys.contains("Value") {
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
                        if dict.keys.contains("Value") {
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
                    if dict.keys.contains("Attempts") {
                        self.attempts = dict["Attempts"] as! Int32
                    }
                    if dict.keys.contains("PerTryTimeout") {
                        self.perTryTimeout = dict["PerTryTimeout"] as! String
                    }
                    if dict.keys.contains("RetryOn") {
                        self.retryOn = dict["RetryOn"] as! String
                    }
                    if dict.keys.contains("RetryRemoteLocalities") {
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
                    if dict.keys.contains("Authority") {
                        self.authority = dict["Authority"] as! String
                    }
                    if dict.keys.contains("Uri") {
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
                if dict.keys.contains("Delegate") {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Delegate()
                    model.fromMap(dict["Delegate"] as! [String: Any])
                    self.delegate = model
                }
                if dict.keys.contains("Fault") {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault()
                    model.fromMap(dict["Fault"] as! [String: Any])
                    self.fault = model
                }
                if dict.keys.contains("HTTPRedirect") {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(dict["HTTPRedirect"] as! [String: Any])
                    self.HTTPRedirect = model
                }
                if dict.keys.contains("Mirror") {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Mirror()
                    model.fromMap(dict["Mirror"] as! [String: Any])
                    self.mirror = model
                }
                if dict.keys.contains("MirrorPercentage") {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(dict["MirrorPercentage"] as! [String: Any])
                    self.mirrorPercentage = model
                }
                if dict.keys.contains("Retries") {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries()
                    model.fromMap(dict["Retries"] as! [String: Any])
                    self.retries = model
                }
                if dict.keys.contains("Rewrite") {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(dict["Rewrite"] as! [String: Any])
                    self.rewrite = model
                }
                if dict.keys.contains("Timeout") {
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
                    if dict.keys.contains("MatchingContent") {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") {
                        self.matchingMode = dict["MatchingMode"] as! String
                    }
                    if dict.keys.contains("Name") {
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
                    if dict.keys.contains("SNIHosts") {
                        self.SNIHosts = dict["SNIHosts"] as! [String]
                    }
                    if dict.keys.contains("TLSPort") {
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
                    if dict.keys.contains("MatchingContent") {
                        self.matchingContent = dict["MatchingContent"] as! String
                    }
                    if dict.keys.contains("MatchingMode") {
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
                if dict.keys.contains("Headers") {
                    self.headers = dict["Headers"] as! [UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers]
                }
                if dict.keys.contains("Ports") {
                    self.ports = dict["Ports"] as! [Int32]
                }
                if dict.keys.contains("TLSMatchAttributes") {
                    self.TLSMatchAttributes = dict["TLSMatchAttributes"] as! [UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes]
                }
                if dict.keys.contains("URI") {
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
                        if dict.keys.contains("Number") {
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
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Port") {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination.Port()
                        model.fromMap(dict["Port"] as! [String: Any])
                        self.port = model
                    }
                    if dict.keys.contains("Subset") {
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
                if dict.keys.contains("Destination") {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination()
                    model.fromMap(dict["Destination"] as! [String: Any])
                    self.destination = model
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var domains: [String]?

        public var HTTPAdvancedOptions: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions?

        public var matchRequest: UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest?

        public var namespace: String?

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
            if dict.keys.contains("Domains") {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("HTTPAdvancedOptions") {
                var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions()
                model.fromMap(dict["HTTPAdvancedOptions"] as! [String: Any])
                self.HTTPAdvancedOptions = model
            }
            if dict.keys.contains("MatchRequest") {
                var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest()
                model.fromMap(dict["MatchRequest"] as! [String: Any])
                self.matchRequest = model
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("RouteDestinations") {
                self.routeDestinations = dict["RouteDestinations"] as! [UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations]
            }
            if dict.keys.contains("RouteName") {
                self.routeName = dict["RouteName"] as! String
            }
            if dict.keys.contains("RouteType") {
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayRoute") {
            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute()
            model.fromMap(dict["GatewayRoute"] as! [String: Any])
            self.gatewayRoute = model
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayRoute") {
            self.gatewayRouteShrink = dict["GatewayRoute"] as! String
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateIstioGatewayRoutesResponseBody()
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IstioGatewayName") {
            self.istioGatewayName = dict["IstioGatewayName"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RouteName") {
            self.routeName = dict["RouteName"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("CPULimit") {
            self.CPULimit = dict["CPULimit"] as! String
        }
        if dict.keys.contains("CPURequirement") {
            self.CPURequirement = dict["CPURequirement"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("MemoryLimit") {
            self.memoryLimit = dict["MemoryLimit"] as! String
        }
        if dict.keys.contains("MemoryRequirement") {
            self.memoryRequirement = dict["MemoryRequirement"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("UsePublicApiServer") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public var accessLogGatewayLifecycle: Int32?

    public var accessLogProject: String?

    public var accessLogServiceEnabled: Bool?

    public var accessLogServiceHost: String?

    public var accessLogServicePort: Int32?

    public var accessLogSidecarLifecycle: Int32?

    public var auditProject: String?

    public var autoInjectionPolicyEnabled: Bool?

    public var CRAggregationEnabled: Bool?

    public var clusterSpec: String?

    public var cniEnabled: Bool?

    public var cniExcludeNamespaces: String?

    public var configSourceEnabled: Bool?

    public var configSourceNacosID: String?

    public var customizedPrometheus: Bool?

    public var customizedZipkin: Bool?

    public var DNSProxyingEnabled: Bool?

    public var discoverySelectors: String?

    public var dubboFilterEnabled: Bool?

    public var enableAudit: Bool?

    public var enableAutoDiagnosis: Bool?

    public var enableCRHistory: Bool?

    public var enableNamespacesByDefault: Bool?

    public var enableSDSServer: Bool?

    public var excludeIPRanges: String?

    public var excludeInboundPorts: String?

    public var excludeOutboundPorts: String?

    public var filterGatewayClusterConfig: Bool?

    public var gatewayAPIEnabled: Bool?

    public var globalRateLimitEnabled: Bool?

    public var http10Enabled: Bool?

    public var includeIPRanges: String?

    public var includeInboundPorts: String?

    public var integrateKiali: Bool?

    public var kialiEnabled: Bool?

    public var lifecycle: String?

    public var localityLBConf: String?

    public var localityLoadBalancing: Bool?

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
        if self.globalRateLimitEnabled != nil {
            map["GlobalRateLimitEnabled"] = self.globalRateLimitEnabled!
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
        if self.integrateKiali != nil {
            map["IntegrateKiali"] = self.integrateKiali!
        }
        if self.kialiEnabled != nil {
            map["KialiEnabled"] = self.kialiEnabled!
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
        if dict.keys.contains("AccessLogEnabled") {
            self.accessLogEnabled = dict["AccessLogEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogFile") {
            self.accessLogFile = dict["AccessLogFile"] as! String
        }
        if dict.keys.contains("AccessLogFormat") {
            self.accessLogFormat = dict["AccessLogFormat"] as! String
        }
        if dict.keys.contains("AccessLogGatewayLifecycle") {
            self.accessLogGatewayLifecycle = dict["AccessLogGatewayLifecycle"] as! Int32
        }
        if dict.keys.contains("AccessLogProject") {
            self.accessLogProject = dict["AccessLogProject"] as! String
        }
        if dict.keys.contains("AccessLogServiceEnabled") {
            self.accessLogServiceEnabled = dict["AccessLogServiceEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogServiceHost") {
            self.accessLogServiceHost = dict["AccessLogServiceHost"] as! String
        }
        if dict.keys.contains("AccessLogServicePort") {
            self.accessLogServicePort = dict["AccessLogServicePort"] as! Int32
        }
        if dict.keys.contains("AccessLogSidecarLifecycle") {
            self.accessLogSidecarLifecycle = dict["AccessLogSidecarLifecycle"] as! Int32
        }
        if dict.keys.contains("AuditProject") {
            self.auditProject = dict["AuditProject"] as! String
        }
        if dict.keys.contains("AutoInjectionPolicyEnabled") {
            self.autoInjectionPolicyEnabled = dict["AutoInjectionPolicyEnabled"] as! Bool
        }
        if dict.keys.contains("CRAggregationEnabled") {
            self.CRAggregationEnabled = dict["CRAggregationEnabled"] as! Bool
        }
        if dict.keys.contains("ClusterSpec") {
            self.clusterSpec = dict["ClusterSpec"] as! String
        }
        if dict.keys.contains("CniEnabled") {
            self.cniEnabled = dict["CniEnabled"] as! Bool
        }
        if dict.keys.contains("CniExcludeNamespaces") {
            self.cniExcludeNamespaces = dict["CniExcludeNamespaces"] as! String
        }
        if dict.keys.contains("ConfigSourceEnabled") {
            self.configSourceEnabled = dict["ConfigSourceEnabled"] as! Bool
        }
        if dict.keys.contains("ConfigSourceNacosID") {
            self.configSourceNacosID = dict["ConfigSourceNacosID"] as! String
        }
        if dict.keys.contains("CustomizedPrometheus") {
            self.customizedPrometheus = dict["CustomizedPrometheus"] as! Bool
        }
        if dict.keys.contains("CustomizedZipkin") {
            self.customizedZipkin = dict["CustomizedZipkin"] as! Bool
        }
        if dict.keys.contains("DNSProxyingEnabled") {
            self.DNSProxyingEnabled = dict["DNSProxyingEnabled"] as! Bool
        }
        if dict.keys.contains("DiscoverySelectors") {
            self.discoverySelectors = dict["DiscoverySelectors"] as! String
        }
        if dict.keys.contains("DubboFilterEnabled") {
            self.dubboFilterEnabled = dict["DubboFilterEnabled"] as! Bool
        }
        if dict.keys.contains("EnableAudit") {
            self.enableAudit = dict["EnableAudit"] as! Bool
        }
        if dict.keys.contains("EnableAutoDiagnosis") {
            self.enableAutoDiagnosis = dict["EnableAutoDiagnosis"] as! Bool
        }
        if dict.keys.contains("EnableCRHistory") {
            self.enableCRHistory = dict["EnableCRHistory"] as! Bool
        }
        if dict.keys.contains("EnableNamespacesByDefault") {
            self.enableNamespacesByDefault = dict["EnableNamespacesByDefault"] as! Bool
        }
        if dict.keys.contains("EnableSDSServer") {
            self.enableSDSServer = dict["EnableSDSServer"] as! Bool
        }
        if dict.keys.contains("ExcludeIPRanges") {
            self.excludeIPRanges = dict["ExcludeIPRanges"] as! String
        }
        if dict.keys.contains("ExcludeInboundPorts") {
            self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
        }
        if dict.keys.contains("ExcludeOutboundPorts") {
            self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
        }
        if dict.keys.contains("FilterGatewayClusterConfig") {
            self.filterGatewayClusterConfig = dict["FilterGatewayClusterConfig"] as! Bool
        }
        if dict.keys.contains("GatewayAPIEnabled") {
            self.gatewayAPIEnabled = dict["GatewayAPIEnabled"] as! Bool
        }
        if dict.keys.contains("GlobalRateLimitEnabled") {
            self.globalRateLimitEnabled = dict["GlobalRateLimitEnabled"] as! Bool
        }
        if dict.keys.contains("Http10Enabled") {
            self.http10Enabled = dict["Http10Enabled"] as! Bool
        }
        if dict.keys.contains("IncludeIPRanges") {
            self.includeIPRanges = dict["IncludeIPRanges"] as! String
        }
        if dict.keys.contains("IncludeInboundPorts") {
            self.includeInboundPorts = dict["IncludeInboundPorts"] as! String
        }
        if dict.keys.contains("IntegrateKiali") {
            self.integrateKiali = dict["IntegrateKiali"] as! Bool
        }
        if dict.keys.contains("KialiEnabled") {
            self.kialiEnabled = dict["KialiEnabled"] as! Bool
        }
        if dict.keys.contains("Lifecycle") {
            self.lifecycle = dict["Lifecycle"] as! String
        }
        if dict.keys.contains("LocalityLBConf") {
            self.localityLBConf = dict["LocalityLBConf"] as! String
        }
        if dict.keys.contains("LocalityLoadBalancing") {
            self.localityLoadBalancing = dict["LocalityLoadBalancing"] as! Bool
        }
        if dict.keys.contains("MSEEnabled") {
            self.MSEEnabled = dict["MSEEnabled"] as! Bool
        }
        if dict.keys.contains("MultiBufferEnabled") {
            self.multiBufferEnabled = dict["MultiBufferEnabled"] as! Bool
        }
        if dict.keys.contains("MultiBufferPollDelay") {
            self.multiBufferPollDelay = dict["MultiBufferPollDelay"] as! String
        }
        if dict.keys.contains("MysqlFilterEnabled") {
            self.mysqlFilterEnabled = dict["MysqlFilterEnabled"] as! Bool
        }
        if dict.keys.contains("NFDEnabled") {
            self.NFDEnabled = dict["NFDEnabled"] as! Bool
        }
        if dict.keys.contains("NFDLabelPruned") {
            self.NFDLabelPruned = dict["NFDLabelPruned"] as! Bool
        }
        if dict.keys.contains("OPAInjectorCPULimit") {
            self.OPAInjectorCPULimit = dict["OPAInjectorCPULimit"] as! String
        }
        if dict.keys.contains("OPAInjectorCPURequirement") {
            self.OPAInjectorCPURequirement = dict["OPAInjectorCPURequirement"] as! String
        }
        if dict.keys.contains("OPAInjectorMemoryLimit") {
            self.OPAInjectorMemoryLimit = dict["OPAInjectorMemoryLimit"] as! String
        }
        if dict.keys.contains("OPAInjectorMemoryRequirement") {
            self.OPAInjectorMemoryRequirement = dict["OPAInjectorMemoryRequirement"] as! String
        }
        if dict.keys.contains("OPALimitCPU") {
            self.OPALimitCPU = dict["OPALimitCPU"] as! String
        }
        if dict.keys.contains("OPALimitMemory") {
            self.OPALimitMemory = dict["OPALimitMemory"] as! String
        }
        if dict.keys.contains("OPALogLevel") {
            self.OPALogLevel = dict["OPALogLevel"] as! String
        }
        if dict.keys.contains("OPARequestCPU") {
            self.OPARequestCPU = dict["OPARequestCPU"] as! String
        }
        if dict.keys.contains("OPARequestMemory") {
            self.OPARequestMemory = dict["OPARequestMemory"] as! String
        }
        if dict.keys.contains("OPAScopeInjected") {
            self.OPAScopeInjected = dict["OPAScopeInjected"] as! Bool
        }
        if dict.keys.contains("OpaEnabled") {
            self.opaEnabled = dict["OpaEnabled"] as! Bool
        }
        if dict.keys.contains("OpenAgentPolicy") {
            self.openAgentPolicy = dict["OpenAgentPolicy"] as! Bool
        }
        if dict.keys.contains("OutboundTrafficPolicy") {
            self.outboundTrafficPolicy = dict["OutboundTrafficPolicy"] as! String
        }
        if dict.keys.contains("PrometheusUrl") {
            self.prometheusUrl = dict["PrometheusUrl"] as! String
        }
        if dict.keys.contains("ProxyInitCPUResourceLimit") {
            self.proxyInitCPUResourceLimit = dict["ProxyInitCPUResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitCPUResourceRequest") {
            self.proxyInitCPUResourceRequest = dict["ProxyInitCPUResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyInitMemoryResourceLimit") {
            self.proxyInitMemoryResourceLimit = dict["ProxyInitMemoryResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitMemoryResourceRequest") {
            self.proxyInitMemoryResourceRequest = dict["ProxyInitMemoryResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyLimitCPU") {
            self.proxyLimitCPU = dict["ProxyLimitCPU"] as! String
        }
        if dict.keys.contains("ProxyLimitMemory") {
            self.proxyLimitMemory = dict["ProxyLimitMemory"] as! String
        }
        if dict.keys.contains("ProxyRequestCPU") {
            self.proxyRequestCPU = dict["ProxyRequestCPU"] as! String
        }
        if dict.keys.contains("ProxyRequestMemory") {
            self.proxyRequestMemory = dict["ProxyRequestMemory"] as! String
        }
        if dict.keys.contains("RedisFilterEnabled") {
            self.redisFilterEnabled = dict["RedisFilterEnabled"] as! Bool
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("SidecarInjectorLimitCPU") {
            self.sidecarInjectorLimitCPU = dict["SidecarInjectorLimitCPU"] as! String
        }
        if dict.keys.contains("SidecarInjectorLimitMemory") {
            self.sidecarInjectorLimitMemory = dict["SidecarInjectorLimitMemory"] as! String
        }
        if dict.keys.contains("SidecarInjectorRequestCPU") {
            self.sidecarInjectorRequestCPU = dict["SidecarInjectorRequestCPU"] as! String
        }
        if dict.keys.contains("SidecarInjectorRequestMemory") {
            self.sidecarInjectorRequestMemory = dict["SidecarInjectorRequestMemory"] as! String
        }
        if dict.keys.contains("SidecarInjectorWebhookAsYaml") {
            self.sidecarInjectorWebhookAsYaml = dict["SidecarInjectorWebhookAsYaml"] as! String
        }
        if dict.keys.contains("Telemetry") {
            self.telemetry = dict["Telemetry"] as! Bool
        }
        if dict.keys.contains("TerminationDrainDuration") {
            self.terminationDrainDuration = dict["TerminationDrainDuration"] as! String
        }
        if dict.keys.contains("ThriftFilterEnabled") {
            self.thriftFilterEnabled = dict["ThriftFilterEnabled"] as! Bool
        }
        if dict.keys.contains("TraceSampling") {
            self.traceSampling = dict["TraceSampling"] as! Double
        }
        if dict.keys.contains("Tracing") {
            self.tracing = dict["Tracing"] as! Bool
        }
        if dict.keys.contains("TracingOnExtZipkinLimitCPU") {
            self.tracingOnExtZipkinLimitCPU = dict["TracingOnExtZipkinLimitCPU"] as! String
        }
        if dict.keys.contains("TracingOnExtZipkinLimitMemory") {
            self.tracingOnExtZipkinLimitMemory = dict["TracingOnExtZipkinLimitMemory"] as! String
        }
        if dict.keys.contains("TracingOnExtZipkinRequestCPU") {
            self.tracingOnExtZipkinRequestCPU = dict["TracingOnExtZipkinRequestCPU"] as! String
        }
        if dict.keys.contains("TracingOnExtZipkinRequestMemory") {
            self.tracingOnExtZipkinRequestMemory = dict["TracingOnExtZipkinRequestMemory"] as! String
        }
        if dict.keys.contains("WebAssemblyFilterEnabled") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateMeshFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNamespaceScopeSidecarConfigRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var excludeIPRanges: String?

    public var excludeInboundPorts: String?

    public var excludeOutboundPorts: String?

    public var holdApplicationUntilProxyStarts: Bool?

    public var includeIPRanges: String?

    public var includeInboundPorts: String?

    public var includeOutboundPorts: String?

    public var istioDNSProxyEnabled: Bool?

    public var lifecycle: String?

    public var logLevel: String?

    public var namespace: String?

    public var postStart: String?

    public var preStop: String?

    public var proxyInitCPUResourceLimit: String?

    public var proxyInitCPUResourceRequest: String?

    public var proxyInitMemoryResourceLimit: String?

    public var proxyInitMemoryResourceRequest: String?

    public var proxyStatsMatcher: String?

    public var serviceMeshId: String?

    public var sidecarProxyCPUResourceLimit: String?

    public var sidecarProxyCPUResourceRequest: String?

    public var sidecarProxyMemoryResourceLimit: String?

    public var sidecarProxyMemoryResourceRequest: String?

    public var terminationDrainDuration: String?

    public override init() {
        super.init()
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
        if self.proxyStatsMatcher != nil {
            map["ProxyStatsMatcher"] = self.proxyStatsMatcher!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Concurrency") {
            self.concurrency = dict["Concurrency"] as! Int32
        }
        if dict.keys.contains("ExcludeIPRanges") {
            self.excludeIPRanges = dict["ExcludeIPRanges"] as! String
        }
        if dict.keys.contains("ExcludeInboundPorts") {
            self.excludeInboundPorts = dict["ExcludeInboundPorts"] as! String
        }
        if dict.keys.contains("ExcludeOutboundPorts") {
            self.excludeOutboundPorts = dict["ExcludeOutboundPorts"] as! String
        }
        if dict.keys.contains("HoldApplicationUntilProxyStarts") {
            self.holdApplicationUntilProxyStarts = dict["HoldApplicationUntilProxyStarts"] as! Bool
        }
        if dict.keys.contains("IncludeIPRanges") {
            self.includeIPRanges = dict["IncludeIPRanges"] as! String
        }
        if dict.keys.contains("IncludeInboundPorts") {
            self.includeInboundPorts = dict["IncludeInboundPorts"] as! String
        }
        if dict.keys.contains("IncludeOutboundPorts") {
            self.includeOutboundPorts = dict["IncludeOutboundPorts"] as! String
        }
        if dict.keys.contains("IstioDNSProxyEnabled") {
            self.istioDNSProxyEnabled = dict["IstioDNSProxyEnabled"] as! Bool
        }
        if dict.keys.contains("Lifecycle") {
            self.lifecycle = dict["Lifecycle"] as! String
        }
        if dict.keys.contains("LogLevel") {
            self.logLevel = dict["LogLevel"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("PostStart") {
            self.postStart = dict["PostStart"] as! String
        }
        if dict.keys.contains("PreStop") {
            self.preStop = dict["PreStop"] as! String
        }
        if dict.keys.contains("ProxyInitCPUResourceLimit") {
            self.proxyInitCPUResourceLimit = dict["ProxyInitCPUResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitCPUResourceRequest") {
            self.proxyInitCPUResourceRequest = dict["ProxyInitCPUResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyInitMemoryResourceLimit") {
            self.proxyInitMemoryResourceLimit = dict["ProxyInitMemoryResourceLimit"] as! String
        }
        if dict.keys.contains("ProxyInitMemoryResourceRequest") {
            self.proxyInitMemoryResourceRequest = dict["ProxyInitMemoryResourceRequest"] as! String
        }
        if dict.keys.contains("ProxyStatsMatcher") {
            self.proxyStatsMatcher = dict["ProxyStatsMatcher"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("SidecarProxyCPUResourceLimit") {
            self.sidecarProxyCPUResourceLimit = dict["SidecarProxyCPUResourceLimit"] as! String
        }
        if dict.keys.contains("SidecarProxyCPUResourceRequest") {
            self.sidecarProxyCPUResourceRequest = dict["SidecarProxyCPUResourceRequest"] as! String
        }
        if dict.keys.contains("SidecarProxyMemoryResourceLimit") {
            self.sidecarProxyMemoryResourceLimit = dict["SidecarProxyMemoryResourceLimit"] as! String
        }
        if dict.keys.contains("SidecarProxyMemoryResourceRequest") {
            self.sidecarProxyMemoryResourceRequest = dict["SidecarProxyMemoryResourceRequest"] as! String
        }
        if dict.keys.contains("TerminationDrainDuration") {
            self.terminationDrainDuration = dict["TerminationDrainDuration"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateNamespaceScopeSidecarConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeMeshEditionPartiallyRequest : Tea.TeaModel {
    public var ASMGatewayContinue: Bool?

    public var expectedVersion: String?

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
        if dict.keys.contains("ASMGatewayContinue") {
            self.ASMGatewayContinue = dict["ASMGatewayContinue"] as! Bool
        }
        if dict.keys.contains("ExpectedVersion") {
            self.expectedVersion = dict["ExpectedVersion"] as! String
        }
        if dict.keys.contains("ServiceMeshId") {
            self.serviceMeshId = dict["ServiceMeshId"] as! String
        }
        if dict.keys.contains("SwitchToPro") {
            self.switchToPro = dict["SwitchToPro"] as! Bool
        }
        if dict.keys.contains("UpgradeGatewayRecords") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeMeshEditionPartiallyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeMeshVersionRequest : Tea.TeaModel {
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
        if dict.keys.contains("ServiceMeshId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeMeshVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
