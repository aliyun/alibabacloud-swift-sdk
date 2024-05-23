import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAppRequest : Tea.TeaModel {
    public class Authentication : Tea.TeaModel {
        public class BasicAuth : Tea.TeaModel {
            public var password: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.password != nil {
                    map["password"] = self.password!
                }
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("password") {
                    self.password = dict["password"] as! String
                }
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
                }
            }
        }
        public var basicAuth: [CreateAppRequest.Authentication.BasicAuth]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.basicAuth != nil {
                var tmp : [Any] = []
                for k in self.basicAuth! {
                    tmp.append(k.toMap())
                }
                map["basicAuth"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("basicAuth") {
                var tmp : [CreateAppRequest.Authentication.BasicAuth] = []
                for v in dict["basicAuth"] as! [Any] {
                    var model = CreateAppRequest.Authentication.BasicAuth()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.basicAuth = tmp
            }
        }
    }
    public class Network : Tea.TeaModel {
        public class WhiteIpGroup : Tea.TeaModel {
            public var groupName: String?

            public var ips: [String]?

            public override init() {
                super.init()
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
                    map["groupName"] = self.groupName!
                }
                if self.ips != nil {
                    map["ips"] = self.ips!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("ips") {
                    self.ips = dict["ips"] as! [String]
                }
            }
        }
        public var domain: String?

        public var enabled: Bool?

        public var port: Int32?

        public var type: String?

        public var whiteIpGroup: [CreateAppRequest.Network.WhiteIpGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.whiteIpGroup != nil {
                var tmp : [Any] = []
                for k in self.whiteIpGroup! {
                    tmp.append(k.toMap())
                }
                map["whiteIpGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("enabled") {
                self.enabled = dict["enabled"] as! Bool
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("whiteIpGroup") {
                var tmp : [CreateAppRequest.Network.WhiteIpGroup] = []
                for v in dict["whiteIpGroup"] as! [Any] {
                    var model = CreateAppRequest.Network.WhiteIpGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.whiteIpGroup = tmp
            }
        }
    }
    public class PrivateNetwork : Tea.TeaModel {
        public class WhiteIpGroup : Tea.TeaModel {
            public var groupName: String?

            public var ips: [String]?

            public override init() {
                super.init()
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
                    map["groupName"] = self.groupName!
                }
                if self.ips != nil {
                    map["ips"] = self.ips!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("ips") {
                    self.ips = dict["ips"] as! [String]
                }
            }
        }
        public var enabled: Bool?

        public var pvlEndpointId: String?

        public var type: String?

        public var vpcId: String?

        public var whiteIpGroup: [CreateAppRequest.PrivateNetwork.WhiteIpGroup]?

        public override init() {
            super.init()
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
                map["enabled"] = self.enabled!
            }
            if self.pvlEndpointId != nil {
                map["pvlEndpointId"] = self.pvlEndpointId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            if self.whiteIpGroup != nil {
                var tmp : [Any] = []
                for k in self.whiteIpGroup! {
                    tmp.append(k.toMap())
                }
                map["whiteIpGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enabled") {
                self.enabled = dict["enabled"] as! Bool
            }
            if dict.keys.contains("pvlEndpointId") {
                self.pvlEndpointId = dict["pvlEndpointId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
            }
            if dict.keys.contains("whiteIpGroup") {
                var tmp : [CreateAppRequest.PrivateNetwork.WhiteIpGroup] = []
                for v in dict["whiteIpGroup"] as! [Any] {
                    var model = CreateAppRequest.PrivateNetwork.WhiteIpGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.whiteIpGroup = tmp
            }
        }
    }
    public class QuotaInfo : Tea.TeaModel {
        public var appType: String?

        public var cu: Int32?

        public var storage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appType != nil {
                map["appType"] = self.appType!
            }
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            if self.storage != nil {
                map["storage"] = self.storage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appType") {
                self.appType = dict["appType"] as! String
            }
            if dict.keys.contains("cu") {
                self.cu = dict["cu"] as! Int32
            }
            if dict.keys.contains("storage") {
                self.storage = dict["storage"] as! Int32
            }
        }
    }
    public var appName: String?

    public var authentication: CreateAppRequest.Authentication?

    public var chargeType: String?

    public var description_: String?

    public var network: [CreateAppRequest.Network]?

    public var privateNetwork: [CreateAppRequest.PrivateNetwork]?

    public var quotaInfo: CreateAppRequest.QuotaInfo?

    public var regionId: String?

    public var scenario: String?

    public var version: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authentication?.validate()
        try self.quotaInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["appName"] = self.appName!
        }
        if self.authentication != nil {
            map["authentication"] = self.authentication?.toMap()
        }
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.network != nil {
            var tmp : [Any] = []
            for k in self.network! {
                tmp.append(k.toMap())
            }
            map["network"] = tmp
        }
        if self.privateNetwork != nil {
            var tmp : [Any] = []
            for k in self.privateNetwork! {
                tmp.append(k.toMap())
            }
            map["privateNetwork"] = tmp
        }
        if self.quotaInfo != nil {
            map["quotaInfo"] = self.quotaInfo?.toMap()
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appName") {
            self.appName = dict["appName"] as! String
        }
        if dict.keys.contains("authentication") {
            var model = CreateAppRequest.Authentication()
            model.fromMap(dict["authentication"] as! [String: Any])
            self.authentication = model
        }
        if dict.keys.contains("chargeType") {
            self.chargeType = dict["chargeType"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("network") {
            var tmp : [CreateAppRequest.Network] = []
            for v in dict["network"] as! [Any] {
                var model = CreateAppRequest.Network()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.network = tmp
        }
        if dict.keys.contains("privateNetwork") {
            var tmp : [CreateAppRequest.PrivateNetwork] = []
            for v in dict["privateNetwork"] as! [Any] {
                var model = CreateAppRequest.PrivateNetwork()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.privateNetwork = tmp
        }
        if dict.keys.contains("quotaInfo") {
            var model = CreateAppRequest.QuotaInfo()
            model.fromMap(dict["quotaInfo"] as! [String: Any])
            self.quotaInfo = model
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var instaneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instaneId != nil {
                map["instaneId"] = self.instaneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instaneId") {
                self.instaneId = dict["instaneId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateAppResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateAppResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEndpointRequest : Tea.TeaModel {
    public class EndpointZones : Tea.TeaModel {
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
                map["vswitchId"] = self.vswitchId!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("vswitchId") {
                self.vswitchId = dict["vswitchId"] as! String
            }
            if dict.keys.contains("zoneId") {
                self.zoneId = dict["zoneId"] as! String
            }
        }
    }
    public var endpointZones: [CreateEndpointRequest.EndpointZones]?

    public var name: String?

    public var vpcId: String?

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
        if self.endpointZones != nil {
            var tmp : [Any] = []
            for k in self.endpointZones! {
                tmp.append(k.toMap())
            }
            map["endpointZones"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endpointZones") {
            var tmp : [CreateEndpointRequest.EndpointZones] = []
            for v in dict["endpointZones"] as! [Any] {
                var model = CreateEndpointRequest.EndpointZones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.endpointZones = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("vpcId") {
            self.vpcId = dict["vpcId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateEndpointResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["endpointId"] = self.endpointId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpointId") {
                self.endpointId = dict["endpointId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateEndpointResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateEndpointResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["instanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DeleteAppResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = DeleteAppResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppRequest : Tea.TeaModel {
    public var detailed: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detailed != nil {
            map["detailed"] = self.detailed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("detailed") {
            self.detailed = dict["detailed"] as! Bool
        }
    }
}

public class GetAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Network : Tea.TeaModel {
            public class WhiteIpGroup : Tea.TeaModel {
                public var groupName: String?

                public var ips: [String]?

                public override init() {
                    super.init()
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
                        map["groupName"] = self.groupName!
                    }
                    if self.ips != nil {
                        map["ips"] = self.ips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("groupName") {
                        self.groupName = dict["groupName"] as! String
                    }
                    if dict.keys.contains("ips") {
                        self.ips = dict["ips"] as! [String]
                    }
                }
            }
            public var domain: String?

            public var enabled: Bool?

            public var port: Int32?

            public var type: String?

            public var whiteIpGroup: [GetAppResponseBody.Result.Network.WhiteIpGroup]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.whiteIpGroup != nil {
                    var tmp : [Any] = []
                    for k in self.whiteIpGroup! {
                        tmp.append(k.toMap())
                    }
                    map["whiteIpGroup"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("domain") {
                    self.domain = dict["domain"] as! String
                }
                if dict.keys.contains("enabled") {
                    self.enabled = dict["enabled"] as! Bool
                }
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("whiteIpGroup") {
                    var tmp : [GetAppResponseBody.Result.Network.WhiteIpGroup] = []
                    for v in dict["whiteIpGroup"] as! [Any] {
                        var model = GetAppResponseBody.Result.Network.WhiteIpGroup()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.whiteIpGroup = tmp
                }
            }
        }
        public class PrivateNetwork : Tea.TeaModel {
            public class WhiteIpGroup : Tea.TeaModel {
                public var groupName: String?

                public var ips: [String]?

                public override init() {
                    super.init()
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
                        map["groupName"] = self.groupName!
                    }
                    if self.ips != nil {
                        map["ips"] = self.ips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("groupName") {
                        self.groupName = dict["groupName"] as! String
                    }
                    if dict.keys.contains("ips") {
                        self.ips = dict["ips"] as! [String]
                    }
                }
            }
            public var domain: String?

            public var enabled: Bool?

            public var port: Int32?

            public var pvlEndpointId: String?

            public var type: String?

            public var vpcId: String?

            public var whiteIpGroup: [GetAppResponseBody.Result.PrivateNetwork.WhiteIpGroup]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.pvlEndpointId != nil {
                    map["pvlEndpointId"] = self.pvlEndpointId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                if self.whiteIpGroup != nil {
                    var tmp : [Any] = []
                    for k in self.whiteIpGroup! {
                        tmp.append(k.toMap())
                    }
                    map["whiteIpGroup"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("domain") {
                    self.domain = dict["domain"] as! String
                }
                if dict.keys.contains("enabled") {
                    self.enabled = dict["enabled"] as! Bool
                }
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! Int32
                }
                if dict.keys.contains("pvlEndpointId") {
                    self.pvlEndpointId = dict["pvlEndpointId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("vpcId") {
                    self.vpcId = dict["vpcId"] as! String
                }
                if dict.keys.contains("whiteIpGroup") {
                    var tmp : [GetAppResponseBody.Result.PrivateNetwork.WhiteIpGroup] = []
                    for v in dict["whiteIpGroup"] as! [Any] {
                        var model = GetAppResponseBody.Result.PrivateNetwork.WhiteIpGroup()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.whiteIpGroup = tmp
                }
            }
        }
        public var appId: String?

        public var appName: String?

        public var createTime: String?

        public var description_: String?

        public var instanceId: String?

        public var modifiedTime: String?

        public var network: [GetAppResponseBody.Result.Network]?

        public var ownerId: String?

        public var privateNetwork: [GetAppResponseBody.Result.PrivateNetwork]?

        public var regionId: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["appId"] = self.appId!
            }
            if self.appName != nil {
                map["appName"] = self.appName!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.network != nil {
                var tmp : [Any] = []
                for k in self.network! {
                    tmp.append(k.toMap())
                }
                map["network"] = tmp
            }
            if self.ownerId != nil {
                map["ownerId"] = self.ownerId!
            }
            if self.privateNetwork != nil {
                var tmp : [Any] = []
                for k in self.privateNetwork! {
                    tmp.append(k.toMap())
                }
                map["privateNetwork"] = tmp
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appId") {
                self.appId = dict["appId"] as! String
            }
            if dict.keys.contains("appName") {
                self.appName = dict["appName"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("modifiedTime") {
                self.modifiedTime = dict["modifiedTime"] as! String
            }
            if dict.keys.contains("network") {
                var tmp : [GetAppResponseBody.Result.Network] = []
                for v in dict["network"] as! [Any] {
                    var model = GetAppResponseBody.Result.Network()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.network = tmp
            }
            if dict.keys.contains("ownerId") {
                self.ownerId = dict["ownerId"] as! String
            }
            if dict.keys.contains("privateNetwork") {
                var tmp : [GetAppResponseBody.Result.PrivateNetwork] = []
                for v in dict["privateNetwork"] as! [Any] {
                    var model = GetAppResponseBody.Result.PrivateNetwork()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.privateNetwork = tmp
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetAppResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetAppResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppQuotaResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class LimiterInfo : Tea.TeaModel {
            public class Limiters : Tea.TeaModel {
                public var immutable: Bool?

                public var maxValue: Int64?

                public var minValue: Int64?

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
                    if self.immutable != nil {
                        map["immutable"] = self.immutable!
                    }
                    if self.maxValue != nil {
                        map["maxValue"] = self.maxValue!
                    }
                    if self.minValue != nil {
                        map["minValue"] = self.minValue!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("immutable") {
                        self.immutable = dict["immutable"] as! Bool
                    }
                    if dict.keys.contains("maxValue") {
                        self.maxValue = dict["maxValue"] as! Int64
                    }
                    if dict.keys.contains("minValue") {
                        self.minValue = dict["minValue"] as! Int64
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var limiters: [GetAppQuotaResponseBody.Result.LimiterInfo.Limiters]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limiters != nil {
                    var tmp : [Any] = []
                    for k in self.limiters! {
                        tmp.append(k.toMap())
                    }
                    map["limiters"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("limiters") {
                    var tmp : [GetAppQuotaResponseBody.Result.LimiterInfo.Limiters] = []
                    for v in dict["limiters"] as! [Any] {
                        var model = GetAppQuotaResponseBody.Result.LimiterInfo.Limiters()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.limiters = tmp
                }
            }
        }
        public var limiterInfo: GetAppQuotaResponseBody.Result.LimiterInfo?

        public var quotaInfo: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.limiterInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.limiterInfo != nil {
                map["limiterInfo"] = self.limiterInfo?.toMap()
            }
            if self.quotaInfo != nil {
                map["quotaInfo"] = self.quotaInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("limiterInfo") {
                var model = GetAppQuotaResponseBody.Result.LimiterInfo()
                model.fromMap(dict["limiterInfo"] as! [String: Any])
                self.limiterInfo = model
            }
            if dict.keys.contains("quotaInfo") {
                self.quotaInfo = dict["quotaInfo"] as! [String: Any]
            }
        }
    }
    public var requestId: String?

    public var result: GetAppQuotaResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetAppQuotaResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetAppQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAppQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMonitorDataRequest : Tea.TeaModel {
    public var body: String?

    public override init() {
        super.init()
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
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
    }
}

public class GetMonitorDataResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var dps: [String: Any]?

        public var integrity: Double?

        public var messageWatermark: Int64?

        public var metric: String?

        public var summary: Double?

        public var tags: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dps != nil {
                map["dps"] = self.dps!
            }
            if self.integrity != nil {
                map["integrity"] = self.integrity!
            }
            if self.messageWatermark != nil {
                map["messageWatermark"] = self.messageWatermark!
            }
            if self.metric != nil {
                map["metric"] = self.metric!
            }
            if self.summary != nil {
                map["summary"] = self.summary!
            }
            if self.tags != nil {
                map["tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dps") {
                self.dps = dict["dps"] as! [String: Any]
            }
            if dict.keys.contains("integrity") {
                self.integrity = dict["integrity"] as! Double
            }
            if dict.keys.contains("messageWatermark") {
                self.messageWatermark = dict["messageWatermark"] as! Int64
            }
            if dict.keys.contains("metric") {
                self.metric = dict["metric"] as! String
            }
            if dict.keys.contains("summary") {
                self.summary = dict["summary"] as! Double
            }
            if dict.keys.contains("tags") {
                self.tags = dict["tags"] as! [String: Any]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: [GetMonitorDataResponseBody.Result]?

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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [GetMonitorDataResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = GetMonitorDataResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetMonitorDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMonitorDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMonitorDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var appName: String?

    public var createTime: String?

    public var description_: String?

    public var orderType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.appName != nil {
            map["appName"] = self.appName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.orderType != nil {
            map["orderType"] = self.orderType!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appName") {
            self.appName = dict["appName"] as! String
        }
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("orderType") {
            self.orderType = dict["orderType"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var createTime: String?

        public var description_: String?

        public var instanceId: String?

        public var modifiedTime: String?

        public var ownerId: String?

        public var regionId: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["appId"] = self.appId!
            }
            if self.appName != nil {
                map["appName"] = self.appName!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.ownerId != nil {
                map["ownerId"] = self.ownerId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appId") {
                self.appId = dict["appId"] as! String
            }
            if dict.keys.contains("appName") {
                self.appName = dict["appName"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("modifiedTime") {
                self.modifiedTime = dict["modifiedTime"] as! String
            }
            if dict.keys.contains("ownerId") {
                self.ownerId = dict["ownerId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListAppsResponseBody.Result]?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListAppsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListAppsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppRequest : Tea.TeaModel {
    public class Authentication : Tea.TeaModel {
        public class BasicAuth : Tea.TeaModel {
            public var password: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.password != nil {
                    map["password"] = self.password!
                }
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("password") {
                    self.password = dict["password"] as! String
                }
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
                }
            }
        }
        public var basicAuth: [UpdateAppRequest.Authentication.BasicAuth]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.basicAuth != nil {
                var tmp : [Any] = []
                for k in self.basicAuth! {
                    tmp.append(k.toMap())
                }
                map["basicAuth"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("basicAuth") {
                var tmp : [UpdateAppRequest.Authentication.BasicAuth] = []
                for v in dict["basicAuth"] as! [Any] {
                    var model = UpdateAppRequest.Authentication.BasicAuth()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.basicAuth = tmp
            }
        }
    }
    public class LimiterInfo : Tea.TeaModel {
        public class Limiters : Tea.TeaModel {
            public var maxValue: Int32?

            public var minValue: Int32?

            public var type: String?

            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxValue != nil {
                    map["maxValue"] = self.maxValue!
                }
                if self.minValue != nil {
                    map["minValue"] = self.minValue!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("maxValue") {
                    self.maxValue = dict["maxValue"] as! Int32
                }
                if dict.keys.contains("minValue") {
                    self.minValue = dict["minValue"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("values") {
                    self.values = dict["values"] as! [String]
                }
            }
        }
        public var limiters: [UpdateAppRequest.LimiterInfo.Limiters]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.limiters != nil {
                var tmp : [Any] = []
                for k in self.limiters! {
                    tmp.append(k.toMap())
                }
                map["limiters"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("limiters") {
                var tmp : [UpdateAppRequest.LimiterInfo.Limiters] = []
                for v in dict["limiters"] as! [Any] {
                    var model = UpdateAppRequest.LimiterInfo.Limiters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.limiters = tmp
            }
        }
    }
    public class Network : Tea.TeaModel {
        public class WhiteIpGroup : Tea.TeaModel {
            public var groupName: String?

            public var ips: [String]?

            public override init() {
                super.init()
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
                    map["groupName"] = self.groupName!
                }
                if self.ips != nil {
                    map["ips"] = self.ips!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("ips") {
                    self.ips = dict["ips"] as! [String]
                }
            }
        }
        public var domain: String?

        public var enabled: Bool?

        public var port: Int32?

        public var type: String?

        public var whiteIpGroup: [UpdateAppRequest.Network.WhiteIpGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.whiteIpGroup != nil {
                var tmp : [Any] = []
                for k in self.whiteIpGroup! {
                    tmp.append(k.toMap())
                }
                map["whiteIpGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("enabled") {
                self.enabled = dict["enabled"] as! Bool
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("whiteIpGroup") {
                var tmp : [UpdateAppRequest.Network.WhiteIpGroup] = []
                for v in dict["whiteIpGroup"] as! [Any] {
                    var model = UpdateAppRequest.Network.WhiteIpGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.whiteIpGroup = tmp
            }
        }
    }
    public class PrivateNetwork : Tea.TeaModel {
        public class WhiteIpGroup : Tea.TeaModel {
            public var groupName: String?

            public var ips: [String]?

            public override init() {
                super.init()
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
                    map["groupName"] = self.groupName!
                }
                if self.ips != nil {
                    map["ips"] = self.ips!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("ips") {
                    self.ips = dict["ips"] as! [String]
                }
            }
        }
        public var enabled: Bool?

        public var pvlEndpointId: String?

        public var type: String?

        public var vpcId: String?

        public var whiteIpGroup: [UpdateAppRequest.PrivateNetwork.WhiteIpGroup]?

        public override init() {
            super.init()
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
                map["enabled"] = self.enabled!
            }
            if self.pvlEndpointId != nil {
                map["pvlEndpointId"] = self.pvlEndpointId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            if self.whiteIpGroup != nil {
                var tmp : [Any] = []
                for k in self.whiteIpGroup! {
                    tmp.append(k.toMap())
                }
                map["whiteIpGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enabled") {
                self.enabled = dict["enabled"] as! Bool
            }
            if dict.keys.contains("pvlEndpointId") {
                self.pvlEndpointId = dict["pvlEndpointId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
            }
            if dict.keys.contains("whiteIpGroup") {
                var tmp : [UpdateAppRequest.PrivateNetwork.WhiteIpGroup] = []
                for v in dict["whiteIpGroup"] as! [Any] {
                    var model = UpdateAppRequest.PrivateNetwork.WhiteIpGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.whiteIpGroup = tmp
            }
        }
    }
    public var applyReason: String?

    public var authentication: UpdateAppRequest.Authentication?

    public var contactInfo: String?

    public var description_: String?

    public var limiterInfo: UpdateAppRequest.LimiterInfo?

    public var network: [UpdateAppRequest.Network]?

    public var privateNetwork: [UpdateAppRequest.PrivateNetwork]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authentication?.validate()
        try self.limiterInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyReason != nil {
            map["applyReason"] = self.applyReason!
        }
        if self.authentication != nil {
            map["authentication"] = self.authentication?.toMap()
        }
        if self.contactInfo != nil {
            map["contactInfo"] = self.contactInfo!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.limiterInfo != nil {
            map["limiterInfo"] = self.limiterInfo?.toMap()
        }
        if self.network != nil {
            var tmp : [Any] = []
            for k in self.network! {
                tmp.append(k.toMap())
            }
            map["network"] = tmp
        }
        if self.privateNetwork != nil {
            var tmp : [Any] = []
            for k in self.privateNetwork! {
                tmp.append(k.toMap())
            }
            map["privateNetwork"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applyReason") {
            self.applyReason = dict["applyReason"] as! String
        }
        if dict.keys.contains("authentication") {
            var model = UpdateAppRequest.Authentication()
            model.fromMap(dict["authentication"] as! [String: Any])
            self.authentication = model
        }
        if dict.keys.contains("contactInfo") {
            self.contactInfo = dict["contactInfo"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("limiterInfo") {
            var model = UpdateAppRequest.LimiterInfo()
            model.fromMap(dict["limiterInfo"] as! [String: Any])
            self.limiterInfo = model
        }
        if dict.keys.contains("network") {
            var tmp : [UpdateAppRequest.Network] = []
            for v in dict["network"] as! [Any] {
                var model = UpdateAppRequest.Network()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.network = tmp
        }
        if dict.keys.contains("privateNetwork") {
            var tmp : [UpdateAppRequest.PrivateNetwork] = []
            for v in dict["privateNetwork"] as! [Any] {
                var model = UpdateAppRequest.PrivateNetwork()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.privateNetwork = tmp
        }
    }
}

public class UpdateAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["instanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: UpdateAppResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateAppResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class UpdateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
