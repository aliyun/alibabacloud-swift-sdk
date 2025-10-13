import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AgentServiceConfig : Tea.TeaModel {
    public class DashScopeConfig : Tea.TeaModel {
        public class AppCredentials : Tea.TeaModel {
            public var apiKey: String?

            public var appId: String?

            public override init() {
                super.init()
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
                    map["apiKey"] = self.apiKey!
                }
                if self.appId != nil {
                    map["appId"] = self.appId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["apiKey"] as? String {
                    self.apiKey = value
                }
                if let value = dict["appId"] as? String {
                    self.appId = value
                }
            }
        }
        public var appCredentials: [AgentServiceConfig.DashScopeConfig.AppCredentials]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appCredentials != nil {
                var tmp : [Any] = []
                for k in self.appCredentials! {
                    tmp.append(k.toMap())
                }
                map["appCredentials"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appCredentials"] as? [Any?] {
                var tmp : [AgentServiceConfig.DashScopeConfig.AppCredentials] = []
                for v in value {
                    if v != nil {
                        var model = AgentServiceConfig.DashScopeConfig.AppCredentials()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appCredentials = tmp
            }
        }
    }
    public class DifyConfig : Tea.TeaModel {
        public var apiKey: String?

        public var botType: String?

        public override init() {
            super.init()
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
                map["apiKey"] = self.apiKey!
            }
            if self.botType != nil {
                map["botType"] = self.botType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["botType"] as? String {
                self.botType = value
            }
        }
    }
    public var address: String?

    public var dashScopeConfig: AgentServiceConfig.DashScopeConfig?

    public var difyConfig: AgentServiceConfig.DifyConfig?

    public var enableHealthCheck: Bool?

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
        try self.dashScopeConfig?.validate()
        try self.difyConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.dashScopeConfig != nil {
            map["dashScopeConfig"] = self.dashScopeConfig?.toMap()
        }
        if self.difyConfig != nil {
            map["difyConfig"] = self.difyConfig?.toMap()
        }
        if self.enableHealthCheck != nil {
            map["enableHealthCheck"] = self.enableHealthCheck!
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["dashScopeConfig"] as? [String: Any?] {
            var model = AgentServiceConfig.DashScopeConfig()
            model.fromMap(value)
            self.dashScopeConfig = model
        }
        if let value = dict["difyConfig"] as? [String: Any?] {
            var model = AgentServiceConfig.DifyConfig()
            model.fromMap(value)
            self.difyConfig = model
        }
        if let value = dict["enableHealthCheck"] as? Bool {
            self.enableHealthCheck = value
        }
        if let value = dict["protocols"] as? [String] {
            self.protocols = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
    }
}

public class AiServiceConfig : Tea.TeaModel {
    public class BedrockServiceConfig : Tea.TeaModel {
        public var awsAccessKey: String?

        public var awsRegion: String?

        public var awsSecretKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.awsAccessKey != nil {
                map["awsAccessKey"] = self.awsAccessKey!
            }
            if self.awsRegion != nil {
                map["awsRegion"] = self.awsRegion!
            }
            if self.awsSecretKey != nil {
                map["awsSecretKey"] = self.awsSecretKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["awsAccessKey"] as? String {
                self.awsAccessKey = value
            }
            if let value = dict["awsRegion"] as? String {
                self.awsRegion = value
            }
            if let value = dict["awsSecretKey"] as? String {
                self.awsSecretKey = value
            }
        }
    }
    public class PaiEASServiceConfig : Tea.TeaModel {
        public var endpointType: String?

        public var serviceId: String?

        public var serviceName: String?

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
            if self.endpointType != nil {
                map["endpointType"] = self.endpointType!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["endpointType"] as? String {
                self.endpointType = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var address: String?

    public var apiKeys: [String]?

    public var bedrockServiceConfig: AiServiceConfig.BedrockServiceConfig?

    public var enableHealthCheck: Bool?

    public var paiEASServiceConfig: AiServiceConfig.PaiEASServiceConfig?

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
        try self.bedrockServiceConfig?.validate()
        try self.paiEASServiceConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKeys != nil {
            map["apiKeys"] = self.apiKeys!
        }
        if self.bedrockServiceConfig != nil {
            map["bedrockServiceConfig"] = self.bedrockServiceConfig?.toMap()
        }
        if self.enableHealthCheck != nil {
            map["enableHealthCheck"] = self.enableHealthCheck!
        }
        if self.paiEASServiceConfig != nil {
            map["paiEASServiceConfig"] = self.paiEASServiceConfig?.toMap()
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["apiKeys"] as? [String] {
            self.apiKeys = value
        }
        if let value = dict["bedrockServiceConfig"] as? [String: Any?] {
            var model = AiServiceConfig.BedrockServiceConfig()
            model.fromMap(value)
            self.bedrockServiceConfig = model
        }
        if let value = dict["enableHealthCheck"] as? Bool {
            self.enableHealthCheck = value
        }
        if let value = dict["paiEASServiceConfig"] as? [String: Any?] {
            var model = AiServiceConfig.PaiEASServiceConfig()
            model.fromMap(value)
            self.paiEASServiceConfig = model
        }
        if let value = dict["protocols"] as? [String] {
            self.protocols = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
    }
}

public class AkSkIdentityConfig : Tea.TeaModel {
    public var ak: String?

    public var generateMode: String?

    public var sk: String?

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
        if self.ak != nil {
            map["ak"] = self.ak!
        }
        if self.generateMode != nil {
            map["generateMode"] = self.generateMode!
        }
        if self.sk != nil {
            map["sk"] = self.sk!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ak"] as? String {
            self.ak = value
        }
        if let value = dict["generateMode"] as? String {
            self.generateMode = value
        }
        if let value = dict["sk"] as? String {
            self.sk = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ApiKeyIdentityConfig : Tea.TeaModel {
    public class ApikeySource : Tea.TeaModel {
        public var source: String?

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
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public class Credentials : Tea.TeaModel {
        public var apikey: String?

        public var generateMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apikey != nil {
                map["apikey"] = self.apikey!
            }
            if self.generateMode != nil {
                map["generateMode"] = self.generateMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apikey"] as? String {
                self.apikey = value
            }
            if let value = dict["generateMode"] as? String {
                self.generateMode = value
            }
        }
    }
    public var apikeySource: ApiKeyIdentityConfig.ApikeySource?

    public var credentials: [ApiKeyIdentityConfig.Credentials]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apikeySource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apikeySource != nil {
            map["apikeySource"] = self.apikeySource?.toMap()
        }
        if self.credentials != nil {
            var tmp : [Any] = []
            for k in self.credentials! {
                tmp.append(k.toMap())
            }
            map["credentials"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apikeySource"] as? [String: Any?] {
            var model = ApiKeyIdentityConfig.ApikeySource()
            model.fromMap(value)
            self.apikeySource = model
        }
        if let value = dict["credentials"] as? [Any?] {
            var tmp : [ApiKeyIdentityConfig.Credentials] = []
            for v in value {
                if v != nil {
                    var model = ApiKeyIdentityConfig.Credentials()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.credentials = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ApiRouteConflictInfo : Tea.TeaModel {
    public class Conflicts : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public class ConflictingMatch : Tea.TeaModel {
                public class OperationInfo : Tea.TeaModel {
                    public var name: String?

                    public var operationId: String?

                    public override init() {
                        super.init()
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
                        if self.operationId != nil {
                            map["operationId"] = self.operationId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["operationId"] as? String {
                            self.operationId = value
                        }
                    }
                }
                public var match: HttpRouteMatch?

                public var operationInfo: ApiRouteConflictInfo.Conflicts.Details.ConflictingMatch.OperationInfo?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                    try self.operationInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.operationInfo != nil {
                        map["operationInfo"] = self.operationInfo?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["match"] as? [String: Any?] {
                        var model = HttpRouteMatch()
                        model.fromMap(value)
                        self.match = model
                    }
                    if let value = dict["operationInfo"] as? [String: Any?] {
                        var model = ApiRouteConflictInfo.Conflicts.Details.ConflictingMatch.OperationInfo()
                        model.fromMap(value)
                        self.operationInfo = model
                    }
                }
            }
            public class DetectedMatch : Tea.TeaModel {
                public class OperationInfo : Tea.TeaModel {
                    public var name: String?

                    public var operationId: String?

                    public override init() {
                        super.init()
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
                        if self.operationId != nil {
                            map["operationId"] = self.operationId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["operationId"] as? String {
                            self.operationId = value
                        }
                    }
                }
                public var match: HttpRouteMatch?

                public var operationInfo: ApiRouteConflictInfo.Conflicts.Details.DetectedMatch.OperationInfo?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                    try self.operationInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.operationInfo != nil {
                        map["operationInfo"] = self.operationInfo?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["match"] as? [String: Any?] {
                        var model = HttpRouteMatch()
                        model.fromMap(value)
                        self.match = model
                    }
                    if let value = dict["operationInfo"] as? [String: Any?] {
                        var model = ApiRouteConflictInfo.Conflicts.Details.DetectedMatch.OperationInfo()
                        model.fromMap(value)
                        self.operationInfo = model
                    }
                }
            }
            public var conflictingMatch: ApiRouteConflictInfo.Conflicts.Details.ConflictingMatch?

            public var detectedMatch: ApiRouteConflictInfo.Conflicts.Details.DetectedMatch?

            public var level: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.conflictingMatch?.validate()
                try self.detectedMatch?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.conflictingMatch != nil {
                    map["conflictingMatch"] = self.conflictingMatch?.toMap()
                }
                if self.detectedMatch != nil {
                    map["detectedMatch"] = self.detectedMatch?.toMap()
                }
                if self.level != nil {
                    map["level"] = self.level!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["conflictingMatch"] as? [String: Any?] {
                    var model = ApiRouteConflictInfo.Conflicts.Details.ConflictingMatch()
                    model.fromMap(value)
                    self.conflictingMatch = model
                }
                if let value = dict["detectedMatch"] as? [String: Any?] {
                    var model = ApiRouteConflictInfo.Conflicts.Details.DetectedMatch()
                    model.fromMap(value)
                    self.detectedMatch = model
                }
                if let value = dict["level"] as? String {
                    self.level = value
                }
            }
        }
        public class EnvironmentInfo : Tea.TeaModel {
            public var environmentId: String?

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
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["environmentId"] as? String {
                    self.environmentId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class RouteInfo : Tea.TeaModel {
            public var name: String?

            public var routeId: String?

            public override init() {
                super.init()
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
                if self.routeId != nil {
                    map["routeId"] = self.routeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["routeId"] as? String {
                    self.routeId = value
                }
            }
        }
        public var details: [ApiRouteConflictInfo.Conflicts.Details]?

        public var environmentInfo: ApiRouteConflictInfo.Conflicts.EnvironmentInfo?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var routeInfo: ApiRouteConflictInfo.Conflicts.RouteInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environmentInfo?.validate()
            try self.routeInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.details != nil {
                var tmp : [Any] = []
                for k in self.details! {
                    tmp.append(k.toMap())
                }
                map["details"] = tmp
            }
            if self.environmentInfo != nil {
                map["environmentInfo"] = self.environmentInfo?.toMap()
            }
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["resourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.routeInfo != nil {
                map["routeInfo"] = self.routeInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["details"] as? [Any?] {
                var tmp : [ApiRouteConflictInfo.Conflicts.Details] = []
                for v in value {
                    if v != nil {
                        var model = ApiRouteConflictInfo.Conflicts.Details()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.details = tmp
            }
            if let value = dict["environmentInfo"] as? [String: Any?] {
                var model = ApiRouteConflictInfo.Conflicts.EnvironmentInfo()
                model.fromMap(value)
                self.environmentInfo = model
            }
            if let value = dict["resourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["resourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["routeInfo"] as? [String: Any?] {
                var model = ApiRouteConflictInfo.Conflicts.RouteInfo()
                model.fromMap(value)
                self.routeInfo = model
            }
        }
    }
    public class DomainInfo : Tea.TeaModel {
        public var domainId: String?

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
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainId"] as? String {
                self.domainId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var conflicts: [ApiRouteConflictInfo.Conflicts]?

    public var domainInfo: ApiRouteConflictInfo.DomainInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conflicts != nil {
            var tmp : [Any] = []
            for k in self.conflicts! {
                tmp.append(k.toMap())
            }
            map["conflicts"] = tmp
        }
        if self.domainInfo != nil {
            map["domainInfo"] = self.domainInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["conflicts"] as? [Any?] {
            var tmp : [ApiRouteConflictInfo.Conflicts] = []
            for v in value {
                if v != nil {
                    var model = ApiRouteConflictInfo.Conflicts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conflicts = tmp
        }
        if let value = dict["domainInfo"] as? [String: Any?] {
            var model = ApiRouteConflictInfo.DomainInfo()
            model.fromMap(value)
            self.domainInfo = model
        }
    }
}

public class Attachment : Tea.TeaModel {
    public var attachResourceIds: [String]?

    public var attachResourceType: String?

    public var environmentId: String?

    public var gatewayId: String?

    public var policyAttachmentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachResourceIds != nil {
            map["attachResourceIds"] = self.attachResourceIds!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.policyAttachmentId != nil {
            map["policyAttachmentId"] = self.policyAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceIds"] as? [String] {
            self.attachResourceIds = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["policyAttachmentId"] as? String {
            self.policyAttachmentId = value
        }
    }
}

public class AuthConfig : Tea.TeaModel {
    public var authMode: String?

    public var authType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMode != nil {
            map["authMode"] = self.authMode!
        }
        if self.authType != nil {
            map["authType"] = self.authType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authMode"] as? String {
            self.authMode = value
        }
        if let value = dict["authType"] as? String {
            self.authType = value
        }
    }
}

public class AuthorizationResourceInfo : Tea.TeaModel {
    public var environmentId: String?

    public var parentResourceId: String?

    public var resourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.parentResourceId != nil {
            map["parentResourceId"] = self.parentResourceId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["parentResourceId"] as? String {
            self.parentResourceId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
    }
}

public class Backend : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public var name: String?

        public var port: Int32?

        public var protocol_: String?

        public var serviceId: String?

        public var version: String?

        public var weight: Int32?

        public override init() {
            super.init()
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
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["port"] as? Int32 {
                self.port = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public var scene: String?

    public var services: [Backend.Services]?

    public override init() {
        super.init()
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
            map["scene"] = self.scene!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["services"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["services"] as? [Any?] {
            var tmp : [Backend.Services] = []
            for v in value {
                if v != nil {
                    var model = Backend.Services()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
    }
}

public class CheckServiceLinkedRoleResult : Tea.TeaModel {
    public var existed: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.existed != nil {
            map["existed"] = self.existed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["existed"] as? Bool {
            self.existed = value
        }
    }
}

public class ConsumerConfig : Tea.TeaModel {
    public var consumerId: String?

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
        if self.consumerId != nil {
            map["consumerId"] = self.consumerId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["consumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ConsumerInfo : Tea.TeaModel {
    public var consumerId: String?

    public var enable: Bool?

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
        if self.consumerId != nil {
            map["consumerId"] = self.consumerId!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["consumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class DashboardFilter : Tea.TeaModel {
    public var routeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.routeName != nil {
            map["routeName"] = self.routeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["routeName"] as? String {
            self.routeName = value
        }
    }
}

public class DomainInfo : Tea.TeaModel {
    public var certIdentifier: String?

    public var clientCACert: String?

    public var createFrom: String?

    public var createTimestamp: Int64?

    public var domainId: String?

    public var forceHttps: Bool?

    public var mTLSEnabled: Bool?

    public var name: String?

    public var protocol_: String?

    public var resourceGroupId: String?

    public var status: String?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
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
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.clientCACert != nil {
            map["clientCACert"] = self.clientCACert!
        }
        if self.createFrom != nil {
            map["createFrom"] = self.createFrom!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.forceHttps != nil {
            map["forceHttps"] = self.forceHttps!
        }
        if self.mTLSEnabled != nil {
            map["mTLSEnabled"] = self.mTLSEnabled!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["clientCACert"] as? String {
            self.clientCACert = value
        }
        if let value = dict["createFrom"] as? String {
            self.createFrom = value
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["domainId"] as? String {
            self.domainId = value
        }
        if let value = dict["forceHttps"] as? Bool {
            self.forceHttps = value
        }
        if let value = dict["mTLSEnabled"] as? Bool {
            self.mTLSEnabled = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
    }
}

public class EnvironmentInfo : Tea.TeaModel {
    public var alias: String?

    public var createTimestamp: Int64?

    public var default_: Bool?

    public var description_: String?

    public var environmentId: String?

    public var gatewayInfo: GatewayInfo?

    public var name: String?

    public var resourceGroupId: String?

    public var subDomainInfos: [SubDomainInfo]?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gatewayInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.default_ != nil {
            map["default"] = self.default_!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayInfo != nil {
            map["gatewayInfo"] = self.gatewayInfo?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.subDomainInfos != nil {
            var tmp : [Any] = []
            for k in self.subDomainInfos! {
                tmp.append(k.toMap())
            }
            map["subDomainInfos"] = tmp
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["default"] as? Bool {
            self.default_ = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayInfo"] as? [String: Any?] {
            var model = GatewayInfo()
            model.fromMap(value)
            self.gatewayInfo = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["subDomainInfos"] as? [Any?] {
            var tmp : [SubDomainInfo] = []
            for v in value {
                if v != nil {
                    var model = SubDomainInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subDomainInfos = tmp
        }
        if let value = dict["updateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
    }
}

public class GatewayInfo : Tea.TeaModel {
    public class VpcInfo : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var engineVersion: String?

    public var gatewayId: String?

    public var name: String?

    public var vpcInfo: GatewayInfo.VpcInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vpcInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.engineVersion != nil {
            map["engineVersion"] = self.engineVersion!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.vpcInfo != nil {
            map["vpcInfo"] = self.vpcInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["engineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["vpcInfo"] as? [String: Any?] {
            var model = GatewayInfo.VpcInfo()
            model.fromMap(value)
            self.vpcInfo = model
        }
    }
}

public class GatewayLogConfig : Tea.TeaModel {
    public class SlsConfig : Tea.TeaModel {
        public var enable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
        }
    }
    public var slsConfig: GatewayLogConfig.SlsConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.slsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.slsConfig != nil {
            map["slsConfig"] = self.slsConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["slsConfig"] as? [String: Any?] {
            var model = GatewayLogConfig.SlsConfig()
            model.fromMap(value)
            self.slsConfig = model
        }
    }
}

public class HttpApiApiInfo : Tea.TeaModel {
    public class Environments : Tea.TeaModel {
        public class GatewayInfo : Tea.TeaModel {
            public var gatewayId: String?

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
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["gatewayId"] as? String {
                    self.gatewayId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class ServiceConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var match: HttpApiBackendMatchConditions?

            public var name: String?

            public var port: String?

            public var protocol_: String?

            public var serviceId: String?

            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.serviceId != nil {
                    map["serviceId"] = self.serviceId!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["gatewayServiceId"] as? String {
                    self.gatewayServiceId = value
                }
                if let value = dict["match"] as? [String: Any?] {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(value)
                    self.match = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["port"] as? String {
                    self.port = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["serviceId"] as? String {
                    self.serviceId = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public class SubDomains : Tea.TeaModel {
            public var domainId: String?

            public var name: String?

            public var networkType: String?

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
                if self.domainId != nil {
                    map["domainId"] = self.domainId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.networkType != nil {
                    map["networkType"] = self.networkType!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["domainId"] as? String {
                    self.domainId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["networkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public var alias: String?

        public var backendScene: String?

        public var backendType: String?

        public var customDomains: [HttpApiDomainInfo]?

        public var deployStatus: String?

        public var environmentId: String?

        public var gatewayInfo: HttpApiApiInfo.Environments.GatewayInfo?

        public var name: String?

        public var serviceConfigs: [HttpApiApiInfo.Environments.ServiceConfigs]?

        public var subDomains: [HttpApiApiInfo.Environments.SubDomains]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gatewayInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["alias"] = self.alias!
            }
            if self.backendScene != nil {
                map["backendScene"] = self.backendScene!
            }
            if self.backendType != nil {
                map["backendType"] = self.backendType!
            }
            if self.customDomains != nil {
                var tmp : [Any] = []
                for k in self.customDomains! {
                    tmp.append(k.toMap())
                }
                map["customDomains"] = tmp
            }
            if self.deployStatus != nil {
                map["deployStatus"] = self.deployStatus!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.gatewayInfo != nil {
                map["gatewayInfo"] = self.gatewayInfo?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.serviceConfigs != nil {
                var tmp : [Any] = []
                for k in self.serviceConfigs! {
                    tmp.append(k.toMap())
                }
                map["serviceConfigs"] = tmp
            }
            if self.subDomains != nil {
                var tmp : [Any] = []
                for k in self.subDomains! {
                    tmp.append(k.toMap())
                }
                map["subDomains"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alias"] as? String {
                self.alias = value
            }
            if let value = dict["backendScene"] as? String {
                self.backendScene = value
            }
            if let value = dict["backendType"] as? String {
                self.backendType = value
            }
            if let value = dict["customDomains"] as? [Any?] {
                var tmp : [HttpApiDomainInfo] = []
                for v in value {
                    if v != nil {
                        var model = HttpApiDomainInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customDomains = tmp
            }
            if let value = dict["deployStatus"] as? String {
                self.deployStatus = value
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["gatewayInfo"] as? [String: Any?] {
                var model = HttpApiApiInfo.Environments.GatewayInfo()
                model.fromMap(value)
                self.gatewayInfo = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["serviceConfigs"] as? [Any?] {
                var tmp : [HttpApiApiInfo.Environments.ServiceConfigs] = []
                for v in value {
                    if v != nil {
                        var model = HttpApiApiInfo.Environments.ServiceConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.serviceConfigs = tmp
            }
            if let value = dict["subDomains"] as? [Any?] {
                var tmp : [HttpApiApiInfo.Environments.SubDomains] = []
                for v in value {
                    if v != nil {
                        var model = HttpApiApiInfo.Environments.SubDomains()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subDomains = tmp
            }
        }
    }
    public class IngressInfo : Tea.TeaModel {
        public class EnvironmentInfo : Tea.TeaModel {
            public var environmentId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["environmentId"] as? String {
                    self.environmentId = value
                }
            }
        }
        public class K8sClusterInfo : Tea.TeaModel {
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
                if self.clusterId != nil {
                    map["clusterId"] = self.clusterId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clusterId"] as? String {
                    self.clusterId = value
                }
            }
        }
        public var environmentInfo: HttpApiApiInfo.IngressInfo.EnvironmentInfo?

        public var ingressClass: String?

        public var k8sClusterInfo: HttpApiApiInfo.IngressInfo.K8sClusterInfo?

        public var overrideIngressIp: Bool?

        public var sourceId: String?

        public var watchNamespace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environmentInfo?.validate()
            try self.k8sClusterInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.environmentInfo != nil {
                map["environmentInfo"] = self.environmentInfo?.toMap()
            }
            if self.ingressClass != nil {
                map["ingressClass"] = self.ingressClass!
            }
            if self.k8sClusterInfo != nil {
                map["k8sClusterInfo"] = self.k8sClusterInfo?.toMap()
            }
            if self.overrideIngressIp != nil {
                map["overrideIngressIp"] = self.overrideIngressIp!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.watchNamespace != nil {
                map["watchNamespace"] = self.watchNamespace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["environmentInfo"] as? [String: Any?] {
                var model = HttpApiApiInfo.IngressInfo.EnvironmentInfo()
                model.fromMap(value)
                self.environmentInfo = model
            }
            if let value = dict["ingressClass"] as? String {
                self.ingressClass = value
            }
            if let value = dict["k8sClusterInfo"] as? [String: Any?] {
                var model = HttpApiApiInfo.IngressInfo.K8sClusterInfo()
                model.fromMap(value)
                self.k8sClusterInfo = model
            }
            if let value = dict["overrideIngressIp"] as? Bool {
                self.overrideIngressIp = value
            }
            if let value = dict["sourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["watchNamespace"] as? String {
                self.watchNamespace = value
            }
        }
    }
    public var aiProtocols: [String]?

    public var authConfig: AuthConfig?

    public var basePath: String?

    public var deployCntMap: [String: HttpApiApiInfoDeployCntMapValue]?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var enabelAuth: Bool?

    public var environments: [HttpApiApiInfo.Environments]?

    public var gatewayId: String?

    public var httpApiId: String?

    public var ingressInfo: HttpApiApiInfo.IngressInfo?

    public var name: String?

    public var protocols: [String]?

    public var resourceGroupId: String?

    public var type: String?

    public var versionInfo: HttpApiVersionInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.ingressInfo?.validate()
        try self.versionInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiProtocols != nil {
            map["aiProtocols"] = self.aiProtocols!
        }
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.basePath != nil {
            map["basePath"] = self.basePath!
        }
        if self.deployCntMap != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.deployCntMap! {
                tmp[k] = v.toMap()
            }
            map["deployCntMap"] = tmp
        }
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enabelAuth != nil {
            map["enabelAuth"] = self.enabelAuth!
        }
        if self.environments != nil {
            var tmp : [Any] = []
            for k in self.environments! {
                tmp.append(k.toMap())
            }
            map["environments"] = tmp
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.httpApiId != nil {
            map["httpApiId"] = self.httpApiId!
        }
        if self.ingressInfo != nil {
            map["ingressInfo"] = self.ingressInfo?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.versionInfo != nil {
            map["versionInfo"] = self.versionInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aiProtocols"] as? [String] {
            self.aiProtocols = value
        }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["basePath"] as? String {
            self.basePath = value
        }
        if let value = dict["deployCntMap"] as? [String: Any?] {
            var tmp : [String: HttpApiApiInfoDeployCntMapValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = HttpApiApiInfoDeployCntMapValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.deployCntMap = tmp
        }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enabelAuth"] as? Bool {
            self.enabelAuth = value
        }
        if let value = dict["environments"] as? [Any?] {
            var tmp : [HttpApiApiInfo.Environments] = []
            for v in value {
                if v != nil {
                    var model = HttpApiApiInfo.Environments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.environments = tmp
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["httpApiId"] as? String {
            self.httpApiId = value
        }
        if let value = dict["ingressInfo"] as? [String: Any?] {
            var model = HttpApiApiInfo.IngressInfo()
            model.fromMap(value)
            self.ingressInfo = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protocols"] as? [String] {
            self.protocols = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["versionInfo"] as? [String: Any?] {
            var model = HttpApiVersionInfo()
            model.fromMap(value)
            self.versionInfo = model
        }
    }
}

public class HttpApiBackendMatchCondition : Tea.TeaModel {
    public var key: String?

    public var operator_: String?

    public var type: String?

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
            map["key"] = self.key!
        }
        if self.operator_ != nil {
            map["operator"] = self.operator_!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class HttpApiBackendMatchConditions : Tea.TeaModel {
    public var conditions: [HttpApiBackendMatchCondition]?

    public var default_: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["conditions"] = tmp
        }
        if self.default_ != nil {
            map["default"] = self.default_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["conditions"] as? [Any?] {
            var tmp : [HttpApiBackendMatchCondition] = []
            for v in value {
                if v != nil {
                    var model = HttpApiBackendMatchCondition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conditions = tmp
        }
        if let value = dict["default"] as? Bool {
            self.default_ = value
        }
    }
}

public class HttpApiDeployConfig : Tea.TeaModel {
    public class CustomDomainInfos : Tea.TeaModel {
        public var domainId: String?

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
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainId"] as? String {
                self.domainId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public class PolicyConfigs : Tea.TeaModel {
        public class AiFallbackConfig : Tea.TeaModel {
            public class ServiceConfigs : Tea.TeaModel {
                public var serviceId: String?

                public var targetModelName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serviceId != nil {
                        map["serviceId"] = self.serviceId!
                    }
                    if self.targetModelName != nil {
                        map["targetModelName"] = self.targetModelName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["serviceId"] as? String {
                        self.serviceId = value
                    }
                    if let value = dict["targetModelName"] as? String {
                        self.targetModelName = value
                    }
                }
            }
            public var serviceConfigs: [HttpApiDeployConfig.PolicyConfigs.AiFallbackConfig.ServiceConfigs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.serviceConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.serviceConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["serviceConfigs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["serviceConfigs"] as? [Any?] {
                    var tmp : [HttpApiDeployConfig.PolicyConfigs.AiFallbackConfig.ServiceConfigs] = []
                    for v in value {
                        if v != nil {
                            var model = HttpApiDeployConfig.PolicyConfigs.AiFallbackConfig.ServiceConfigs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serviceConfigs = tmp
                }
            }
        }
        public var aiFallbackConfig: HttpApiDeployConfig.PolicyConfigs.AiFallbackConfig?

        public var enable: Bool?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aiFallbackConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aiFallbackConfig != nil {
                map["aiFallbackConfig"] = self.aiFallbackConfig?.toMap()
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aiFallbackConfig"] as? [String: Any?] {
                var model = HttpApiDeployConfig.PolicyConfigs.AiFallbackConfig()
                model.fromMap(value)
                self.aiFallbackConfig = model
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class ServiceConfigs : Tea.TeaModel {
        public var modelName: String?

        public var modelNamePattern: String?

        public var serviceId: String?

        public var weight: Int64?

        public override init() {
            super.init()
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
                map["modelName"] = self.modelName!
            }
            if self.modelNamePattern != nil {
                map["modelNamePattern"] = self.modelNamePattern!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["modelNamePattern"] as? String {
                self.modelNamePattern = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["weight"] as? Int64 {
                self.weight = value
            }
        }
    }
    public class SubDomains : Tea.TeaModel {
        public var domainId: String?

        public var name: String?

        public var networkType: String?

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
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkType != nil {
                map["networkType"] = self.networkType!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainId"] as? String {
                self.domainId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["networkType"] as? String {
                self.networkType = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var autoDeploy: Bool?

    public var backendScene: String?

    public var customDomainIds: [String]?

    public var customDomainInfos: [HttpApiDeployConfig.CustomDomainInfos]?

    public var environmentId: String?

    public var gatewayId: String?

    public var gatewayInfo: GatewayInfo?

    public var gatewayType: String?

    public var mock: HttpApiMockContract?

    public var policyConfigs: [HttpApiDeployConfig.PolicyConfigs]?

    public var routeBackend: Backend?

    public var serviceConfigs: [HttpApiDeployConfig.ServiceConfigs]?

    public var subDomains: [HttpApiDeployConfig.SubDomains]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gatewayInfo?.validate()
        try self.mock?.validate()
        try self.routeBackend?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDeploy != nil {
            map["autoDeploy"] = self.autoDeploy!
        }
        if self.backendScene != nil {
            map["backendScene"] = self.backendScene!
        }
        if self.customDomainIds != nil {
            map["customDomainIds"] = self.customDomainIds!
        }
        if self.customDomainInfos != nil {
            var tmp : [Any] = []
            for k in self.customDomainInfos! {
                tmp.append(k.toMap())
            }
            map["customDomainInfos"] = tmp
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.gatewayInfo != nil {
            map["gatewayInfo"] = self.gatewayInfo?.toMap()
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.mock != nil {
            map["mock"] = self.mock?.toMap()
        }
        if self.policyConfigs != nil {
            var tmp : [Any] = []
            for k in self.policyConfigs! {
                tmp.append(k.toMap())
            }
            map["policyConfigs"] = tmp
        }
        if self.routeBackend != nil {
            map["routeBackend"] = self.routeBackend?.toMap()
        }
        if self.serviceConfigs != nil {
            var tmp : [Any] = []
            for k in self.serviceConfigs! {
                tmp.append(k.toMap())
            }
            map["serviceConfigs"] = tmp
        }
        if self.subDomains != nil {
            var tmp : [Any] = []
            for k in self.subDomains! {
                tmp.append(k.toMap())
            }
            map["subDomains"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoDeploy"] as? Bool {
            self.autoDeploy = value
        }
        if let value = dict["backendScene"] as? String {
            self.backendScene = value
        }
        if let value = dict["customDomainIds"] as? [String] {
            self.customDomainIds = value
        }
        if let value = dict["customDomainInfos"] as? [Any?] {
            var tmp : [HttpApiDeployConfig.CustomDomainInfos] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig.CustomDomainInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customDomainInfos = tmp
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["gatewayInfo"] as? [String: Any?] {
            var model = GatewayInfo()
            model.fromMap(value)
            self.gatewayInfo = model
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["mock"] as? [String: Any?] {
            var model = HttpApiMockContract()
            model.fromMap(value)
            self.mock = model
        }
        if let value = dict["policyConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig.PolicyConfigs] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig.PolicyConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyConfigs = tmp
        }
        if let value = dict["routeBackend"] as? [String: Any?] {
            var model = Backend()
            model.fromMap(value)
            self.routeBackend = model
        }
        if let value = dict["serviceConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig.ServiceConfigs] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig.ServiceConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceConfigs = tmp
        }
        if let value = dict["subDomains"] as? [Any?] {
            var tmp : [HttpApiDeployConfig.SubDomains] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig.SubDomains()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subDomains = tmp
        }
    }
}

public class HttpApiDomainInfo : Tea.TeaModel {
    public var domainId: String?

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
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domainId"] as? String {
            self.domainId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
    }
}

public class HttpApiInfoByName : Tea.TeaModel {
    public var gatewayId: String?

    public var name: String?

    public var type: String?

    public var versionEnabled: Bool?

    public var versionedHttpApis: [HttpApiApiInfo]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.versionEnabled != nil {
            map["versionEnabled"] = self.versionEnabled!
        }
        if self.versionedHttpApis != nil {
            var tmp : [Any] = []
            for k in self.versionedHttpApis! {
                tmp.append(k.toMap())
            }
            map["versionedHttpApis"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["versionEnabled"] as? Bool {
            self.versionEnabled = value
        }
        if let value = dict["versionedHttpApis"] as? [Any?] {
            var tmp : [HttpApiApiInfo] = []
            for v in value {
                if v != nil {
                    var model = HttpApiApiInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.versionedHttpApis = tmp
        }
    }
}

public class HttpApiMockContract : Tea.TeaModel {
    public var enable: Bool?

    public var responseCode: Int32?

    public var responseContent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.responseCode != nil {
            map["responseCode"] = self.responseCode!
        }
        if self.responseContent != nil {
            map["responseContent"] = self.responseContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["responseCode"] as? Int32 {
            self.responseCode = value
        }
        if let value = dict["responseContent"] as? String {
            self.responseContent = value
        }
    }
}

public class HttpApiOperation : Tea.TeaModel {
    public var authConfig: AuthConfig?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var enableAuth: Bool?

    public var method: String?

    public var mock: HttpApiMockContract?

    public var name: String?

    public var path: String?

    public var request: HttpApiRequestContract?

    public var response: HttpApiResponseContract?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.mock?.validate()
        try self.request?.validate()
        try self.response?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enableAuth != nil {
            map["enableAuth"] = self.enableAuth!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.mock != nil {
            map["mock"] = self.mock?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.request != nil {
            map["request"] = self.request?.toMap()
        }
        if self.response != nil {
            map["response"] = self.response?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enableAuth"] as? Bool {
            self.enableAuth = value
        }
        if let value = dict["method"] as? String {
            self.method = value
        }
        if let value = dict["mock"] as? [String: Any?] {
            var model = HttpApiMockContract()
            model.fromMap(value)
            self.mock = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["request"] as? [String: Any?] {
            var model = HttpApiRequestContract()
            model.fromMap(value)
            self.request = model
        }
        if let value = dict["response"] as? [String: Any?] {
            var model = HttpApiResponseContract()
            model.fromMap(value)
            self.response = model
        }
    }
}

public class HttpApiOperationInfo : Tea.TeaModel {
    public var authConfig: AuthConfig?

    public var createTimestamp: Int64?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var enableAuth: Bool?

    public var method: String?

    public var mock: HttpApiMockContract?

    public var name: String?

    public var operationId: String?

    public var path: String?

    public var request: HttpApiRequestContract?

    public var response: HttpApiResponseContract?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.mock?.validate()
        try self.request?.validate()
        try self.response?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enableAuth != nil {
            map["enableAuth"] = self.enableAuth!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.mock != nil {
            map["mock"] = self.mock?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operationId != nil {
            map["operationId"] = self.operationId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.request != nil {
            map["request"] = self.request?.toMap()
        }
        if self.response != nil {
            map["response"] = self.response?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enableAuth"] as? Bool {
            self.enableAuth = value
        }
        if let value = dict["method"] as? String {
            self.method = value
        }
        if let value = dict["mock"] as? [String: Any?] {
            var model = HttpApiMockContract()
            model.fromMap(value)
            self.mock = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operationId"] as? String {
            self.operationId = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["request"] as? [String: Any?] {
            var model = HttpApiRequestContract()
            model.fromMap(value)
            self.request = model
        }
        if let value = dict["response"] as? [String: Any?] {
            var model = HttpApiResponseContract()
            model.fromMap(value)
            self.response = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class HttpApiParameter : Tea.TeaModel {
    public var defaultValue: String?

    public var description_: String?

    public var exampleValue: String?

    public var name: String?

    public var required_: Bool?

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
        if self.defaultValue != nil {
            map["defaultValue"] = self.defaultValue!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.exampleValue != nil {
            map["exampleValue"] = self.exampleValue!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.required_ != nil {
            map["required"] = self.required_!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["defaultValue"] as? String {
            self.defaultValue = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["exampleValue"] as? String {
            self.exampleValue = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["required"] as? Bool {
            self.required_ = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class HttpApiPublishRevisionInfo : Tea.TeaModel {
    public class CloudProductConfig : Tea.TeaModel {
        public class ContainerServiceConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var match: HttpApiBackendMatchConditions?

            public var name: String?

            public var namespace: String?

            public var port: Int32?

            public var protocol_: String?

            public var weight: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["gatewayServiceId"] as? String {
                    self.gatewayServiceId = value
                }
                if let value = dict["match"] as? [String: Any?] {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(value)
                    self.match = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["weight"] as? String {
                    self.weight = value
                }
            }
        }
        public class FunctionConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var match: HttpApiBackendMatchConditions?

            public var name: String?

            public var qualifier: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.qualifier != nil {
                    map["qualifier"] = self.qualifier!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["gatewayServiceId"] as? String {
                    self.gatewayServiceId = value
                }
                if let value = dict["match"] as? [String: Any?] {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(value)
                    self.match = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["qualifier"] as? String {
                    self.qualifier = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public class MseNacosConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var groupName: String?

            public var match: HttpApiBackendMatchConditions?

            public var name: String?

            public var namespace: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["gatewayServiceId"] as? String {
                    self.gatewayServiceId = value
                }
                if let value = dict["groupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["match"] as? [String: Any?] {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(value)
                    self.match = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var cloudProductType: String?

        public var containerServiceConfigs: [HttpApiPublishRevisionInfo.CloudProductConfig.ContainerServiceConfigs]?

        public var functionConfigs: [HttpApiPublishRevisionInfo.CloudProductConfig.FunctionConfigs]?

        public var mseNacosConfigs: [HttpApiPublishRevisionInfo.CloudProductConfig.MseNacosConfigs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cloudProductType != nil {
                map["cloudProductType"] = self.cloudProductType!
            }
            if self.containerServiceConfigs != nil {
                var tmp : [Any] = []
                for k in self.containerServiceConfigs! {
                    tmp.append(k.toMap())
                }
                map["containerServiceConfigs"] = tmp
            }
            if self.functionConfigs != nil {
                var tmp : [Any] = []
                for k in self.functionConfigs! {
                    tmp.append(k.toMap())
                }
                map["functionConfigs"] = tmp
            }
            if self.mseNacosConfigs != nil {
                var tmp : [Any] = []
                for k in self.mseNacosConfigs! {
                    tmp.append(k.toMap())
                }
                map["mseNacosConfigs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cloudProductType"] as? String {
                self.cloudProductType = value
            }
            if let value = dict["containerServiceConfigs"] as? [Any?] {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.ContainerServiceConfigs] = []
                for v in value {
                    if v != nil {
                        var model = HttpApiPublishRevisionInfo.CloudProductConfig.ContainerServiceConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.containerServiceConfigs = tmp
            }
            if let value = dict["functionConfigs"] as? [Any?] {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.FunctionConfigs] = []
                for v in value {
                    if v != nil {
                        var model = HttpApiPublishRevisionInfo.CloudProductConfig.FunctionConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.functionConfigs = tmp
            }
            if let value = dict["mseNacosConfigs"] as? [Any?] {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.MseNacosConfigs] = []
                for v in value {
                    if v != nil {
                        var model = HttpApiPublishRevisionInfo.CloudProductConfig.MseNacosConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mseNacosConfigs = tmp
            }
        }
    }
    public class DnsConfigs : Tea.TeaModel {
        public var dnsList: [String]?

        public var match: HttpApiBackendMatchConditions?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.match?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dnsList != nil {
                map["dnsList"] = self.dnsList!
            }
            if self.match != nil {
                map["match"] = self.match?.toMap()
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dnsList"] as? [String] {
                self.dnsList = value
            }
            if let value = dict["match"] as? [String: Any?] {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(value)
                self.match = model
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public class EnvironmentInfo : Tea.TeaModel {
        public class GatewayInfo : Tea.TeaModel {
            public var gatewayId: String?

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
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["gatewayId"] as? String {
                    self.gatewayId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public var alias: String?

        public var environmentId: String?

        public var gatewayInfo: HttpApiPublishRevisionInfo.EnvironmentInfo.GatewayInfo?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gatewayInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["alias"] = self.alias!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.gatewayInfo != nil {
                map["gatewayInfo"] = self.gatewayInfo?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alias"] as? String {
                self.alias = value
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["gatewayInfo"] as? [String: Any?] {
                var model = HttpApiPublishRevisionInfo.EnvironmentInfo.GatewayInfo()
                model.fromMap(value)
                self.gatewayInfo = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public class ServiceConfigs : Tea.TeaModel {
        public var gatewayServiceId: String?

        public var match: HttpApiBackendMatchConditions?

        public var port: Int32?

        public var protocol_: String?

        public var version: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.match?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayServiceId != nil {
                map["gatewayServiceId"] = self.gatewayServiceId!
            }
            if self.match != nil {
                map["match"] = self.match?.toMap()
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gatewayServiceId"] as? String {
                self.gatewayServiceId = value
            }
            if let value = dict["match"] as? [String: Any?] {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(value)
                self.match = model
            }
            if let value = dict["port"] as? Int32 {
                self.port = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public class VipConfigs : Tea.TeaModel {
        public var endpoints: [String]?

        public var match: HttpApiBackendMatchConditions?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.match?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoints != nil {
                map["endpoints"] = self.endpoints!
            }
            if self.match != nil {
                map["match"] = self.match?.toMap()
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["endpoints"] as? [String] {
                self.endpoints = value
            }
            if let value = dict["match"] as? [String: Any?] {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(value)
                self.match = model
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public var backendScene: String?

    public var backendType: String?

    public var cloudProductConfig: HttpApiPublishRevisionInfo.CloudProductConfig?

    public var createTimestamp: Int64?

    public var customDomains: [HttpApiDomainInfo]?

    public var dnsConfigs: [HttpApiPublishRevisionInfo.DnsConfigs]?

    public var environmentInfo: HttpApiPublishRevisionInfo.EnvironmentInfo?

    public var isCurrentVersion: Bool?

    public var operations: [HttpApiOperationInfo]?

    public var revisionId: String?

    public var serviceConfigs: [HttpApiPublishRevisionInfo.ServiceConfigs]?

    public var subDomains: [HttpApiDomainInfo]?

    public var vipConfigs: [HttpApiPublishRevisionInfo.VipConfigs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cloudProductConfig?.validate()
        try self.environmentInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendScene != nil {
            map["backendScene"] = self.backendScene!
        }
        if self.backendType != nil {
            map["backendType"] = self.backendType!
        }
        if self.cloudProductConfig != nil {
            map["cloudProductConfig"] = self.cloudProductConfig?.toMap()
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.customDomains != nil {
            var tmp : [Any] = []
            for k in self.customDomains! {
                tmp.append(k.toMap())
            }
            map["customDomains"] = tmp
        }
        if self.dnsConfigs != nil {
            var tmp : [Any] = []
            for k in self.dnsConfigs! {
                tmp.append(k.toMap())
            }
            map["dnsConfigs"] = tmp
        }
        if self.environmentInfo != nil {
            map["environmentInfo"] = self.environmentInfo?.toMap()
        }
        if self.isCurrentVersion != nil {
            map["isCurrentVersion"] = self.isCurrentVersion!
        }
        if self.operations != nil {
            var tmp : [Any] = []
            for k in self.operations! {
                tmp.append(k.toMap())
            }
            map["operations"] = tmp
        }
        if self.revisionId != nil {
            map["revisionId"] = self.revisionId!
        }
        if self.serviceConfigs != nil {
            var tmp : [Any] = []
            for k in self.serviceConfigs! {
                tmp.append(k.toMap())
            }
            map["serviceConfigs"] = tmp
        }
        if self.subDomains != nil {
            var tmp : [Any] = []
            for k in self.subDomains! {
                tmp.append(k.toMap())
            }
            map["subDomains"] = tmp
        }
        if self.vipConfigs != nil {
            var tmp : [Any] = []
            for k in self.vipConfigs! {
                tmp.append(k.toMap())
            }
            map["vipConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backendScene"] as? String {
            self.backendScene = value
        }
        if let value = dict["backendType"] as? String {
            self.backendType = value
        }
        if let value = dict["cloudProductConfig"] as? [String: Any?] {
            var model = HttpApiPublishRevisionInfo.CloudProductConfig()
            model.fromMap(value)
            self.cloudProductConfig = model
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["customDomains"] as? [Any?] {
            var tmp : [HttpApiDomainInfo] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDomainInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customDomains = tmp
        }
        if let value = dict["dnsConfigs"] as? [Any?] {
            var tmp : [HttpApiPublishRevisionInfo.DnsConfigs] = []
            for v in value {
                if v != nil {
                    var model = HttpApiPublishRevisionInfo.DnsConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dnsConfigs = tmp
        }
        if let value = dict["environmentInfo"] as? [String: Any?] {
            var model = HttpApiPublishRevisionInfo.EnvironmentInfo()
            model.fromMap(value)
            self.environmentInfo = model
        }
        if let value = dict["isCurrentVersion"] as? Bool {
            self.isCurrentVersion = value
        }
        if let value = dict["operations"] as? [Any?] {
            var tmp : [HttpApiOperationInfo] = []
            for v in value {
                if v != nil {
                    var model = HttpApiOperationInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.operations = tmp
        }
        if let value = dict["revisionId"] as? String {
            self.revisionId = value
        }
        if let value = dict["serviceConfigs"] as? [Any?] {
            var tmp : [HttpApiPublishRevisionInfo.ServiceConfigs] = []
            for v in value {
                if v != nil {
                    var model = HttpApiPublishRevisionInfo.ServiceConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceConfigs = tmp
        }
        if let value = dict["subDomains"] as? [Any?] {
            var tmp : [HttpApiDomainInfo] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDomainInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subDomains = tmp
        }
        if let value = dict["vipConfigs"] as? [Any?] {
            var tmp : [HttpApiPublishRevisionInfo.VipConfigs] = []
            for v in value {
                if v != nil {
                    var model = HttpApiPublishRevisionInfo.VipConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vipConfigs = tmp
        }
    }
}

public class HttpApiRequestContract : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var contentType: String?

        public var description_: String?

        public var example: String?

        public var jsonSchema: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.example != nil {
                map["example"] = self.example!
            }
            if self.jsonSchema != nil {
                map["jsonSchema"] = self.jsonSchema!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contentType"] as? String {
                self.contentType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["example"] as? String {
                self.example = value
            }
            if let value = dict["jsonSchema"] as? String {
                self.jsonSchema = value
            }
        }
    }
    public var body: HttpApiRequestContract.Body?

    public var headerParameters: [HttpApiParameter]?

    public var pathParameters: [HttpApiParameter]?

    public var queryParameters: [HttpApiParameter]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.headerParameters != nil {
            var tmp : [Any] = []
            for k in self.headerParameters! {
                tmp.append(k.toMap())
            }
            map["headerParameters"] = tmp
        }
        if self.pathParameters != nil {
            var tmp : [Any] = []
            for k in self.pathParameters! {
                tmp.append(k.toMap())
            }
            map["pathParameters"] = tmp
        }
        if self.queryParameters != nil {
            var tmp : [Any] = []
            for k in self.queryParameters! {
                tmp.append(k.toMap())
            }
            map["queryParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = HttpApiRequestContract.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["headerParameters"] as? [Any?] {
            var tmp : [HttpApiParameter] = []
            for v in value {
                if v != nil {
                    var model = HttpApiParameter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.headerParameters = tmp
        }
        if let value = dict["pathParameters"] as? [Any?] {
            var tmp : [HttpApiParameter] = []
            for v in value {
                if v != nil {
                    var model = HttpApiParameter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pathParameters = tmp
        }
        if let value = dict["queryParameters"] as? [Any?] {
            var tmp : [HttpApiParameter] = []
            for v in value {
                if v != nil {
                    var model = HttpApiParameter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryParameters = tmp
        }
    }
}

public class HttpApiResponseContract : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var code: Int32?

        public var description_: String?

        public var example: String?

        public var jsonSchema: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.example != nil {
                map["example"] = self.example!
            }
            if self.jsonSchema != nil {
                map["jsonSchema"] = self.jsonSchema!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? Int32 {
                self.code = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["example"] as? String {
                self.example = value
            }
            if let value = dict["jsonSchema"] as? String {
                self.jsonSchema = value
            }
        }
    }
    public var contentType: String?

    public var items: [HttpApiResponseContract.Items]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [HttpApiResponseContract.Items] = []
            for v in value {
                if v != nil {
                    var model = HttpApiResponseContract.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
    }
}

public class HttpApiVersionConfig : Tea.TeaModel {
    public var enable: Bool?

    public var headerName: String?

    public var queryName: String?

    public var scheme: String?

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
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.headerName != nil {
            map["headerName"] = self.headerName!
        }
        if self.queryName != nil {
            map["queryName"] = self.queryName!
        }
        if self.scheme != nil {
            map["scheme"] = self.scheme!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["headerName"] as? String {
            self.headerName = value
        }
        if let value = dict["queryName"] as? String {
            self.queryName = value
        }
        if let value = dict["scheme"] as? String {
            self.scheme = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class HttpApiVersionInfo : Tea.TeaModel {
    public var enable: Bool?

    public var headerName: String?

    public var queryName: String?

    public var scheme: String?

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
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.headerName != nil {
            map["headerName"] = self.headerName!
        }
        if self.queryName != nil {
            map["queryName"] = self.queryName!
        }
        if self.scheme != nil {
            map["scheme"] = self.scheme!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["headerName"] as? String {
            self.headerName = value
        }
        if let value = dict["queryName"] as? String {
            self.queryName = value
        }
        if let value = dict["scheme"] as? String {
            self.scheme = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class HttpDubboTranscoder : Tea.TeaModel {
    public class MothedMapList : Tea.TeaModel {
        public class ParamMapsList : Tea.TeaModel {
            public var extractKey: String?

            public var extractKeySpec: String?

            public var mappingType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extractKey != nil {
                    map["extractKey"] = self.extractKey!
                }
                if self.extractKeySpec != nil {
                    map["extractKeySpec"] = self.extractKeySpec!
                }
                if self.mappingType != nil {
                    map["mappingType"] = self.mappingType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["extractKey"] as? String {
                    self.extractKey = value
                }
                if let value = dict["extractKeySpec"] as? String {
                    self.extractKeySpec = value
                }
                if let value = dict["mappingType"] as? String {
                    self.mappingType = value
                }
            }
        }
        public var dubboMothedName: String?

        public var httpMothed: String?

        public var mothedpath: String?

        public var paramMapsList: [HttpDubboTranscoder.MothedMapList.ParamMapsList]?

        public var passThroughAllHeaders: String?

        public var passThroughList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dubboMothedName != nil {
                map["dubboMothedName"] = self.dubboMothedName!
            }
            if self.httpMothed != nil {
                map["httpMothed"] = self.httpMothed!
            }
            if self.mothedpath != nil {
                map["mothedpath"] = self.mothedpath!
            }
            if self.paramMapsList != nil {
                var tmp : [Any] = []
                for k in self.paramMapsList! {
                    tmp.append(k.toMap())
                }
                map["paramMapsList"] = tmp
            }
            if self.passThroughAllHeaders != nil {
                map["passThroughAllHeaders"] = self.passThroughAllHeaders!
            }
            if self.passThroughList != nil {
                map["passThroughList"] = self.passThroughList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dubboMothedName"] as? String {
                self.dubboMothedName = value
            }
            if let value = dict["httpMothed"] as? String {
                self.httpMothed = value
            }
            if let value = dict["mothedpath"] as? String {
                self.mothedpath = value
            }
            if let value = dict["paramMapsList"] as? [Any?] {
                var tmp : [HttpDubboTranscoder.MothedMapList.ParamMapsList] = []
                for v in value {
                    if v != nil {
                        var model = HttpDubboTranscoder.MothedMapList.ParamMapsList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.paramMapsList = tmp
            }
            if let value = dict["passThroughAllHeaders"] as? String {
                self.passThroughAllHeaders = value
            }
            if let value = dict["passThroughList"] as? [String] {
                self.passThroughList = value
            }
        }
    }
    public var dubboServiceGroup: String?

    public var dubboServiceName: String?

    public var dubboServiceVersion: String?

    public var mothedMapList: [HttpDubboTranscoder.MothedMapList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dubboServiceGroup != nil {
            map["dubboServiceGroup"] = self.dubboServiceGroup!
        }
        if self.dubboServiceName != nil {
            map["dubboServiceName"] = self.dubboServiceName!
        }
        if self.dubboServiceVersion != nil {
            map["dubboServiceVersion"] = self.dubboServiceVersion!
        }
        if self.mothedMapList != nil {
            var tmp : [Any] = []
            for k in self.mothedMapList! {
                tmp.append(k.toMap())
            }
            map["mothedMapList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dubboServiceGroup"] as? String {
            self.dubboServiceGroup = value
        }
        if let value = dict["dubboServiceName"] as? String {
            self.dubboServiceName = value
        }
        if let value = dict["dubboServiceVersion"] as? String {
            self.dubboServiceVersion = value
        }
        if let value = dict["mothedMapList"] as? [Any?] {
            var tmp : [HttpDubboTranscoder.MothedMapList] = []
            for v in value {
                if v != nil {
                    var model = HttpDubboTranscoder.MothedMapList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mothedMapList = tmp
        }
    }
}

public class HttpRoute : Tea.TeaModel {
    public class DomainInfos : Tea.TeaModel {
        public var domainId: String?

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
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainId"] as? String {
                self.domainId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public class EnvironmentInfo : Tea.TeaModel {
        public class GatewayInfo : Tea.TeaModel {
            public var gatewayId: String?

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
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["gatewayId"] as? String {
                    self.gatewayId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class SubDomains : Tea.TeaModel {
            public var domainId: String?

            public var name: String?

            public var networkType: String?

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
                if self.domainId != nil {
                    map["domainId"] = self.domainId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.networkType != nil {
                    map["networkType"] = self.networkType!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["domainId"] as? String {
                    self.domainId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["networkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public var alias: String?

        public var environmentId: String?

        public var gatewayInfo: HttpRoute.EnvironmentInfo.GatewayInfo?

        public var name: String?

        public var subDomains: [HttpRoute.EnvironmentInfo.SubDomains]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gatewayInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["alias"] = self.alias!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.gatewayInfo != nil {
                map["gatewayInfo"] = self.gatewayInfo?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.subDomains != nil {
                var tmp : [Any] = []
                for k in self.subDomains! {
                    tmp.append(k.toMap())
                }
                map["subDomains"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alias"] as? String {
                self.alias = value
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["gatewayInfo"] as? [String: Any?] {
                var model = HttpRoute.EnvironmentInfo.GatewayInfo()
                model.fromMap(value)
                self.gatewayInfo = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["subDomains"] as? [Any?] {
                var tmp : [HttpRoute.EnvironmentInfo.SubDomains] = []
                for v in value {
                    if v != nil {
                        var model = HttpRoute.EnvironmentInfo.SubDomains()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subDomains = tmp
            }
        }
    }
    public class McpServerInfo : Tea.TeaModel {
        public class McpRouteConfig : Tea.TeaModel {
            public var exposedUriPath: String?

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
                if self.exposedUriPath != nil {
                    map["exposedUriPath"] = self.exposedUriPath!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["exposedUriPath"] as? String {
                    self.exposedUriPath = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public var createFromType: String?

        public var importInstanceId: String?

        public var importMcpServerId: String?

        public var importNamespace: String?

        public var mcpRouteConfig: HttpRoute.McpServerInfo.McpRouteConfig?

        public var mcpServerConfig: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mcpRouteConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createFromType != nil {
                map["createFromType"] = self.createFromType!
            }
            if self.importInstanceId != nil {
                map["importInstanceId"] = self.importInstanceId!
            }
            if self.importMcpServerId != nil {
                map["importMcpServerId"] = self.importMcpServerId!
            }
            if self.importNamespace != nil {
                map["importNamespace"] = self.importNamespace!
            }
            if self.mcpRouteConfig != nil {
                map["mcpRouteConfig"] = self.mcpRouteConfig?.toMap()
            }
            if self.mcpServerConfig != nil {
                map["mcpServerConfig"] = self.mcpServerConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createFromType"] as? String {
                self.createFromType = value
            }
            if let value = dict["importInstanceId"] as? String {
                self.importInstanceId = value
            }
            if let value = dict["importMcpServerId"] as? String {
                self.importMcpServerId = value
            }
            if let value = dict["importNamespace"] as? String {
                self.importNamespace = value
            }
            if let value = dict["mcpRouteConfig"] as? [String: Any?] {
                var model = HttpRoute.McpServerInfo.McpRouteConfig()
                model.fromMap(value)
                self.mcpRouteConfig = model
            }
            if let value = dict["mcpServerConfig"] as? String {
                self.mcpServerConfig = value
            }
        }
    }
    public var backend: Backend?

    public var createTimestamp: Int64?

    public var deployStatus: String?

    public var description_: String?

    public var domainInfos: [HttpRoute.DomainInfos]?

    public var environmentInfo: HttpRoute.EnvironmentInfo?

    public var gatewayStatus: [String: String]?

    public var match: HttpRouteMatch?

    public var mcpServerInfo: HttpRoute.McpServerInfo?

    public var name: String?

    public var routeId: String?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backend?.validate()
        try self.environmentInfo?.validate()
        try self.match?.validate()
        try self.mcpServerInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backend != nil {
            map["backend"] = self.backend?.toMap()
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.deployStatus != nil {
            map["deployStatus"] = self.deployStatus!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainInfos != nil {
            var tmp : [Any] = []
            for k in self.domainInfos! {
                tmp.append(k.toMap())
            }
            map["domainInfos"] = tmp
        }
        if self.environmentInfo != nil {
            map["environmentInfo"] = self.environmentInfo?.toMap()
        }
        if self.gatewayStatus != nil {
            map["gatewayStatus"] = self.gatewayStatus!
        }
        if self.match != nil {
            map["match"] = self.match?.toMap()
        }
        if self.mcpServerInfo != nil {
            map["mcpServerInfo"] = self.mcpServerInfo?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.routeId != nil {
            map["routeId"] = self.routeId!
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backend"] as? [String: Any?] {
            var model = Backend()
            model.fromMap(value)
            self.backend = model
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["deployStatus"] as? String {
            self.deployStatus = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainInfos"] as? [Any?] {
            var tmp : [HttpRoute.DomainInfos] = []
            for v in value {
                if v != nil {
                    var model = HttpRoute.DomainInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainInfos = tmp
        }
        if let value = dict["environmentInfo"] as? [String: Any?] {
            var model = HttpRoute.EnvironmentInfo()
            model.fromMap(value)
            self.environmentInfo = model
        }
        if let value = dict["gatewayStatus"] as? [String: String] {
            self.gatewayStatus = value
        }
        if let value = dict["match"] as? [String: Any?] {
            var model = HttpRouteMatch()
            model.fromMap(value)
            self.match = model
        }
        if let value = dict["mcpServerInfo"] as? [String: Any?] {
            var model = HttpRoute.McpServerInfo()
            model.fromMap(value)
            self.mcpServerInfo = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["routeId"] as? String {
            self.routeId = value
        }
        if let value = dict["updateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
    }
}

public class HttpRouteMatch : Tea.TeaModel {
    public class Headers : Tea.TeaModel {
        public var name: String?

        public var type: String?

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
            if self.type != nil {
                map["type"] = self.type!
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
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public class Path : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public class QueryParams : Tea.TeaModel {
        public var name: String?

        public var type: String?

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
            if self.type != nil {
                map["type"] = self.type!
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
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var headers: [HttpRouteMatch.Headers]?

    public var ignoreUriCase: Bool?

    public var methods: [String]?

    public var path: HttpRouteMatch.Path?

    public var queryParams: [HttpRouteMatch.QueryParams]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.path?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            var tmp : [Any] = []
            for k in self.headers! {
                tmp.append(k.toMap())
            }
            map["headers"] = tmp
        }
        if self.ignoreUriCase != nil {
            map["ignoreUriCase"] = self.ignoreUriCase!
        }
        if self.methods != nil {
            map["methods"] = self.methods!
        }
        if self.path != nil {
            map["path"] = self.path?.toMap()
        }
        if self.queryParams != nil {
            var tmp : [Any] = []
            for k in self.queryParams! {
                tmp.append(k.toMap())
            }
            map["queryParams"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [Any?] {
            var tmp : [HttpRouteMatch.Headers] = []
            for v in value {
                if v != nil {
                    var model = HttpRouteMatch.Headers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.headers = tmp
        }
        if let value = dict["ignoreUriCase"] as? Bool {
            self.ignoreUriCase = value
        }
        if let value = dict["methods"] as? [String] {
            self.methods = value
        }
        if let value = dict["path"] as? [String: Any?] {
            var model = HttpRouteMatch.Path()
            model.fromMap(value)
            self.path = model
        }
        if let value = dict["queryParams"] as? [Any?] {
            var tmp : [HttpRouteMatch.QueryParams] = []
            for v in value {
                if v != nil {
                    var model = HttpRouteMatch.QueryParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryParams = tmp
        }
    }
}

public class JwtIdentityConfig : Tea.TeaModel {
    public class JwtPayloadConfig : Tea.TeaModel {
        public var payloadKeyName: String?

        public var payloadKeyValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payloadKeyName != nil {
                map["payloadKeyName"] = self.payloadKeyName!
            }
            if self.payloadKeyValue != nil {
                map["payloadKeyValue"] = self.payloadKeyValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["payloadKeyName"] as? String {
                self.payloadKeyName = value
            }
            if let value = dict["payloadKeyValue"] as? String {
                self.payloadKeyValue = value
            }
        }
    }
    public class JwtTokenConfig : Tea.TeaModel {
        public var key: String?

        public var pass: Bool?

        public var position: String?

        public var prefix_: String?

        public override init() {
            super.init()
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
                map["key"] = self.key!
            }
            if self.pass != nil {
                map["pass"] = self.pass!
            }
            if self.position != nil {
                map["position"] = self.position!
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["pass"] as? Bool {
                self.pass = value
            }
            if let value = dict["position"] as? String {
                self.position = value
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
        }
    }
    public var jwks: String?

    public var jwtPayloadConfig: JwtIdentityConfig.JwtPayloadConfig?

    public var jwtTokenConfig: JwtIdentityConfig.JwtTokenConfig?

    public var secretType: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jwtPayloadConfig?.validate()
        try self.jwtTokenConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwks != nil {
            map["jwks"] = self.jwks!
        }
        if self.jwtPayloadConfig != nil {
            map["jwtPayloadConfig"] = self.jwtPayloadConfig?.toMap()
        }
        if self.jwtTokenConfig != nil {
            map["jwtTokenConfig"] = self.jwtTokenConfig?.toMap()
        }
        if self.secretType != nil {
            map["secretType"] = self.secretType!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jwks"] as? String {
            self.jwks = value
        }
        if let value = dict["jwtPayloadConfig"] as? [String: Any?] {
            var model = JwtIdentityConfig.JwtPayloadConfig()
            model.fromMap(value)
            self.jwtPayloadConfig = model
        }
        if let value = dict["jwtTokenConfig"] as? [String: Any?] {
            var model = JwtIdentityConfig.JwtTokenConfig()
            model.fromMap(value)
            self.jwtTokenConfig = model
        }
        if let value = dict["secretType"] as? String {
            self.secretType = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class KMSConfig : Tea.TeaModel {
    public var kmsInstanceId: String?

    public var kmsKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kmsInstanceId != nil {
            map["kmsInstanceId"] = self.kmsInstanceId!
        }
        if self.kmsKeyId != nil {
            map["kmsKeyId"] = self.kmsKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["kmsInstanceId"] as? String {
            self.kmsInstanceId = value
        }
        if let value = dict["kmsKeyId"] as? String {
            self.kmsKeyId = value
        }
    }
}

public class LabelDetail : Tea.TeaModel {
    public var key: String?

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
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.values != nil {
            map["values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["values"] as? [String] {
            self.values = value
        }
    }
}

public class McpServerConfig : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class ParentResourceInfo : Tea.TeaModel {
    public var apiInfo: HttpApiApiInfo?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfo != nil {
            map["apiInfo"] = self.apiInfo?.toMap()
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiInfo"] as? [String: Any?] {
            var model = HttpApiApiInfo()
            model.fromMap(value)
            self.apiInfo = model
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class PluginClassInfo : Tea.TeaModel {
    public var alias: String?

    public var configExample: String?

    public var description_: String?

    public var executePriority: Int32?

    public var executeStage: String?

    public var imageName: String?

    public var innerPlugin: Bool?

    public var mode: String?

    public var name: String?

    public var pluginClassId: String?

    public var source: String?

    public var supportedMinGatewayVersion: String?

    public var type: String?

    public var version: String?

    public var versionDescription: String?

    public var wasmLanguage: String?

    public var wasmUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.configExample != nil {
            map["configExample"] = self.configExample!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executePriority != nil {
            map["executePriority"] = self.executePriority!
        }
        if self.executeStage != nil {
            map["executeStage"] = self.executeStage!
        }
        if self.imageName != nil {
            map["imageName"] = self.imageName!
        }
        if self.innerPlugin != nil {
            map["innerPlugin"] = self.innerPlugin!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pluginClassId != nil {
            map["pluginClassId"] = self.pluginClassId!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.supportedMinGatewayVersion != nil {
            map["supportedMinGatewayVersion"] = self.supportedMinGatewayVersion!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.versionDescription != nil {
            map["versionDescription"] = self.versionDescription!
        }
        if self.wasmLanguage != nil {
            map["wasmLanguage"] = self.wasmLanguage!
        }
        if self.wasmUrl != nil {
            map["wasmUrl"] = self.wasmUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["configExample"] as? String {
            self.configExample = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executePriority"] as? Int32 {
            self.executePriority = value
        }
        if let value = dict["executeStage"] as? String {
            self.executeStage = value
        }
        if let value = dict["imageName"] as? String {
            self.imageName = value
        }
        if let value = dict["innerPlugin"] as? Bool {
            self.innerPlugin = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pluginClassId"] as? String {
            self.pluginClassId = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["supportedMinGatewayVersion"] as? String {
            self.supportedMinGatewayVersion = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
        if let value = dict["versionDescription"] as? String {
            self.versionDescription = value
        }
        if let value = dict["wasmLanguage"] as? String {
            self.wasmLanguage = value
        }
        if let value = dict["wasmUrl"] as? String {
            self.wasmUrl = value
        }
    }
}

public class PolicyClassInfo : Tea.TeaModel {
    public var alias: String?

    public var attachableResourceTypes: [String]?

    public var classId: String?

    public var configExample: String?

    public var deprecated: Bool?

    public var description_: String?

    public var direction: String?

    public var enableLog: Bool?

    public var executePriority: String?

    public var executeStage: String?

    public var name: String?

    public var type: String?

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
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.attachableResourceTypes != nil {
            map["attachableResourceTypes"] = self.attachableResourceTypes!
        }
        if self.classId != nil {
            map["classId"] = self.classId!
        }
        if self.configExample != nil {
            map["configExample"] = self.configExample!
        }
        if self.deprecated != nil {
            map["deprecated"] = self.deprecated!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.direction != nil {
            map["direction"] = self.direction!
        }
        if self.enableLog != nil {
            map["enableLog"] = self.enableLog!
        }
        if self.executePriority != nil {
            map["executePriority"] = self.executePriority!
        }
        if self.executeStage != nil {
            map["executeStage"] = self.executeStage!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["attachableResourceTypes"] as? [String] {
            self.attachableResourceTypes = value
        }
        if let value = dict["classId"] as? String {
            self.classId = value
        }
        if let value = dict["configExample"] as? String {
            self.configExample = value
        }
        if let value = dict["deprecated"] as? Bool {
            self.deprecated = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["direction"] as? String {
            self.direction = value
        }
        if let value = dict["enableLog"] as? Bool {
            self.enableLog = value
        }
        if let value = dict["executePriority"] as? String {
            self.executePriority = value
        }
        if let value = dict["executeStage"] as? String {
            self.executeStage = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class PolicyDetailInfo : Tea.TeaModel {
    public var classId: String?

    public var className: String?

    public var config: String?

    public var description_: String?

    public var name: String?

    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classId != nil {
            map["classId"] = self.classId!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.policyId != nil {
            map["policyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["classId"] as? String {
            self.classId = value
        }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["policyId"] as? String {
            self.policyId = value
        }
    }
}

public class PolicyInfo : Tea.TeaModel {
    public var attachments: [Attachment]?

    public var classAlias: String?

    public var className: String?

    public var config: String?

    public var direction: String?

    public var executePriority: String?

    public var executeStage: String?

    public var name: String?

    public var policyId: String?

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
        if self.attachments != nil {
            var tmp : [Any] = []
            for k in self.attachments! {
                tmp.append(k.toMap())
            }
            map["attachments"] = tmp
        }
        if self.classAlias != nil {
            map["classAlias"] = self.classAlias!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.direction != nil {
            map["direction"] = self.direction!
        }
        if self.executePriority != nil {
            map["executePriority"] = self.executePriority!
        }
        if self.executeStage != nil {
            map["executeStage"] = self.executeStage!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.policyId != nil {
            map["policyId"] = self.policyId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachments"] as? [Any?] {
            var tmp : [Attachment] = []
            for v in value {
                if v != nil {
                    var model = Attachment()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachments = tmp
        }
        if let value = dict["classAlias"] as? String {
            self.classAlias = value
        }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["direction"] as? String {
            self.direction = value
        }
        if let value = dict["executePriority"] as? String {
            self.executePriority = value
        }
        if let value = dict["executeStage"] as? String {
            self.executeStage = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["policyId"] as? String {
            self.policyId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ResourceInfo : Tea.TeaModel {
    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var resourceVersion: String?

    public override init() {
        super.init()
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
            map["resourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["resourceVersion"] as? String {
            self.resourceVersion = value
        }
    }
}

public class ResourceStatistic : Tea.TeaModel {
    public var resourceCount: Int32?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceCount != nil {
            map["resourceCount"] = self.resourceCount!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceCount"] as? Int32 {
            self.resourceCount = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class Service : Tea.TeaModel {
    public class Ports : Tea.TeaModel {
        public var name: String?

        public var port: Int32?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["port"] as? Int32 {
                self.port = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var addresses: [String]?

    public var agentServiceConfig: AgentServiceConfig?

    public var aiServiceConfig: AiServiceConfig?

    public var createTimestamp: Int64?

    public var expressType: String?

    public var gatewayId: String?

    public var groupName: String?

    public var healthCheck: ServiceHealthCheck?

    public var healthStatus: String?

    public var labelDetails: [LabelDetail]?

    public var name: String?

    public var namespace: String?

    public var outlierEndpoints: [String]?

    public var ports: [Service.Ports]?

    public var protocol_: String?

    public var qualifier: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var sourceType: String?

    public var unhealthyEndpoints: [String]?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.agentServiceConfig?.validate()
        try self.aiServiceConfig?.validate()
        try self.healthCheck?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            map["addresses"] = self.addresses!
        }
        if self.agentServiceConfig != nil {
            map["agentServiceConfig"] = self.agentServiceConfig?.toMap()
        }
        if self.aiServiceConfig != nil {
            map["aiServiceConfig"] = self.aiServiceConfig?.toMap()
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.expressType != nil {
            map["expressType"] = self.expressType!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.groupName != nil {
            map["groupName"] = self.groupName!
        }
        if self.healthCheck != nil {
            map["healthCheck"] = self.healthCheck?.toMap()
        }
        if self.healthStatus != nil {
            map["healthStatus"] = self.healthStatus!
        }
        if self.labelDetails != nil {
            var tmp : [Any] = []
            for k in self.labelDetails! {
                tmp.append(k.toMap())
            }
            map["labelDetails"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.outlierEndpoints != nil {
            map["outlierEndpoints"] = self.outlierEndpoints!
        }
        if self.ports != nil {
            var tmp : [Any] = []
            for k in self.ports! {
                tmp.append(k.toMap())
            }
            map["ports"] = tmp
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.unhealthyEndpoints != nil {
            map["unhealthyEndpoints"] = self.unhealthyEndpoints!
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addresses"] as? [String] {
            self.addresses = value
        }
        if let value = dict["agentServiceConfig"] as? [String: Any?] {
            var model = AgentServiceConfig()
            model.fromMap(value)
            self.agentServiceConfig = model
        }
        if let value = dict["aiServiceConfig"] as? [String: Any?] {
            var model = AiServiceConfig()
            model.fromMap(value)
            self.aiServiceConfig = model
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["expressType"] as? String {
            self.expressType = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["groupName"] as? String {
            self.groupName = value
        }
        if let value = dict["healthCheck"] as? [String: Any?] {
            var model = ServiceHealthCheck()
            model.fromMap(value)
            self.healthCheck = model
        }
        if let value = dict["healthStatus"] as? String {
            self.healthStatus = value
        }
        if let value = dict["labelDetails"] as? [Any?] {
            var tmp : [LabelDetail] = []
            for v in value {
                if v != nil {
                    var model = LabelDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labelDetails = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["outlierEndpoints"] as? [String] {
            self.outlierEndpoints = value
        }
        if let value = dict["ports"] as? [Any?] {
            var tmp : [Service.Ports] = []
            for v in value {
                if v != nil {
                    var model = Service.Ports()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ports = tmp
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["serviceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["unhealthyEndpoints"] as? [String] {
            self.unhealthyEndpoints = value
        }
        if let value = dict["updateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
    }
}

public class ServiceHealthCheck : Tea.TeaModel {
    public var enable: Bool?

    public var healthyThreshold: Int32?

    public var httpHost: String?

    public var httpPath: String?

    public var interval: Int32?

    public var protocol_: String?

    public var timeout: Int32?

    public var unhealthyThreshold: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.healthyThreshold != nil {
            map["healthyThreshold"] = self.healthyThreshold!
        }
        if self.httpHost != nil {
            map["httpHost"] = self.httpHost!
        }
        if self.httpPath != nil {
            map["httpPath"] = self.httpPath!
        }
        if self.interval != nil {
            map["interval"] = self.interval!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.unhealthyThreshold != nil {
            map["unhealthyThreshold"] = self.unhealthyThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["healthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["httpHost"] as? String {
            self.httpHost = value
        }
        if let value = dict["httpPath"] as? String {
            self.httpPath = value
        }
        if let value = dict["interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["unhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
    }
}

public class ServiceLinkedRole : Tea.TeaModel {
    public var arn: String?

    public var assumeRolePolicyDocument: String?

    public var createDate: String?

    public var description_: String?

    public var isServiceLinkedRole: Bool?

    public var roleId: String?

    public var roleName: String?

    public var rolePrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        if self.assumeRolePolicyDocument != nil {
            map["assumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
        }
        if self.createDate != nil {
            map["createDate"] = self.createDate!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.isServiceLinkedRole != nil {
            map["isServiceLinkedRole"] = self.isServiceLinkedRole!
        }
        if self.roleId != nil {
            map["roleId"] = self.roleId!
        }
        if self.roleName != nil {
            map["roleName"] = self.roleName!
        }
        if self.rolePrincipalName != nil {
            map["rolePrincipalName"] = self.rolePrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["arn"] as? String {
            self.arn = value
        }
        if let value = dict["assumeRolePolicyDocument"] as? String {
            self.assumeRolePolicyDocument = value
        }
        if let value = dict["createDate"] as? String {
            self.createDate = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["isServiceLinkedRole"] as? Bool {
            self.isServiceLinkedRole = value
        }
        if let value = dict["roleId"] as? String {
            self.roleId = value
        }
        if let value = dict["roleName"] as? String {
            self.roleName = value
        }
        if let value = dict["rolePrincipalName"] as? String {
            self.rolePrincipalName = value
        }
    }
}

public class SslCertMetaInfo : Tea.TeaModel {
    public var algorithm: String?

    public var certId: Int64?

    public var certIdentifier: String?

    public var certName: String?

    public var commonName: String?

    public var domain: String?

    public var domainMatchCert: Bool?

    public var fingerprint: String?

    public var instanceId: String?

    public var isChainCompleted: Bool?

    public var issuer: String?

    public var keySize: String?

    public var md5: String?

    public var notAfterTimestamp: Int64?

    public var notBeforeTimestamp: Int64?

    public var sans: String?

    public var serialNo: String?

    public var sha2: String?

    public var signAlgorithm: String?

    public override init() {
        super.init()
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
            map["algorithm"] = self.algorithm!
        }
        if self.certId != nil {
            map["certId"] = self.certId!
        }
        if self.certIdentifier != nil {
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.certName != nil {
            map["certName"] = self.certName!
        }
        if self.commonName != nil {
            map["commonName"] = self.commonName!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.domainMatchCert != nil {
            map["domainMatchCert"] = self.domainMatchCert!
        }
        if self.fingerprint != nil {
            map["fingerprint"] = self.fingerprint!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.isChainCompleted != nil {
            map["isChainCompleted"] = self.isChainCompleted!
        }
        if self.issuer != nil {
            map["issuer"] = self.issuer!
        }
        if self.keySize != nil {
            map["keySize"] = self.keySize!
        }
        if self.md5 != nil {
            map["md5"] = self.md5!
        }
        if self.notAfterTimestamp != nil {
            map["notAfterTimestamp"] = self.notAfterTimestamp!
        }
        if self.notBeforeTimestamp != nil {
            map["notBeforeTimestamp"] = self.notBeforeTimestamp!
        }
        if self.sans != nil {
            map["sans"] = self.sans!
        }
        if self.serialNo != nil {
            map["serialNo"] = self.serialNo!
        }
        if self.sha2 != nil {
            map["sha2"] = self.sha2!
        }
        if self.signAlgorithm != nil {
            map["signAlgorithm"] = self.signAlgorithm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["certId"] as? Int64 {
            self.certId = value
        }
        if let value = dict["certIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["certName"] as? String {
            self.certName = value
        }
        if let value = dict["commonName"] as? String {
            self.commonName = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["domainMatchCert"] as? Bool {
            self.domainMatchCert = value
        }
        if let value = dict["fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["isChainCompleted"] as? Bool {
            self.isChainCompleted = value
        }
        if let value = dict["issuer"] as? String {
            self.issuer = value
        }
        if let value = dict["keySize"] as? String {
            self.keySize = value
        }
        if let value = dict["md5"] as? String {
            self.md5 = value
        }
        if let value = dict["notAfterTimestamp"] as? Int64 {
            self.notAfterTimestamp = value
        }
        if let value = dict["notBeforeTimestamp"] as? Int64 {
            self.notBeforeTimestamp = value
        }
        if let value = dict["sans"] as? String {
            self.sans = value
        }
        if let value = dict["serialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["sha2"] as? String {
            self.sha2 = value
        }
        if let value = dict["signAlgorithm"] as? String {
            self.signAlgorithm = value
        }
    }
}

public class SubDomainInfo : Tea.TeaModel {
    public var domainId: String?

    public var name: String?

    public var networkType: String?

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
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networkType != nil {
            map["networkType"] = self.networkType!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domainId"] as? String {
            self.domainId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["networkType"] as? String {
            self.networkType = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
    }
}

public class TlsCipherSuitesConfig : Tea.TeaModel {
    public class TlsCipherSuite : Tea.TeaModel {
        public var name: String?

        public var supportVersions: [String]?

        public override init() {
            super.init()
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
            if self.supportVersions != nil {
                map["supportVersions"] = self.supportVersions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["supportVersions"] as? [String] {
                self.supportVersions = value
            }
        }
    }
    public var configType: String?

    public var tlsCipherSuite: [TlsCipherSuitesConfig.TlsCipherSuite]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configType != nil {
            map["configType"] = self.configType!
        }
        if self.tlsCipherSuite != nil {
            var tmp : [Any] = []
            for k in self.tlsCipherSuite! {
                tmp.append(k.toMap())
            }
            map["tlsCipherSuite"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configType"] as? String {
            self.configType = value
        }
        if let value = dict["tlsCipherSuite"] as? [Any?] {
            var tmp : [TlsCipherSuitesConfig.TlsCipherSuite] = []
            for v in value {
                if v != nil {
                    var model = TlsCipherSuitesConfig.TlsCipherSuite()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tlsCipherSuite = tmp
        }
    }
}

public class HttpApiApiInfoDeployCntMapValue : Tea.TeaModel {
    public var deployedCnt: Int64?

    public var cnt: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployedCnt != nil {
            map["deployedCnt"] = self.deployedCnt!
        }
        if self.cnt != nil {
            map["Cnt"] = self.cnt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deployedCnt"] as? Int64 {
            self.deployedCnt = value
        }
        if let value = dict["Cnt"] as? Int64 {
            self.cnt = value
        }
    }
}

public class AddGatewaySecurityGroupRuleRequest : Tea.TeaModel {
    public var description_: String?

    public var portRanges: [String]?

    public var securityGroupId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.portRanges != nil {
            map["portRanges"] = self.portRanges!
        }
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["portRanges"] as? [String] {
            self.portRanges = value
        }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
    }
}

public class AddGatewaySecurityGroupRuleResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddGatewaySecurityGroupRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGatewaySecurityGroupRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddGatewaySecurityGroupRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDeleteConsumerAuthorizationRuleRequest : Tea.TeaModel {
    public var consumerAuthorizationRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumerAuthorizationRuleIds != nil {
            map["consumerAuthorizationRuleIds"] = self.consumerAuthorizationRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["consumerAuthorizationRuleIds"] as? String {
            self.consumerAuthorizationRuleIds = value
        }
    }
}

public class BatchDeleteConsumerAuthorizationRuleResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchDeleteConsumerAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteConsumerAuthorizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchDeleteConsumerAuthorizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var service: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.service != nil {
            map["Service"] = self.service!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Service"] as? String {
            self.service = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAndAttachPolicyRequest : Tea.TeaModel {
    public var attachResourceIds: [String]?

    public var attachResourceType: String?

    public var className: String?

    public var config: String?

    public var description_: String?

    public var environmentId: String?

    public var gatewayId: String?

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
        if self.attachResourceIds != nil {
            map["attachResourceIds"] = self.attachResourceIds!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceIds"] as? [String] {
            self.attachResourceIds = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateAndAttachPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var attachment: Attachment?

        public var policyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.attachment?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachment != nil {
                map["attachment"] = self.attachment?.toMap()
            }
            if self.policyId != nil {
                map["policyId"] = self.policyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["attachment"] as? [String: Any?] {
                var model = Attachment()
                model.fromMap(value)
                self.attachment = model
            }
            if let value = dict["policyId"] as? String {
                self.policyId = value
            }
        }
    }
    public var code: String?

    public var data: CreateAndAttachPolicyResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateAndAttachPolicyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAndAttachPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAndAttachPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAndAttachPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConsumerRequest : Tea.TeaModel {
    public var akSkIdentityConfigs: [AkSkIdentityConfig]?

    public var apikeyIdentityConfig: ApiKeyIdentityConfig?

    public var description_: String?

    public var enable: Bool?

    public var gatewayType: String?

    public var jwtIdentityConfig: JwtIdentityConfig?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apikeyIdentityConfig?.validate()
        try self.jwtIdentityConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.akSkIdentityConfigs != nil {
            var tmp : [Any] = []
            for k in self.akSkIdentityConfigs! {
                tmp.append(k.toMap())
            }
            map["akSkIdentityConfigs"] = tmp
        }
        if self.apikeyIdentityConfig != nil {
            map["apikeyIdentityConfig"] = self.apikeyIdentityConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.jwtIdentityConfig != nil {
            map["jwtIdentityConfig"] = self.jwtIdentityConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["akSkIdentityConfigs"] as? [Any?] {
            var tmp : [AkSkIdentityConfig] = []
            for v in value {
                if v != nil {
                    var model = AkSkIdentityConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.akSkIdentityConfigs = tmp
        }
        if let value = dict["apikeyIdentityConfig"] as? [String: Any?] {
            var model = ApiKeyIdentityConfig()
            model.fromMap(value)
            self.apikeyIdentityConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["jwtIdentityConfig"] as? [String: Any?] {
            var model = JwtIdentityConfig()
            model.fromMap(value)
            self.jwtIdentityConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateConsumerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var consumerId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerId != nil {
                map["consumerId"] = self.consumerId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumerId"] as? String {
                self.consumerId = value
            }
        }
    }
    public var code: String?

    public var data: CreateConsumerResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateConsumerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateConsumerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConsumerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateConsumerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConsumerAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationResourceInfos: [AuthorizationResourceInfo]?

    public var expireMode: String?

    public var expireTimestamp: Int64?

    public var parentResourceType: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationResourceInfos != nil {
            var tmp : [Any] = []
            for k in self.authorizationResourceInfos! {
                tmp.append(k.toMap())
            }
            map["authorizationResourceInfos"] = tmp
        }
        if self.expireMode != nil {
            map["expireMode"] = self.expireMode!
        }
        if self.expireTimestamp != nil {
            map["expireTimestamp"] = self.expireTimestamp!
        }
        if self.parentResourceType != nil {
            map["parentResourceType"] = self.parentResourceType!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authorizationResourceInfos"] as? [Any?] {
            var tmp : [AuthorizationResourceInfo] = []
            for v in value {
                if v != nil {
                    var model = AuthorizationResourceInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.authorizationResourceInfos = tmp
        }
        if let value = dict["expireMode"] as? String {
            self.expireMode = value
        }
        if let value = dict["expireTimestamp"] as? Int64 {
            self.expireTimestamp = value
        }
        if let value = dict["parentResourceType"] as? String {
            self.parentResourceType = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class CreateConsumerAuthorizationRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var consumerAuthorizationRuleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerAuthorizationRuleId != nil {
                map["consumerAuthorizationRuleId"] = self.consumerAuthorizationRuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumerAuthorizationRuleId"] as? String {
                self.consumerAuthorizationRuleId = value
            }
        }
    }
    public var code: String?

    public var data: CreateConsumerAuthorizationRuleResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateConsumerAuthorizationRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateConsumerAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConsumerAuthorizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateConsumerAuthorizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConsumerAuthorizationRulesRequest : Tea.TeaModel {
    public class AuthorizationRules : Tea.TeaModel {
        public class ResourceIdentifier : Tea.TeaModel {
            public var environmentId: String?

            public var parentResourceId: String?

            public var resourceId: String?

            public var resources: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                if self.parentResourceId != nil {
                    map["parentResourceId"] = self.parentResourceId!
                }
                if self.resourceId != nil {
                    map["resourceId"] = self.resourceId!
                }
                if self.resources != nil {
                    map["resources"] = self.resources!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["environmentId"] as? String {
                    self.environmentId = value
                }
                if let value = dict["parentResourceId"] as? String {
                    self.parentResourceId = value
                }
                if let value = dict["resourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["resources"] as? [String] {
                    self.resources = value
                }
            }
        }
        public var consumerId: String?

        public var expireMode: String?

        public var expireTimestamp: Int64?

        public var resourceIdentifier: CreateConsumerAuthorizationRulesRequest.AuthorizationRules.ResourceIdentifier?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourceIdentifier?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerId != nil {
                map["consumerId"] = self.consumerId!
            }
            if self.expireMode != nil {
                map["expireMode"] = self.expireMode!
            }
            if self.expireTimestamp != nil {
                map["expireTimestamp"] = self.expireTimestamp!
            }
            if self.resourceIdentifier != nil {
                map["resourceIdentifier"] = self.resourceIdentifier?.toMap()
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumerId"] as? String {
                self.consumerId = value
            }
            if let value = dict["expireMode"] as? String {
                self.expireMode = value
            }
            if let value = dict["expireTimestamp"] as? Int64 {
                self.expireTimestamp = value
            }
            if let value = dict["resourceIdentifier"] as? [String: Any?] {
                var model = CreateConsumerAuthorizationRulesRequest.AuthorizationRules.ResourceIdentifier()
                model.fromMap(value)
                self.resourceIdentifier = model
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var authorizationRules: [CreateConsumerAuthorizationRulesRequest.AuthorizationRules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRules != nil {
            var tmp : [Any] = []
            for k in self.authorizationRules! {
                tmp.append(k.toMap())
            }
            map["authorizationRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authorizationRules"] as? [Any?] {
            var tmp : [CreateConsumerAuthorizationRulesRequest.AuthorizationRules] = []
            for v in value {
                if v != nil {
                    var model = CreateConsumerAuthorizationRulesRequest.AuthorizationRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.authorizationRules = tmp
        }
    }
}

public class CreateConsumerAuthorizationRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var consumerAuthorizationRuleIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerAuthorizationRuleIds != nil {
                map["consumerAuthorizationRuleIds"] = self.consumerAuthorizationRuleIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumerAuthorizationRuleIds"] as? [String] {
                self.consumerAuthorizationRuleIds = value
            }
        }
    }
    public var code: String?

    public var data: CreateConsumerAuthorizationRulesResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateConsumerAuthorizationRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateConsumerAuthorizationRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConsumerAuthorizationRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateConsumerAuthorizationRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public var caCertIdentifier: String?

    public var certIdentifier: String?

    public var clientCACert: String?

    public var forceHttps: Bool?

    public var gatewayType: String?

    public var http2Option: String?

    public var mTLSEnabled: Bool?

    public var name: String?

    public var protocol_: String?

    public var resourceGroupId: String?

    public var tlsCipherSuitesConfig: TlsCipherSuitesConfig?

    public var tlsMax: String?

    public var tlsMin: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tlsCipherSuitesConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caCertIdentifier != nil {
            map["caCertIdentifier"] = self.caCertIdentifier!
        }
        if self.certIdentifier != nil {
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.clientCACert != nil {
            map["clientCACert"] = self.clientCACert!
        }
        if self.forceHttps != nil {
            map["forceHttps"] = self.forceHttps!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.http2Option != nil {
            map["http2Option"] = self.http2Option!
        }
        if self.mTLSEnabled != nil {
            map["mTLSEnabled"] = self.mTLSEnabled!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tlsCipherSuitesConfig != nil {
            map["tlsCipherSuitesConfig"] = self.tlsCipherSuitesConfig?.toMap()
        }
        if self.tlsMax != nil {
            map["tlsMax"] = self.tlsMax!
        }
        if self.tlsMin != nil {
            map["tlsMin"] = self.tlsMin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["caCertIdentifier"] as? String {
            self.caCertIdentifier = value
        }
        if let value = dict["certIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["clientCACert"] as? String {
            self.clientCACert = value
        }
        if let value = dict["forceHttps"] as? Bool {
            self.forceHttps = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["http2Option"] as? String {
            self.http2Option = value
        }
        if let value = dict["mTLSEnabled"] as? Bool {
            self.mTLSEnabled = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tlsCipherSuitesConfig"] as? [String: Any?] {
            var model = TlsCipherSuitesConfig()
            model.fromMap(value)
            self.tlsCipherSuitesConfig = model
        }
        if let value = dict["tlsMax"] as? String {
            self.tlsMax = value
        }
        if let value = dict["tlsMin"] as? String {
            self.tlsMin = value
        }
    }
}

public class CreateDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var domainId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainId"] as? String {
                self.domainId = value
            }
        }
    }
    public var code: String?

    public var data: CreateDomainResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateDomainResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEnvironmentRequest : Tea.TeaModel {
    public var alias: String?

    public var description_: String?

    public var gatewayId: String?

    public var name: String?

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
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class CreateEnvironmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var environmentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
        }
    }
    public var code: String?

    public var data: CreateEnvironmentResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateEnvironmentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEnvironmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateEnvironmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGatewayRequest : Tea.TeaModel {
    public class LogConfig : Tea.TeaModel {
        public class Sls : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
            }
        }
        public var sls: CreateGatewayRequest.LogConfig.Sls?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sls?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sls != nil {
                map["sls"] = self.sls?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["sls"] as? [String: Any?] {
                var model = CreateGatewayRequest.LogConfig.Sls()
                model.fromMap(value)
                self.sls = model
            }
        }
    }
    public class NetworkAccessConfig : Tea.TeaModel {
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
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["type"] as? String {
                self.type = value
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public class ZoneConfig : Tea.TeaModel {
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
                    map["vSwitchId"] = self.vSwitchId!
                }
                if self.zoneId != nil {
                    map["zoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["vSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["zoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var selectOption: String?

        public var vSwitchId: String?

        public var zones: [CreateGatewayRequest.ZoneConfig.Zones]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.selectOption != nil {
                map["selectOption"] = self.selectOption!
            }
            if self.vSwitchId != nil {
                map["vSwitchId"] = self.vSwitchId!
            }
            if self.zones != nil {
                var tmp : [Any] = []
                for k in self.zones! {
                    tmp.append(k.toMap())
                }
                map["zones"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["selectOption"] as? String {
                self.selectOption = value
            }
            if let value = dict["vSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["zones"] as? [Any?] {
                var tmp : [CreateGatewayRequest.ZoneConfig.Zones] = []
                for v in value {
                    if v != nil {
                        var model = CreateGatewayRequest.ZoneConfig.Zones()
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
    public var chargeType: String?

    public var gatewayEdition: String?

    public var gatewayType: String?

    public var logConfig: CreateGatewayRequest.LogConfig?

    public var name: String?

    public var networkAccessConfig: CreateGatewayRequest.NetworkAccessConfig?

    public var resourceGroupId: String?

    public var spec: String?

    public var tag: [CreateGatewayRequest.Tag]?

    public var vpcId: String?

    public var zoneConfig: CreateGatewayRequest.ZoneConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logConfig?.validate()
        try self.networkAccessConfig?.validate()
        try self.zoneConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.gatewayEdition != nil {
            map["gatewayEdition"] = self.gatewayEdition!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networkAccessConfig != nil {
            map["networkAccessConfig"] = self.networkAccessConfig?.toMap()
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.spec != nil {
            map["spec"] = self.spec!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.zoneConfig != nil {
            map["zoneConfig"] = self.zoneConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["gatewayEdition"] as? String {
            self.gatewayEdition = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = CreateGatewayRequest.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["networkAccessConfig"] as? [String: Any?] {
            var model = CreateGatewayRequest.NetworkAccessConfig()
            model.fromMap(value)
            self.networkAccessConfig = model
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["spec"] as? String {
            self.spec = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [CreateGatewayRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateGatewayRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["zoneConfig"] as? [String: Any?] {
            var model = CreateGatewayRequest.ZoneConfig()
            model.fromMap(value)
            self.zoneConfig = model
        }
    }
}

public class CreateGatewayResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gatewayId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
        }
    }
    public var code: String?

    public var data: CreateGatewayResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateGatewayResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateHttpApiRequest : Tea.TeaModel {
    public class IngressConfig : Tea.TeaModel {
        public var clusterId: String?

        public var environmentId: String?

        public var ingressClass: String?

        public var overrideIngressIp: Bool?

        public var sourceId: String?

        public var watchNamespace: String?

        public override init() {
            super.init()
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
                map["clusterId"] = self.clusterId!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.ingressClass != nil {
                map["ingressClass"] = self.ingressClass!
            }
            if self.overrideIngressIp != nil {
                map["overrideIngressIp"] = self.overrideIngressIp!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.watchNamespace != nil {
                map["watchNamespace"] = self.watchNamespace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["clusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["ingressClass"] as? String {
                self.ingressClass = value
            }
            if let value = dict["overrideIngressIp"] as? Bool {
                self.overrideIngressIp = value
            }
            if let value = dict["sourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["watchNamespace"] as? String {
                self.watchNamespace = value
            }
        }
    }
    public var agentProtocols: [String]?

    public var aiProtocols: [String]?

    public var authConfig: AuthConfig?

    public var basePath: String?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var enableAuth: Bool?

    public var firstByteTimeout: Int32?

    public var ingressConfig: CreateHttpApiRequest.IngressConfig?

    public var modelCategory: String?

    public var name: String?

    public var protocols: [String]?

    public var removeBasePathOnForward: Bool?

    public var resourceGroupId: String?

    public var type: String?

    public var versionConfig: HttpApiVersionConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.ingressConfig?.validate()
        try self.versionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentProtocols != nil {
            map["agentProtocols"] = self.agentProtocols!
        }
        if self.aiProtocols != nil {
            map["aiProtocols"] = self.aiProtocols!
        }
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.basePath != nil {
            map["basePath"] = self.basePath!
        }
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enableAuth != nil {
            map["enableAuth"] = self.enableAuth!
        }
        if self.firstByteTimeout != nil {
            map["firstByteTimeout"] = self.firstByteTimeout!
        }
        if self.ingressConfig != nil {
            map["ingressConfig"] = self.ingressConfig?.toMap()
        }
        if self.modelCategory != nil {
            map["modelCategory"] = self.modelCategory!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.removeBasePathOnForward != nil {
            map["removeBasePathOnForward"] = self.removeBasePathOnForward!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.versionConfig != nil {
            map["versionConfig"] = self.versionConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentProtocols"] as? [String] {
            self.agentProtocols = value
        }
        if let value = dict["aiProtocols"] as? [String] {
            self.aiProtocols = value
        }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["basePath"] as? String {
            self.basePath = value
        }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enableAuth"] as? Bool {
            self.enableAuth = value
        }
        if let value = dict["firstByteTimeout"] as? Int32 {
            self.firstByteTimeout = value
        }
        if let value = dict["ingressConfig"] as? [String: Any?] {
            var model = CreateHttpApiRequest.IngressConfig()
            model.fromMap(value)
            self.ingressConfig = model
        }
        if let value = dict["modelCategory"] as? String {
            self.modelCategory = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protocols"] as? [String] {
            self.protocols = value
        }
        if let value = dict["removeBasePathOnForward"] as? Bool {
            self.removeBasePathOnForward = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["versionConfig"] as? [String: Any?] {
            var model = HttpApiVersionConfig()
            model.fromMap(value)
            self.versionConfig = model
        }
    }
}

public class CreateHttpApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var httpApiId: String?

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
            if self.httpApiId != nil {
                map["httpApiId"] = self.httpApiId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["httpApiId"] as? String {
                self.httpApiId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var data: CreateHttpApiResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateHttpApiResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHttpApiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHttpApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateHttpApiOperationRequest : Tea.TeaModel {
    public var operations: [HttpApiOperation]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operations != nil {
            var tmp : [Any] = []
            for k in self.operations! {
                tmp.append(k.toMap())
            }
            map["operations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operations"] as? [Any?] {
            var tmp : [HttpApiOperation] = []
            for v in value {
                if v != nil {
                    var model = HttpApiOperation()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.operations = tmp
        }
    }
}

public class CreateHttpApiOperationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Operations : Tea.TeaModel {
            public var operationId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.operationId != nil {
                    map["operationId"] = self.operationId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["operationId"] as? String {
                    self.operationId = value
                }
            }
        }
        public var operations: [CreateHttpApiOperationResponseBody.Data.Operations]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operations != nil {
                var tmp : [Any] = []
                for k in self.operations! {
                    tmp.append(k.toMap())
                }
                map["operations"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["operations"] as? [Any?] {
                var tmp : [CreateHttpApiOperationResponseBody.Data.Operations] = []
                for v in value {
                    if v != nil {
                        var model = CreateHttpApiOperationResponseBody.Data.Operations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.operations = tmp
            }
        }
    }
    public var code: String?

    public var data: CreateHttpApiOperationResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateHttpApiOperationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateHttpApiOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHttpApiOperationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHttpApiOperationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateHttpApiRouteRequest : Tea.TeaModel {
    public class BackendConfig : Tea.TeaModel {
        public class Services : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public var serviceId: String?

            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.serviceId != nil {
                    map["serviceId"] = self.serviceId!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["serviceId"] as? String {
                    self.serviceId = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var scene: String?

        public var services: [CreateHttpApiRouteRequest.BackendConfig.Services]?

        public override init() {
            super.init()
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
                map["scene"] = self.scene!
            }
            if self.services != nil {
                var tmp : [Any] = []
                for k in self.services! {
                    tmp.append(k.toMap())
                }
                map["services"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["scene"] as? String {
                self.scene = value
            }
            if let value = dict["services"] as? [Any?] {
                var tmp : [CreateHttpApiRouteRequest.BackendConfig.Services] = []
                for v in value {
                    if v != nil {
                        var model = CreateHttpApiRouteRequest.BackendConfig.Services()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.services = tmp
            }
        }
    }
    public class McpRouteConfig : Tea.TeaModel {
        public var exposedUriPath: String?

        public var mcpStatisticsEnable: Bool?

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
            if self.exposedUriPath != nil {
                map["exposedUriPath"] = self.exposedUriPath!
            }
            if self.mcpStatisticsEnable != nil {
                map["mcpStatisticsEnable"] = self.mcpStatisticsEnable!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["exposedUriPath"] as? String {
                self.exposedUriPath = value
            }
            if let value = dict["mcpStatisticsEnable"] as? Bool {
                self.mcpStatisticsEnable = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var backendConfig: CreateHttpApiRouteRequest.BackendConfig?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var domainIds: [String]?

    public var environmentId: String?

    public var match: HttpRouteMatch?

    public var mcpRouteConfig: CreateHttpApiRouteRequest.McpRouteConfig?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendConfig?.validate()
        try self.match?.validate()
        try self.mcpRouteConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
        }
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainIds != nil {
            map["domainIds"] = self.domainIds!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.match != nil {
            map["match"] = self.match?.toMap()
        }
        if self.mcpRouteConfig != nil {
            map["mcpRouteConfig"] = self.mcpRouteConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backendConfig"] as? [String: Any?] {
            var model = CreateHttpApiRouteRequest.BackendConfig()
            model.fromMap(value)
            self.backendConfig = model
        }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainIds"] as? [String] {
            self.domainIds = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["match"] as? [String: Any?] {
            var model = HttpRouteMatch()
            model.fromMap(value)
            self.match = model
        }
        if let value = dict["mcpRouteConfig"] as? [String: Any?] {
            var model = CreateHttpApiRouteRequest.McpRouteConfig()
            model.fromMap(value)
            self.mcpRouteConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateHttpApiRouteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var routeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.routeId != nil {
                map["routeId"] = self.routeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["routeId"] as? String {
                self.routeId = value
            }
        }
    }
    public var code: String?

    public var data: CreateHttpApiRouteResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateHttpApiRouteResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateHttpApiRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHttpApiRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHttpApiRouteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcpServerRequest : Tea.TeaModel {
    public class AssembledSources : Tea.TeaModel {
        public var mcpServerId: String?

        public var mcpServerName: String?

        public var tools: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mcpServerId != nil {
                map["mcpServerId"] = self.mcpServerId!
            }
            if self.mcpServerName != nil {
                map["mcpServerName"] = self.mcpServerName!
            }
            if self.tools != nil {
                map["tools"] = self.tools!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mcpServerId"] as? String {
                self.mcpServerId = value
            }
            if let value = dict["mcpServerName"] as? String {
                self.mcpServerName = value
            }
            if let value = dict["tools"] as? [String] {
                self.tools = value
            }
        }
    }
    public class BackendConfig : Tea.TeaModel {
        public class Services : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public var serviceId: String?

            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.serviceId != nil {
                    map["serviceId"] = self.serviceId!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["serviceId"] as? String {
                    self.serviceId = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var scene: String?

        public var services: [CreateMcpServerRequest.BackendConfig.Services]?

        public override init() {
            super.init()
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
                map["scene"] = self.scene!
            }
            if self.services != nil {
                var tmp : [Any] = []
                for k in self.services! {
                    tmp.append(k.toMap())
                }
                map["services"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["scene"] as? String {
                self.scene = value
            }
            if let value = dict["services"] as? [Any?] {
                var tmp : [CreateMcpServerRequest.BackendConfig.Services] = []
                for v in value {
                    if v != nil {
                        var model = CreateMcpServerRequest.BackendConfig.Services()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.services = tmp
            }
        }
    }
    public var assembledSources: [CreateMcpServerRequest.AssembledSources]?

    public var backendConfig: CreateMcpServerRequest.BackendConfig?

    public var description_: String?

    public var domainIds: [String]?

    public var exposedUriPath: String?

    public var gatewayId: String?

    public var match: HttpRouteMatch?

    public var mcpStatisticsEnable: Bool?

    public var name: String?

    public var protocol_: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendConfig?.validate()
        try self.match?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assembledSources != nil {
            var tmp : [Any] = []
            for k in self.assembledSources! {
                tmp.append(k.toMap())
            }
            map["assembledSources"] = tmp
        }
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainIds != nil {
            map["domainIds"] = self.domainIds!
        }
        if self.exposedUriPath != nil {
            map["exposedUriPath"] = self.exposedUriPath!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.match != nil {
            map["match"] = self.match?.toMap()
        }
        if self.mcpStatisticsEnable != nil {
            map["mcpStatisticsEnable"] = self.mcpStatisticsEnable!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["assembledSources"] as? [Any?] {
            var tmp : [CreateMcpServerRequest.AssembledSources] = []
            for v in value {
                if v != nil {
                    var model = CreateMcpServerRequest.AssembledSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.assembledSources = tmp
        }
        if let value = dict["backendConfig"] as? [String: Any?] {
            var model = CreateMcpServerRequest.BackendConfig()
            model.fromMap(value)
            self.backendConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainIds"] as? [String] {
            self.domainIds = value
        }
        if let value = dict["exposedUriPath"] as? String {
            self.exposedUriPath = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["match"] as? [String: Any?] {
            var model = HttpRouteMatch()
            model.fromMap(value)
            self.match = model
        }
        if let value = dict["mcpStatisticsEnable"] as? Bool {
            self.mcpStatisticsEnable = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateMcpServerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var mcpServerId: String?

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
            if self.mcpServerId != nil {
                map["mcpServerId"] = self.mcpServerId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mcpServerId"] as? String {
                self.mcpServerId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var data: CreateMcpServerResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateMcpServerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePluginAttachmentRequest : Tea.TeaModel {
    public var attachResourceIds: [String]?

    public var attachResourceType: String?

    public var enable: Bool?

    public var environmentId: String?

    public var gatewayId: String?

    public var pluginConfig: String?

    public var pluginId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachResourceIds != nil {
            map["attachResourceIds"] = self.attachResourceIds!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.pluginConfig != nil {
            map["pluginConfig"] = self.pluginConfig!
        }
        if self.pluginId != nil {
            map["pluginId"] = self.pluginId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceIds"] as? [String] {
            self.attachResourceIds = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["pluginConfig"] as? String {
            self.pluginConfig = value
        }
        if let value = dict["pluginId"] as? String {
            self.pluginId = value
        }
    }
}

public class CreatePluginAttachmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var pluginAttachmentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pluginAttachmentId != nil {
                map["pluginAttachmentId"] = self.pluginAttachmentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["pluginAttachmentId"] as? String {
                self.pluginAttachmentId = value
            }
        }
    }
    public var code: String?

    public var data: CreatePluginAttachmentResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreatePluginAttachmentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePluginAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePluginAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePluginAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public var className: String?

    public var config: String?

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
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreatePolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var policyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyId != nil {
                map["policyId"] = self.policyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["policyId"] as? String {
                self.policyId = value
            }
        }
    }
    public var code: String?

    public var data: CreatePolicyResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreatePolicyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyAttachmentRequest : Tea.TeaModel {
    public var attachResourceId: String?

    public var attachResourceType: String?

    public var environmentId: String?

    public var gatewayId: String?

    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachResourceId != nil {
            map["attachResourceId"] = self.attachResourceId!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.policyId != nil {
            map["policyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceId"] as? String {
            self.attachResourceId = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["policyId"] as? String {
            self.policyId = value
        }
    }
}

public class CreatePolicyAttachmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var policyAttachmentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyAttachmentId != nil {
                map["policyAttachmentId"] = self.policyAttachmentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["policyAttachmentId"] as? String {
                self.policyAttachmentId = value
            }
        }
    }
    public var code: String?

    public var data: CreatePolicyAttachmentResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreatePolicyAttachmentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePolicyAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePolicyAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
    public class ServiceConfigs : Tea.TeaModel {
        public var addresses: [String]?

        public var agentServiceConfig: AgentServiceConfig?

        public var aiServiceConfig: AiServiceConfig?

        public var dnsServers: [String]?

        public var groupName: String?

        public var name: String?

        public var namespace: String?

        public var qualifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agentServiceConfig?.validate()
            try self.aiServiceConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["addresses"] = self.addresses!
            }
            if self.agentServiceConfig != nil {
                map["agentServiceConfig"] = self.agentServiceConfig?.toMap()
            }
            if self.aiServiceConfig != nil {
                map["aiServiceConfig"] = self.aiServiceConfig?.toMap()
            }
            if self.dnsServers != nil {
                map["dnsServers"] = self.dnsServers!
            }
            if self.groupName != nil {
                map["groupName"] = self.groupName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["addresses"] as? [String] {
                self.addresses = value
            }
            if let value = dict["agentServiceConfig"] as? [String: Any?] {
                var model = AgentServiceConfig()
                model.fromMap(value)
                self.agentServiceConfig = model
            }
            if let value = dict["aiServiceConfig"] as? [String: Any?] {
                var model = AiServiceConfig()
                model.fromMap(value)
                self.aiServiceConfig = model
            }
            if let value = dict["dnsServers"] as? [String] {
                self.dnsServers = value
            }
            if let value = dict["groupName"] as? String {
                self.groupName = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["qualifier"] as? String {
                self.qualifier = value
            }
        }
    }
    public var gatewayId: String?

    public var resourceGroupId: String?

    public var serviceConfigs: [CreateServiceRequest.ServiceConfigs]?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceConfigs != nil {
            var tmp : [Any] = []
            for k in self.serviceConfigs! {
                tmp.append(k.toMap())
            }
            map["serviceConfigs"] = tmp
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["serviceConfigs"] as? [Any?] {
            var tmp : [CreateServiceRequest.ServiceConfigs] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceRequest.ServiceConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceConfigs = tmp
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class CreateServiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var serviceIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceIds != nil {
                map["serviceIds"] = self.serviceIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["serviceIds"] as? [String] {
                self.serviceIds = value
            }
        }
    }
    public var code: String?

    public var data: CreateServiceResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateServiceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteConsumerResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteConsumerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConsumerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteConsumerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteConsumerAuthorizationRuleResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteConsumerAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConsumerAuthorizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteConsumerAuthorizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEnvironmentResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnvironmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEnvironmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGatewayResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGatewaySecurityGroupRuleRequest : Tea.TeaModel {
    public var cascadingDelete: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cascadingDelete != nil {
            map["cascadingDelete"] = self.cascadingDelete!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cascadingDelete"] as? Bool {
            self.cascadingDelete = value
        }
    }
}

public class DeleteGatewaySecurityGroupRuleResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteGatewaySecurityGroupRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewaySecurityGroupRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteGatewaySecurityGroupRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteHttpApiResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHttpApiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHttpApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteHttpApiOperationResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteHttpApiOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHttpApiOperationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHttpApiOperationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteHttpApiRouteResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteHttpApiRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHttpApiRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHttpApiRouteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMcpServerResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePluginAttachmentResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePluginAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePluginAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePluginAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePolicyResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePolicyAttachmentResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePolicyAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePolicyAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployHttpApiRequest : Tea.TeaModel {
    public class HttpApiConfig : Tea.TeaModel {
        public var gatewayId: String?

        public var routeIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.routeIds != nil {
                map["routeIds"] = self.routeIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["routeIds"] as? [String] {
                self.routeIds = value
            }
        }
    }
    public class RestApiConfig : Tea.TeaModel {
        public class Environment : Tea.TeaModel {
            public class ServiceConfigs : Tea.TeaModel {
                public var match: HttpApiBackendMatchConditions?

                public var port: Int32?

                public var protocol_: String?

                public var serviceId: String?

                public var version: String?

                public var weight: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.port != nil {
                        map["port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["protocol"] = self.protocol_!
                    }
                    if self.serviceId != nil {
                        map["serviceId"] = self.serviceId!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["match"] as? [String: Any?] {
                        var model = HttpApiBackendMatchConditions()
                        model.fromMap(value)
                        self.match = model
                    }
                    if let value = dict["port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["protocol"] as? String {
                        self.protocol_ = value
                    }
                    if let value = dict["serviceId"] as? String {
                        self.serviceId = value
                    }
                    if let value = dict["version"] as? String {
                        self.version = value
                    }
                    if let value = dict["weight"] as? Int32 {
                        self.weight = value
                    }
                }
            }
            public var backendScene: String?

            public var customDomainIds: [String]?

            public var environmentId: String?

            public var serviceConfigs: [DeployHttpApiRequest.RestApiConfig.Environment.ServiceConfigs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backendScene != nil {
                    map["backendScene"] = self.backendScene!
                }
                if self.customDomainIds != nil {
                    map["customDomainIds"] = self.customDomainIds!
                }
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                if self.serviceConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.serviceConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["serviceConfigs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["backendScene"] as? String {
                    self.backendScene = value
                }
                if let value = dict["customDomainIds"] as? [String] {
                    self.customDomainIds = value
                }
                if let value = dict["environmentId"] as? String {
                    self.environmentId = value
                }
                if let value = dict["serviceConfigs"] as? [Any?] {
                    var tmp : [DeployHttpApiRequest.RestApiConfig.Environment.ServiceConfigs] = []
                    for v in value {
                        if v != nil {
                            var model = DeployHttpApiRequest.RestApiConfig.Environment.ServiceConfigs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serviceConfigs = tmp
                }
            }
        }
        public var description_: String?

        public var environment: DeployHttpApiRequest.RestApiConfig.Environment?

        public var gatewayId: String?

        public var operationIds: [String]?

        public var revisionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environment?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.environment != nil {
                map["environment"] = self.environment?.toMap()
            }
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.operationIds != nil {
                map["operationIds"] = self.operationIds!
            }
            if self.revisionId != nil {
                map["revisionId"] = self.revisionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["environment"] as? [String: Any?] {
                var model = DeployHttpApiRequest.RestApiConfig.Environment()
                model.fromMap(value)
                self.environment = model
            }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["operationIds"] as? [String] {
                self.operationIds = value
            }
            if let value = dict["revisionId"] as? String {
                self.revisionId = value
            }
        }
    }
    public var httpApiConfig: DeployHttpApiRequest.HttpApiConfig?

    public var restApiConfig: DeployHttpApiRequest.RestApiConfig?

    public var routeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.httpApiConfig?.validate()
        try self.restApiConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.httpApiConfig != nil {
            map["httpApiConfig"] = self.httpApiConfig?.toMap()
        }
        if self.restApiConfig != nil {
            map["restApiConfig"] = self.restApiConfig?.toMap()
        }
        if self.routeId != nil {
            map["routeId"] = self.routeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["httpApiConfig"] as? [String: Any?] {
            var model = DeployHttpApiRequest.HttpApiConfig()
            model.fromMap(value)
            self.httpApiConfig = model
        }
        if let value = dict["restApiConfig"] as? [String: Any?] {
            var model = DeployHttpApiRequest.RestApiConfig()
            model.fromMap(value)
            self.restApiConfig = model
        }
        if let value = dict["routeId"] as? String {
            self.routeId = value
        }
    }
}

public class DeployHttpApiResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeployHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployHttpApiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeployHttpApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployMcpServerResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeployMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeployMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportHttpApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var specContentBase64: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.specContentBase64 != nil {
                map["specContentBase64"] = self.specContentBase64!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["specContentBase64"] as? String {
                self.specContentBase64 = value
            }
        }
    }
    public var code: String?

    public var data: ExportHttpApiResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ExportHttpApiResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportHttpApiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExportHttpApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var akSkIdentityConfigs: AkSkIdentityConfig?

        public var apiKeyIdentityConfig: ApiKeyIdentityConfig?

        public var consumerId: String?

        public var createTimestamp: Int64?

        public var deployStatus: String?

        public var description_: String?

        public var enable: Bool?

        public var jwtIdentityConfig: JwtIdentityConfig?

        public var name: String?

        public var updateTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.akSkIdentityConfigs?.validate()
            try self.apiKeyIdentityConfig?.validate()
            try self.jwtIdentityConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.akSkIdentityConfigs != nil {
                map["akSkIdentityConfigs"] = self.akSkIdentityConfigs?.toMap()
            }
            if self.apiKeyIdentityConfig != nil {
                map["apiKeyIdentityConfig"] = self.apiKeyIdentityConfig?.toMap()
            }
            if self.consumerId != nil {
                map["consumerId"] = self.consumerId!
            }
            if self.createTimestamp != nil {
                map["createTimestamp"] = self.createTimestamp!
            }
            if self.deployStatus != nil {
                map["deployStatus"] = self.deployStatus!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.jwtIdentityConfig != nil {
                map["jwtIdentityConfig"] = self.jwtIdentityConfig?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.updateTimestamp != nil {
                map["updateTimestamp"] = self.updateTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["akSkIdentityConfigs"] as? [String: Any?] {
                var model = AkSkIdentityConfig()
                model.fromMap(value)
                self.akSkIdentityConfigs = model
            }
            if let value = dict["apiKeyIdentityConfig"] as? [String: Any?] {
                var model = ApiKeyIdentityConfig()
                model.fromMap(value)
                self.apiKeyIdentityConfig = model
            }
            if let value = dict["consumerId"] as? String {
                self.consumerId = value
            }
            if let value = dict["createTimestamp"] as? Int64 {
                self.createTimestamp = value
            }
            if let value = dict["deployStatus"] as? String {
                self.deployStatus = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["jwtIdentityConfig"] as? [String: Any?] {
                var model = JwtIdentityConfig()
                model.fromMap(value)
                self.jwtIdentityConfig = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["updateTimestamp"] as? Int64 {
                self.updateTimestamp = value
            }
        }
    }
    public var code: String?

    public var data: GetConsumerResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetConsumerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetConsumerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetConsumerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumerAuthorizationRuleResponseBody : Tea.TeaModel {
    public var apiInfo: HttpApiApiInfo?

    public var consumerAuthorizationRuleId: String?

    public var consumerId: String?

    public var createTimestamp: Int64?

    public var deployStatus: String?

    public var environmentInfo: EnvironmentInfo?

    public var expireMode: String?

    public var expireStatus: String?

    public var expireTimestamp: Int64?

    public var gatewayInfo: GatewayInfo?

    public var requestId: String?

    public var resourceType: String?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiInfo?.validate()
        try self.environmentInfo?.validate()
        try self.gatewayInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfo != nil {
            map["apiInfo"] = self.apiInfo?.toMap()
        }
        if self.consumerAuthorizationRuleId != nil {
            map["consumerAuthorizationRuleId"] = self.consumerAuthorizationRuleId!
        }
        if self.consumerId != nil {
            map["consumerId"] = self.consumerId!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.deployStatus != nil {
            map["deployStatus"] = self.deployStatus!
        }
        if self.environmentInfo != nil {
            map["environmentInfo"] = self.environmentInfo?.toMap()
        }
        if self.expireMode != nil {
            map["expireMode"] = self.expireMode!
        }
        if self.expireStatus != nil {
            map["expireStatus"] = self.expireStatus!
        }
        if self.expireTimestamp != nil {
            map["expireTimestamp"] = self.expireTimestamp!
        }
        if self.gatewayInfo != nil {
            map["gatewayInfo"] = self.gatewayInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiInfo"] as? [String: Any?] {
            var model = HttpApiApiInfo()
            model.fromMap(value)
            self.apiInfo = model
        }
        if let value = dict["consumerAuthorizationRuleId"] as? String {
            self.consumerAuthorizationRuleId = value
        }
        if let value = dict["consumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["deployStatus"] as? String {
            self.deployStatus = value
        }
        if let value = dict["environmentInfo"] as? [String: Any?] {
            var model = EnvironmentInfo()
            model.fromMap(value)
            self.environmentInfo = model
        }
        if let value = dict["expireMode"] as? String {
            self.expireMode = value
        }
        if let value = dict["expireStatus"] as? String {
            self.expireStatus = value
        }
        if let value = dict["expireTimestamp"] as? Int64 {
            self.expireTimestamp = value
        }
        if let value = dict["gatewayInfo"] as? [String: Any?] {
            var model = GatewayInfo()
            model.fromMap(value)
            self.gatewayInfo = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["updateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
    }
}

public class GetConsumerAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerAuthorizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetConsumerAuthorizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDashboardRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var routeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.routeName != nil {
                map["routeName"] = self.routeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["routeName"] as? String {
                self.routeName = value
            }
        }
    }
    public var acceptLanguage: String?

    public var apiId: String?

    public var filter: GetDashboardRequest.Filter?

    public var name: String?

    public var pluginClassId: String?

    public var pluginId: String?

    public var routeId: String?

    public var source: String?

    public var upstreamCluster: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["acceptLanguage"] = self.acceptLanguage!
        }
        if self.apiId != nil {
            map["apiId"] = self.apiId!
        }
        if self.filter != nil {
            map["filter"] = self.filter?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pluginClassId != nil {
            map["pluginClassId"] = self.pluginClassId!
        }
        if self.pluginId != nil {
            map["pluginId"] = self.pluginId!
        }
        if self.routeId != nil {
            map["routeId"] = self.routeId!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.upstreamCluster != nil {
            map["upstreamCluster"] = self.upstreamCluster!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["apiId"] as? String {
            self.apiId = value
        }
        if let value = dict["filter"] as? [String: Any?] {
            var model = GetDashboardRequest.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pluginClassId"] as? String {
            self.pluginClassId = value
        }
        if let value = dict["pluginId"] as? String {
            self.pluginId = value
        }
        if let value = dict["routeId"] as? String {
            self.routeId = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["upstreamCluster"] as? String {
            self.upstreamCluster = value
        }
    }
}

public class GetDashboardShrinkRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var apiId: String?

    public var filterShrink: String?

    public var name: String?

    public var pluginClassId: String?

    public var pluginId: String?

    public var routeId: String?

    public var source: String?

    public var upstreamCluster: String?

    public override init() {
        super.init()
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
            map["acceptLanguage"] = self.acceptLanguage!
        }
        if self.apiId != nil {
            map["apiId"] = self.apiId!
        }
        if self.filterShrink != nil {
            map["filter"] = self.filterShrink!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pluginClassId != nil {
            map["pluginClassId"] = self.pluginClassId!
        }
        if self.pluginId != nil {
            map["pluginId"] = self.pluginId!
        }
        if self.routeId != nil {
            map["routeId"] = self.routeId!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.upstreamCluster != nil {
            map["upstreamCluster"] = self.upstreamCluster!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["apiId"] as? String {
            self.apiId = value
        }
        if let value = dict["filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pluginClassId"] as? String {
            self.pluginClassId = value
        }
        if let value = dict["pluginId"] as? String {
            self.pluginId = value
        }
        if let value = dict["routeId"] as? String {
            self.routeId = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["upstreamCluster"] as? String {
            self.upstreamCluster = value
        }
    }
}

public class GetDashboardResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gatewayId: String?

        public var name: String?

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
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
            if let value = dict["url"] as? String {
                self.url = value
            }
        }
    }
    public var code: Int32?

    public var data: GetDashboardResponseBody.Data?

    public var errorCode: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDashboardResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDashboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDashboardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDashboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDomainRequest : Tea.TeaModel {
    public var withStatistics: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.withStatistics != nil {
            map["withStatistics"] = self.withStatistics!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["withStatistics"] as? Bool {
            self.withStatistics = value
        }
    }
}

public class GetDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StatisticsInfo : Tea.TeaModel {
            public var resourceStatistics: [ResourceStatistic]?

            public var totalCount: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceStatistics != nil {
                    var tmp : [Any] = []
                    for k in self.resourceStatistics! {
                        tmp.append(k.toMap())
                    }
                    map["resourceStatistics"] = tmp
                }
                if self.totalCount != nil {
                    map["totalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["resourceStatistics"] as? [Any?] {
                    var tmp : [ResourceStatistic] = []
                    for v in value {
                        if v != nil {
                            var model = ResourceStatistic()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resourceStatistics = tmp
                }
                if let value = dict["totalCount"] as? String {
                    self.totalCount = value
                }
            }
        }
        public var algorithm: String?

        public var caCertIdentifier: String?

        public var certIdentifier: String?

        public var certName: String?

        public var clientCACert: String?

        public var createFrom: String?

        public var createTimestamp: Int64?

        public var default_: Bool?

        public var domainId: String?

        public var forceHttps: Bool?

        public var http2Option: String?

        public var issuer: String?

        public var mTLSEnabled: Bool?

        public var name: String?

        public var notAfterTimstamp: Int64?

        public var notBeforeTimestamp: Int64?

        public var protocol_: String?

        public var resourceGroupId: String?

        public var sans: String?

        public var statisticsInfo: GetDomainResponseBody.Data.StatisticsInfo?

        public var tlsCipherSuitesConfig: TlsCipherSuitesConfig?

        public var tlsMax: String?

        public var tlsMin: String?

        public var updatetimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.statisticsInfo?.validate()
            try self.tlsCipherSuitesConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algorithm != nil {
                map["algorithm"] = self.algorithm!
            }
            if self.caCertIdentifier != nil {
                map["caCertIdentifier"] = self.caCertIdentifier!
            }
            if self.certIdentifier != nil {
                map["certIdentifier"] = self.certIdentifier!
            }
            if self.certName != nil {
                map["certName"] = self.certName!
            }
            if self.clientCACert != nil {
                map["clientCACert"] = self.clientCACert!
            }
            if self.createFrom != nil {
                map["createFrom"] = self.createFrom!
            }
            if self.createTimestamp != nil {
                map["createTimestamp"] = self.createTimestamp!
            }
            if self.default_ != nil {
                map["default"] = self.default_!
            }
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            if self.forceHttps != nil {
                map["forceHttps"] = self.forceHttps!
            }
            if self.http2Option != nil {
                map["http2Option"] = self.http2Option!
            }
            if self.issuer != nil {
                map["issuer"] = self.issuer!
            }
            if self.mTLSEnabled != nil {
                map["mTLSEnabled"] = self.mTLSEnabled!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.notAfterTimstamp != nil {
                map["notAfterTimstamp"] = self.notAfterTimstamp!
            }
            if self.notBeforeTimestamp != nil {
                map["notBeforeTimestamp"] = self.notBeforeTimestamp!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.sans != nil {
                map["sans"] = self.sans!
            }
            if self.statisticsInfo != nil {
                map["statisticsInfo"] = self.statisticsInfo?.toMap()
            }
            if self.tlsCipherSuitesConfig != nil {
                map["tlsCipherSuitesConfig"] = self.tlsCipherSuitesConfig?.toMap()
            }
            if self.tlsMax != nil {
                map["tlsMax"] = self.tlsMax!
            }
            if self.tlsMin != nil {
                map["tlsMin"] = self.tlsMin!
            }
            if self.updatetimestamp != nil {
                map["updatetimestamp"] = self.updatetimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["caCertIdentifier"] as? String {
                self.caCertIdentifier = value
            }
            if let value = dict["certIdentifier"] as? String {
                self.certIdentifier = value
            }
            if let value = dict["certName"] as? String {
                self.certName = value
            }
            if let value = dict["clientCACert"] as? String {
                self.clientCACert = value
            }
            if let value = dict["createFrom"] as? String {
                self.createFrom = value
            }
            if let value = dict["createTimestamp"] as? Int64 {
                self.createTimestamp = value
            }
            if let value = dict["default"] as? Bool {
                self.default_ = value
            }
            if let value = dict["domainId"] as? String {
                self.domainId = value
            }
            if let value = dict["forceHttps"] as? Bool {
                self.forceHttps = value
            }
            if let value = dict["http2Option"] as? String {
                self.http2Option = value
            }
            if let value = dict["issuer"] as? String {
                self.issuer = value
            }
            if let value = dict["mTLSEnabled"] as? Bool {
                self.mTLSEnabled = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["notAfterTimstamp"] as? Int64 {
                self.notAfterTimstamp = value
            }
            if let value = dict["notBeforeTimestamp"] as? Int64 {
                self.notBeforeTimestamp = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["sans"] as? String {
                self.sans = value
            }
            if let value = dict["statisticsInfo"] as? [String: Any?] {
                var model = GetDomainResponseBody.Data.StatisticsInfo()
                model.fromMap(value)
                self.statisticsInfo = model
            }
            if let value = dict["tlsCipherSuitesConfig"] as? [String: Any?] {
                var model = TlsCipherSuitesConfig()
                model.fromMap(value)
                self.tlsCipherSuitesConfig = model
            }
            if let value = dict["tlsMax"] as? String {
                self.tlsMax = value
            }
            if let value = dict["tlsMin"] as? String {
                self.tlsMin = value
            }
            if let value = dict["updatetimestamp"] as? Int64 {
                self.updatetimestamp = value
            }
        }
    }
    public var code: String?

    public var data: GetDomainResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDomainResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEnvironmentRequest : Tea.TeaModel {
    public var withStatistics: Bool?

    public var withVpcInfo: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.withStatistics != nil {
            map["withStatistics"] = self.withStatistics!
        }
        if self.withVpcInfo != nil {
            map["withVpcInfo"] = self.withVpcInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["withStatistics"] as? Bool {
            self.withStatistics = value
        }
        if let value = dict["withVpcInfo"] as? Bool {
            self.withVpcInfo = value
        }
    }
}

public class GetEnvironmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StatisticsInfo : Tea.TeaModel {
            public var resourceStatistics: [ResourceStatistic]?

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
                if self.resourceStatistics != nil {
                    var tmp : [Any] = []
                    for k in self.resourceStatistics! {
                        tmp.append(k.toMap())
                    }
                    map["resourceStatistics"] = tmp
                }
                if self.totalCount != nil {
                    map["totalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["resourceStatistics"] as? [Any?] {
                    var tmp : [ResourceStatistic] = []
                    for v in value {
                        if v != nil {
                            var model = ResourceStatistic()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resourceStatistics = tmp
                }
                if let value = dict["totalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var alias: String?

        public var createTimestamp: Int64?

        public var default_: Bool?

        public var description_: String?

        public var environmentId: String?

        public var gatewayInfo: GatewayInfo?

        public var name: String?

        public var resourceGroupId: String?

        public var statisticsInfo: GetEnvironmentResponseBody.Data.StatisticsInfo?

        public var subDomainInfos: [SubDomainInfo]?

        public var updateTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gatewayInfo?.validate()
            try self.statisticsInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["alias"] = self.alias!
            }
            if self.createTimestamp != nil {
                map["createTimestamp"] = self.createTimestamp!
            }
            if self.default_ != nil {
                map["default"] = self.default_!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.gatewayInfo != nil {
                map["gatewayInfo"] = self.gatewayInfo?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.statisticsInfo != nil {
                map["statisticsInfo"] = self.statisticsInfo?.toMap()
            }
            if self.subDomainInfos != nil {
                var tmp : [Any] = []
                for k in self.subDomainInfos! {
                    tmp.append(k.toMap())
                }
                map["subDomainInfos"] = tmp
            }
            if self.updateTimestamp != nil {
                map["updateTimestamp"] = self.updateTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alias"] as? String {
                self.alias = value
            }
            if let value = dict["createTimestamp"] as? Int64 {
                self.createTimestamp = value
            }
            if let value = dict["default"] as? Bool {
                self.default_ = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["gatewayInfo"] as? [String: Any?] {
                var model = GatewayInfo()
                model.fromMap(value)
                self.gatewayInfo = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["statisticsInfo"] as? [String: Any?] {
                var model = GetEnvironmentResponseBody.Data.StatisticsInfo()
                model.fromMap(value)
                self.statisticsInfo = model
            }
            if let value = dict["subDomainInfos"] as? [Any?] {
                var tmp : [SubDomainInfo] = []
                for v in value {
                    if v != nil {
                        var model = SubDomainInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subDomainInfos = tmp
            }
            if let value = dict["updateTimestamp"] as? Int64 {
                self.updateTimestamp = value
            }
        }
    }
    public var code: String?

    public var data: GetEnvironmentResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetEnvironmentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnvironmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEnvironmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGatewayResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Environments : Tea.TeaModel {
            public var alias: String?

            public var environmentId: String?

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
                if self.alias != nil {
                    map["alias"] = self.alias!
                }
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["alias"] as? String {
                    self.alias = value
                }
                if let value = dict["environmentId"] as? String {
                    self.environmentId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class LoadBalancers : Tea.TeaModel {
            public class Ports : Tea.TeaModel {
                public var port: Int32?

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
                    if self.port != nil {
                        map["port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["protocol"] as? String {
                        self.protocol_ = value
                    }
                }
            }
            public var address: String?

            public var addressIpVersion: String?

            public var addressType: String?

            public var gatewayDefault: Bool?

            public var loadBalancerId: String?

            public var mode: String?

            public var ports: [GetGatewayResponseBody.Data.LoadBalancers.Ports]?

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
                if self.address != nil {
                    map["address"] = self.address!
                }
                if self.addressIpVersion != nil {
                    map["addressIpVersion"] = self.addressIpVersion!
                }
                if self.addressType != nil {
                    map["addressType"] = self.addressType!
                }
                if self.gatewayDefault != nil {
                    map["gatewayDefault"] = self.gatewayDefault!
                }
                if self.loadBalancerId != nil {
                    map["loadBalancerId"] = self.loadBalancerId!
                }
                if self.mode != nil {
                    map["mode"] = self.mode!
                }
                if self.ports != nil {
                    var tmp : [Any] = []
                    for k in self.ports! {
                        tmp.append(k.toMap())
                    }
                    map["ports"] = tmp
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["address"] as? String {
                    self.address = value
                }
                if let value = dict["addressIpVersion"] as? String {
                    self.addressIpVersion = value
                }
                if let value = dict["addressType"] as? String {
                    self.addressType = value
                }
                if let value = dict["gatewayDefault"] as? Bool {
                    self.gatewayDefault = value
                }
                if let value = dict["loadBalancerId"] as? String {
                    self.loadBalancerId = value
                }
                if let value = dict["mode"] as? String {
                    self.mode = value
                }
                if let value = dict["ports"] as? [Any?] {
                    var tmp : [GetGatewayResponseBody.Data.LoadBalancers.Ports] = []
                    for v in value {
                        if v != nil {
                            var model = GetGatewayResponseBody.Data.LoadBalancers.Ports()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ports = tmp
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class MaintenancePeriod : Tea.TeaModel {
            public var endTime: String?

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
                    map["endTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
            }
        }
        public class SecurityGroup : Tea.TeaModel {
            public var name: String?

            public var securityGroupId: String?

            public override init() {
                super.init()
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
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["securityGroupId"] as? String {
                    self.securityGroupId = value
                }
            }
        }
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public class VSwitch : Tea.TeaModel {
            public var name: String?

            public var vSwitchId: String?

            public override init() {
                super.init()
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
                if self.vSwitchId != nil {
                    map["vSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["vSwitchId"] as? String {
                    self.vSwitchId = value
                }
            }
        }
        public class Vpc : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["vpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public class Zones : Tea.TeaModel {
            public class VSwitch : Tea.TeaModel {
                public var name: String?

                public var vSwitchId: String?

                public override init() {
                    super.init()
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
                    if self.vSwitchId != nil {
                        map["vSwitchId"] = self.vSwitchId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["vSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                }
            }
            public var name: String?

            public var vSwitch: GetGatewayResponseBody.Data.Zones.VSwitch?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vSwitch?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.vSwitch != nil {
                    map["vSwitch"] = self.vSwitch?.toMap()
                }
                if self.zoneId != nil {
                    map["zoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["vSwitch"] as? [String: Any?] {
                    var model = GetGatewayResponseBody.Data.Zones.VSwitch()
                    model.fromMap(value)
                    self.vSwitch = model
                }
                if let value = dict["zoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var chargeType: String?

        public var createFrom: String?

        public var createTimestamp: Int64?

        public var environments: [GetGatewayResponseBody.Data.Environments]?

        public var expireTimestamp: Int64?

        public var gatewayEdition: String?

        public var gatewayId: String?

        public var gatewayType: String?

        public var isp: String?

        public var loadBalancers: [GetGatewayResponseBody.Data.LoadBalancers]?

        public var maintenancePeriod: GetGatewayResponseBody.Data.MaintenancePeriod?

        public var name: String?

        public var replicas: String?

        public var resourceGroupId: String?

        public var securityGroup: GetGatewayResponseBody.Data.SecurityGroup?

        public var spec: String?

        public var status: String?

        public var tags: [GetGatewayResponseBody.Data.Tags]?

        public var targetVersion: String?

        public var updateTimestamp: Int64?

        public var vSwitch: GetGatewayResponseBody.Data.VSwitch?

        public var version: String?

        public var vpc: GetGatewayResponseBody.Data.Vpc?

        public var zones: [GetGatewayResponseBody.Data.Zones]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.maintenancePeriod?.validate()
            try self.securityGroup?.validate()
            try self.vSwitch?.validate()
            try self.vpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.createFrom != nil {
                map["createFrom"] = self.createFrom!
            }
            if self.createTimestamp != nil {
                map["createTimestamp"] = self.createTimestamp!
            }
            if self.environments != nil {
                var tmp : [Any] = []
                for k in self.environments! {
                    tmp.append(k.toMap())
                }
                map["environments"] = tmp
            }
            if self.expireTimestamp != nil {
                map["expireTimestamp"] = self.expireTimestamp!
            }
            if self.gatewayEdition != nil {
                map["gatewayEdition"] = self.gatewayEdition!
            }
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.gatewayType != nil {
                map["gatewayType"] = self.gatewayType!
            }
            if self.isp != nil {
                map["isp"] = self.isp!
            }
            if self.loadBalancers != nil {
                var tmp : [Any] = []
                for k in self.loadBalancers! {
                    tmp.append(k.toMap())
                }
                map["loadBalancers"] = tmp
            }
            if self.maintenancePeriod != nil {
                map["maintenancePeriod"] = self.maintenancePeriod?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.replicas != nil {
                map["replicas"] = self.replicas!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.securityGroup != nil {
                map["securityGroup"] = self.securityGroup?.toMap()
            }
            if self.spec != nil {
                map["spec"] = self.spec!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.targetVersion != nil {
                map["targetVersion"] = self.targetVersion!
            }
            if self.updateTimestamp != nil {
                map["updateTimestamp"] = self.updateTimestamp!
            }
            if self.vSwitch != nil {
                map["vSwitch"] = self.vSwitch?.toMap()
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.vpc != nil {
                map["vpc"] = self.vpc?.toMap()
            }
            if self.zones != nil {
                var tmp : [Any] = []
                for k in self.zones! {
                    tmp.append(k.toMap())
                }
                map["zones"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["createFrom"] as? String {
                self.createFrom = value
            }
            if let value = dict["createTimestamp"] as? Int64 {
                self.createTimestamp = value
            }
            if let value = dict["environments"] as? [Any?] {
                var tmp : [GetGatewayResponseBody.Data.Environments] = []
                for v in value {
                    if v != nil {
                        var model = GetGatewayResponseBody.Data.Environments()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.environments = tmp
            }
            if let value = dict["expireTimestamp"] as? Int64 {
                self.expireTimestamp = value
            }
            if let value = dict["gatewayEdition"] as? String {
                self.gatewayEdition = value
            }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["gatewayType"] as? String {
                self.gatewayType = value
            }
            if let value = dict["isp"] as? String {
                self.isp = value
            }
            if let value = dict["loadBalancers"] as? [Any?] {
                var tmp : [GetGatewayResponseBody.Data.LoadBalancers] = []
                for v in value {
                    if v != nil {
                        var model = GetGatewayResponseBody.Data.LoadBalancers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.loadBalancers = tmp
            }
            if let value = dict["maintenancePeriod"] as? [String: Any?] {
                var model = GetGatewayResponseBody.Data.MaintenancePeriod()
                model.fromMap(value)
                self.maintenancePeriod = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["replicas"] as? String {
                self.replicas = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["securityGroup"] as? [String: Any?] {
                var model = GetGatewayResponseBody.Data.SecurityGroup()
                model.fromMap(value)
                self.securityGroup = model
            }
            if let value = dict["spec"] as? String {
                self.spec = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [GetGatewayResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetGatewayResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["targetVersion"] as? String {
                self.targetVersion = value
            }
            if let value = dict["updateTimestamp"] as? Int64 {
                self.updateTimestamp = value
            }
            if let value = dict["vSwitch"] as? [String: Any?] {
                var model = GetGatewayResponseBody.Data.VSwitch()
                model.fromMap(value)
                self.vSwitch = model
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
            if let value = dict["vpc"] as? [String: Any?] {
                var model = GetGatewayResponseBody.Data.Vpc()
                model.fromMap(value)
                self.vpc = model
            }
            if let value = dict["zones"] as? [Any?] {
                var tmp : [GetGatewayResponseBody.Data.Zones] = []
                for v in value {
                    if v != nil {
                        var model = GetGatewayResponseBody.Data.Zones()
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

    public var data: GetGatewayResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetGatewayResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHttpApiResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: HttpApiApiInfo?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HttpApiApiInfo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHttpApiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHttpApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHttpApiOperationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: HttpApiOperationInfo?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HttpApiOperationInfo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetHttpApiOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHttpApiOperationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHttpApiOperationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHttpApiRouteResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: HttpRoute?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HttpRoute()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetHttpApiRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHttpApiRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHttpApiRouteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMcpServerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AssembledSources : Tea.TeaModel {
            public var mcpServerId: String?

            public var mcpServerName: String?

            public var tools: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mcpServerId != nil {
                    map["mcpServerId"] = self.mcpServerId!
                }
                if self.mcpServerName != nil {
                    map["mcpServerName"] = self.mcpServerName!
                }
                if self.tools != nil {
                    map["tools"] = self.tools!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["mcpServerId"] as? String {
                    self.mcpServerId = value
                }
                if let value = dict["mcpServerName"] as? String {
                    self.mcpServerName = value
                }
                if let value = dict["tools"] as? [String] {
                    self.tools = value
                }
            }
        }
        public class DomainInfos : Tea.TeaModel {
            public var domainId: String?

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
                if self.domainId != nil {
                    map["domainId"] = self.domainId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["domainId"] as? String {
                    self.domainId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public class NacosMcpSyncInfo : Tea.TeaModel {
            public var importInstanceId: String?

            public var importMcpServerId: String?

            public var importNamespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.importInstanceId != nil {
                    map["importInstanceId"] = self.importInstanceId!
                }
                if self.importMcpServerId != nil {
                    map["importMcpServerId"] = self.importMcpServerId!
                }
                if self.importNamespace != nil {
                    map["importNamespace"] = self.importNamespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["importInstanceId"] as? String {
                    self.importInstanceId = value
                }
                if let value = dict["importMcpServerId"] as? String {
                    self.importMcpServerId = value
                }
                if let value = dict["importNamespace"] as? String {
                    self.importNamespace = value
                }
            }
        }
        public var assembledSources: [GetMcpServerResponseBody.Data.AssembledSources]?

        public var backend: Backend?

        public var createFromType: String?

        public var deployStatus: String?

        public var description_: String?

        public var domainIds: [String]?

        public var domainInfos: [GetMcpServerResponseBody.Data.DomainInfos]?

        public var environmentId: String?

        public var exposedUriPath: String?

        public var gatewayId: String?

        public var match: HttpRouteMatch?

        public var mcpServerConfig: String?

        public var mcpServerConfigPluginAttachmentId: String?

        public var mcpServerId: String?

        public var mcpServerPath: String?

        public var mcpStatisticsEnable: Bool?

        public var nacosMcpSyncInfo: GetMcpServerResponseBody.Data.NacosMcpSyncInfo?

        public var name: String?

        public var protocol_: String?

        public var routeId: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.backend?.validate()
            try self.match?.validate()
            try self.nacosMcpSyncInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assembledSources != nil {
                var tmp : [Any] = []
                for k in self.assembledSources! {
                    tmp.append(k.toMap())
                }
                map["assembledSources"] = tmp
            }
            if self.backend != nil {
                map["backend"] = self.backend?.toMap()
            }
            if self.createFromType != nil {
                map["createFromType"] = self.createFromType!
            }
            if self.deployStatus != nil {
                map["deployStatus"] = self.deployStatus!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domainIds != nil {
                map["domainIds"] = self.domainIds!
            }
            if self.domainInfos != nil {
                var tmp : [Any] = []
                for k in self.domainInfos! {
                    tmp.append(k.toMap())
                }
                map["domainInfos"] = tmp
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.exposedUriPath != nil {
                map["exposedUriPath"] = self.exposedUriPath!
            }
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.match != nil {
                map["match"] = self.match?.toMap()
            }
            if self.mcpServerConfig != nil {
                map["mcpServerConfig"] = self.mcpServerConfig!
            }
            if self.mcpServerConfigPluginAttachmentId != nil {
                map["mcpServerConfigPluginAttachmentId"] = self.mcpServerConfigPluginAttachmentId!
            }
            if self.mcpServerId != nil {
                map["mcpServerId"] = self.mcpServerId!
            }
            if self.mcpServerPath != nil {
                map["mcpServerPath"] = self.mcpServerPath!
            }
            if self.mcpStatisticsEnable != nil {
                map["mcpStatisticsEnable"] = self.mcpStatisticsEnable!
            }
            if self.nacosMcpSyncInfo != nil {
                map["nacosMcpSyncInfo"] = self.nacosMcpSyncInfo?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.routeId != nil {
                map["routeId"] = self.routeId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assembledSources"] as? [Any?] {
                var tmp : [GetMcpServerResponseBody.Data.AssembledSources] = []
                for v in value {
                    if v != nil {
                        var model = GetMcpServerResponseBody.Data.AssembledSources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.assembledSources = tmp
            }
            if let value = dict["backend"] as? [String: Any?] {
                var model = Backend()
                model.fromMap(value)
                self.backend = model
            }
            if let value = dict["createFromType"] as? String {
                self.createFromType = value
            }
            if let value = dict["deployStatus"] as? String {
                self.deployStatus = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domainIds"] as? [String] {
                self.domainIds = value
            }
            if let value = dict["domainInfos"] as? [Any?] {
                var tmp : [GetMcpServerResponseBody.Data.DomainInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetMcpServerResponseBody.Data.DomainInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domainInfos = tmp
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["exposedUriPath"] as? String {
                self.exposedUriPath = value
            }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["match"] as? [String: Any?] {
                var model = HttpRouteMatch()
                model.fromMap(value)
                self.match = model
            }
            if let value = dict["mcpServerConfig"] as? String {
                self.mcpServerConfig = value
            }
            if let value = dict["mcpServerConfigPluginAttachmentId"] as? String {
                self.mcpServerConfigPluginAttachmentId = value
            }
            if let value = dict["mcpServerId"] as? String {
                self.mcpServerId = value
            }
            if let value = dict["mcpServerPath"] as? String {
                self.mcpServerPath = value
            }
            if let value = dict["mcpStatisticsEnable"] as? Bool {
                self.mcpStatisticsEnable = value
            }
            if let value = dict["nacosMcpSyncInfo"] as? [String: Any?] {
                var model = GetMcpServerResponseBody.Data.NacosMcpSyncInfo()
                model.fromMap(value)
                self.nacosMcpSyncInfo = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["routeId"] as? String {
                self.routeId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var code: String?

    public var data: GetMcpServerResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetMcpServerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPluginAttachmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var enable: Bool?

        public var environmentInfo: EnvironmentInfo?

        public var gatewayInfo: GatewayInfo?

        public var parentResourceInfo: ParentResourceInfo?

        public var pluginAttachmentId: String?

        public var pluginClassInfo: PluginClassInfo?

        public var pluginConfig: String?

        public var pluginId: String?

        public var resourceInfos: [ResourceInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environmentInfo?.validate()
            try self.gatewayInfo?.validate()
            try self.parentResourceInfo?.validate()
            try self.pluginClassInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.environmentInfo != nil {
                map["environmentInfo"] = self.environmentInfo?.toMap()
            }
            if self.gatewayInfo != nil {
                map["gatewayInfo"] = self.gatewayInfo?.toMap()
            }
            if self.parentResourceInfo != nil {
                map["parentResourceInfo"] = self.parentResourceInfo?.toMap()
            }
            if self.pluginAttachmentId != nil {
                map["pluginAttachmentId"] = self.pluginAttachmentId!
            }
            if self.pluginClassInfo != nil {
                map["pluginClassInfo"] = self.pluginClassInfo?.toMap()
            }
            if self.pluginConfig != nil {
                map["pluginConfig"] = self.pluginConfig!
            }
            if self.pluginId != nil {
                map["pluginId"] = self.pluginId!
            }
            if self.resourceInfos != nil {
                var tmp : [Any] = []
                for k in self.resourceInfos! {
                    tmp.append(k.toMap())
                }
                map["resourceInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["environmentInfo"] as? [String: Any?] {
                var model = EnvironmentInfo()
                model.fromMap(value)
                self.environmentInfo = model
            }
            if let value = dict["gatewayInfo"] as? [String: Any?] {
                var model = GatewayInfo()
                model.fromMap(value)
                self.gatewayInfo = model
            }
            if let value = dict["parentResourceInfo"] as? [String: Any?] {
                var model = ParentResourceInfo()
                model.fromMap(value)
                self.parentResourceInfo = model
            }
            if let value = dict["pluginAttachmentId"] as? String {
                self.pluginAttachmentId = value
            }
            if let value = dict["pluginClassInfo"] as? [String: Any?] {
                var model = PluginClassInfo()
                model.fromMap(value)
                self.pluginClassInfo = model
            }
            if let value = dict["pluginConfig"] as? String {
                self.pluginConfig = value
            }
            if let value = dict["pluginId"] as? String {
                self.pluginId = value
            }
            if let value = dict["resourceInfos"] as? [Any?] {
                var tmp : [ResourceInfo] = []
                for v in value {
                    if v != nil {
                        var model = ResourceInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourceInfos = tmp
            }
        }
    }
    public var code: String?

    public var data: GetPluginAttachmentResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetPluginAttachmentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPluginAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPluginAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPluginAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPolicyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: PolicyDetailInfo?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = PolicyDetailInfo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPolicyAttachmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var attachResourceId: String?

        public var attachResourceType: String?

        public var config: String?

        public var environmentId: String?

        public var gatewayId: String?

        public var policyAttachmentId: String?

        public var policyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachResourceId != nil {
                map["attachResourceId"] = self.attachResourceId!
            }
            if self.attachResourceType != nil {
                map["attachResourceType"] = self.attachResourceType!
            }
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.policyAttachmentId != nil {
                map["policyAttachmentId"] = self.policyAttachmentId!
            }
            if self.policyId != nil {
                map["policyId"] = self.policyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["attachResourceId"] as? String {
                self.attachResourceId = value
            }
            if let value = dict["attachResourceType"] as? String {
                self.attachResourceType = value
            }
            if let value = dict["config"] as? String {
                self.config = value
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["policyAttachmentId"] as? String {
                self.policyAttachmentId = value
            }
            if let value = dict["policyId"] as? String {
                self.policyId = value
            }
        }
    }
    public var code: String?

    public var data: GetPolicyAttachmentResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetPolicyAttachmentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPolicyAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPolicyAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceOverviewRequest : Tea.TeaModel {
    public var gatewayType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
    }
}

public class GetResourceOverviewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Api : Tea.TeaModel {
            public var publishedCount: Int64?

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
                if self.publishedCount != nil {
                    map["publishedCount"] = self.publishedCount!
                }
                if self.totalCount != nil {
                    map["totalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["publishedCount"] as? Int64 {
                    self.publishedCount = value
                }
                if let value = dict["totalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class Gateway : Tea.TeaModel {
            public var runningCount: Int64?

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
                if self.runningCount != nil {
                    map["runningCount"] = self.runningCount!
                }
                if self.totalCount != nil {
                    map["totalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["runningCount"] as? Int64 {
                    self.runningCount = value
                }
                if let value = dict["totalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public var api: GetResourceOverviewResponseBody.Data.Api?

        public var gateway: GetResourceOverviewResponseBody.Data.Gateway?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.api?.validate()
            try self.gateway?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.api != nil {
                map["api"] = self.api?.toMap()
            }
            if self.gateway != nil {
                map["gateway"] = self.gateway?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["api"] as? [String: Any?] {
                var model = GetResourceOverviewResponseBody.Data.Api()
                model.fromMap(value)
                self.api = model
            }
            if let value = dict["gateway"] as? [String: Any?] {
                var model = GetResourceOverviewResponseBody.Data.Gateway()
                model.fromMap(value)
                self.gateway = model
            }
        }
    }
    public var code: String?

    public var data: GetResourceOverviewResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetResourceOverviewResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetResourceOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceOverviewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceOverviewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Service?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Service()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTraceConfigRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
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
            map["acceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acceptLanguage"] as? String {
            self.acceptLanguage = value
        }
    }
}

public class GetTraceConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var enable: Bool?

        public var sampleRatio: Int32?

        public var serviceId: String?

        public var servicePort: String?

        public var traceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.sampleRatio != nil {
                map["sampleRatio"] = self.sampleRatio!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.servicePort != nil {
                map["servicePort"] = self.servicePort!
            }
            if self.traceType != nil {
                map["traceType"] = self.traceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["sampleRatio"] as? Int32 {
                self.sampleRatio = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["servicePort"] as? String {
                self.servicePort = value
            }
            if let value = dict["traceType"] as? String {
                self.traceType = value
            }
        }
    }
    public var code: Int32?

    public var data: GetTraceConfigResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTraceConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTraceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTraceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTraceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportHttpApiRequest : Tea.TeaModel {
    public class SpecOssConfig : Tea.TeaModel {
        public var bucketName: String?

        public var objectKey: String?

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
            if self.bucketName != nil {
                map["bucketName"] = self.bucketName!
            }
            if self.objectKey != nil {
                map["objectKey"] = self.objectKey!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["objectKey"] as? String {
                self.objectKey = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var dryRun: Bool?

    public var gatewayId: String?

    public var mcpRouteId: String?

    public var name: String?

    public var resourceGroupId: String?

    public var specContentBase64: String?

    public var specFileUrl: String?

    public var specOssConfig: ImportHttpApiRequest.SpecOssConfig?

    public var strategy: String?

    public var targetHttpApiId: String?

    public var versionConfig: HttpApiVersionConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.specOssConfig?.validate()
        try self.versionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.mcpRouteId != nil {
            map["mcpRouteId"] = self.mcpRouteId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.specContentBase64 != nil {
            map["specContentBase64"] = self.specContentBase64!
        }
        if self.specFileUrl != nil {
            map["specFileUrl"] = self.specFileUrl!
        }
        if self.specOssConfig != nil {
            map["specOssConfig"] = self.specOssConfig?.toMap()
        }
        if self.strategy != nil {
            map["strategy"] = self.strategy!
        }
        if self.targetHttpApiId != nil {
            map["targetHttpApiId"] = self.targetHttpApiId!
        }
        if self.versionConfig != nil {
            map["versionConfig"] = self.versionConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["mcpRouteId"] as? String {
            self.mcpRouteId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["specContentBase64"] as? String {
            self.specContentBase64 = value
        }
        if let value = dict["specFileUrl"] as? String {
            self.specFileUrl = value
        }
        if let value = dict["specOssConfig"] as? [String: Any?] {
            var model = ImportHttpApiRequest.SpecOssConfig()
            model.fromMap(value)
            self.specOssConfig = model
        }
        if let value = dict["strategy"] as? String {
            self.strategy = value
        }
        if let value = dict["targetHttpApiId"] as? String {
            self.targetHttpApiId = value
        }
        if let value = dict["versionConfig"] as? [String: Any?] {
            var model = HttpApiVersionConfig()
            model.fromMap(value)
            self.versionConfig = model
        }
    }
}

public class ImportHttpApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DryRunInfo : Tea.TeaModel {
            public class FailureComponents : Tea.TeaModel {
                public var errorMessage: String?

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
                    if self.errorMessage != nil {
                        map["errorMessage"] = self.errorMessage!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["errorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public class FailureOperations : Tea.TeaModel {
                public var errorMessage: String?

                public var method: String?

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
                    if self.errorMessage != nil {
                        map["errorMessage"] = self.errorMessage!
                    }
                    if self.method != nil {
                        map["method"] = self.method!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["errorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["method"] as? String {
                        self.method = value
                    }
                    if let value = dict["path"] as? String {
                        self.path = value
                    }
                }
            }
            public class SuccessComponents : Tea.TeaModel {
                public var action: String?

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
                    if self.action != nil {
                        map["action"] = self.action!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["action"] as? String {
                        self.action = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public class SuccessOperations : Tea.TeaModel {
                public var action: String?

                public var method: String?

                public var name: String?

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
                    if self.action != nil {
                        map["action"] = self.action!
                    }
                    if self.method != nil {
                        map["method"] = self.method!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["action"] as? String {
                        self.action = value
                    }
                    if let value = dict["method"] as? String {
                        self.method = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["path"] as? String {
                        self.path = value
                    }
                }
            }
            public var errorMessages: [String]?

            public var existHttpApiInfo: HttpApiApiInfo?

            public var failureComponents: [ImportHttpApiResponseBody.Data.DryRunInfo.FailureComponents]?

            public var failureOperations: [ImportHttpApiResponseBody.Data.DryRunInfo.FailureOperations]?

            public var successComponents: [ImportHttpApiResponseBody.Data.DryRunInfo.SuccessComponents]?

            public var successOperations: [ImportHttpApiResponseBody.Data.DryRunInfo.SuccessOperations]?

            public var warningMessages: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.existHttpApiInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorMessages != nil {
                    map["errorMessages"] = self.errorMessages!
                }
                if self.existHttpApiInfo != nil {
                    map["existHttpApiInfo"] = self.existHttpApiInfo?.toMap()
                }
                if self.failureComponents != nil {
                    var tmp : [Any] = []
                    for k in self.failureComponents! {
                        tmp.append(k.toMap())
                    }
                    map["failureComponents"] = tmp
                }
                if self.failureOperations != nil {
                    var tmp : [Any] = []
                    for k in self.failureOperations! {
                        tmp.append(k.toMap())
                    }
                    map["failureOperations"] = tmp
                }
                if self.successComponents != nil {
                    var tmp : [Any] = []
                    for k in self.successComponents! {
                        tmp.append(k.toMap())
                    }
                    map["successComponents"] = tmp
                }
                if self.successOperations != nil {
                    var tmp : [Any] = []
                    for k in self.successOperations! {
                        tmp.append(k.toMap())
                    }
                    map["successOperations"] = tmp
                }
                if self.warningMessages != nil {
                    map["warningMessages"] = self.warningMessages!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["errorMessages"] as? [String] {
                    self.errorMessages = value
                }
                if let value = dict["existHttpApiInfo"] as? [String: Any?] {
                    var model = HttpApiApiInfo()
                    model.fromMap(value)
                    self.existHttpApiInfo = model
                }
                if let value = dict["failureComponents"] as? [Any?] {
                    var tmp : [ImportHttpApiResponseBody.Data.DryRunInfo.FailureComponents] = []
                    for v in value {
                        if v != nil {
                            var model = ImportHttpApiResponseBody.Data.DryRunInfo.FailureComponents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.failureComponents = tmp
                }
                if let value = dict["failureOperations"] as? [Any?] {
                    var tmp : [ImportHttpApiResponseBody.Data.DryRunInfo.FailureOperations] = []
                    for v in value {
                        if v != nil {
                            var model = ImportHttpApiResponseBody.Data.DryRunInfo.FailureOperations()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.failureOperations = tmp
                }
                if let value = dict["successComponents"] as? [Any?] {
                    var tmp : [ImportHttpApiResponseBody.Data.DryRunInfo.SuccessComponents] = []
                    for v in value {
                        if v != nil {
                            var model = ImportHttpApiResponseBody.Data.DryRunInfo.SuccessComponents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.successComponents = tmp
                }
                if let value = dict["successOperations"] as? [Any?] {
                    var tmp : [ImportHttpApiResponseBody.Data.DryRunInfo.SuccessOperations] = []
                    for v in value {
                        if v != nil {
                            var model = ImportHttpApiResponseBody.Data.DryRunInfo.SuccessOperations()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.successOperations = tmp
                }
                if let value = dict["warningMessages"] as? [String] {
                    self.warningMessages = value
                }
            }
        }
        public var dryRunInfo: ImportHttpApiResponseBody.Data.DryRunInfo?

        public var httpApiId: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dryRunInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dryRunInfo != nil {
                map["dryRunInfo"] = self.dryRunInfo?.toMap()
            }
            if self.httpApiId != nil {
                map["httpApiId"] = self.httpApiId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dryRunInfo"] as? [String: Any?] {
                var model = ImportHttpApiResponseBody.Data.DryRunInfo()
                model.fromMap(value)
                self.dryRunInfo = model
            }
            if let value = dict["httpApiId"] as? String {
                self.httpApiId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var data: ImportHttpApiResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ImportHttpApiResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImportHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportHttpApiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ImportHttpApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstallPluginRequest : Tea.TeaModel {
    public var gatewayIds: [String]?

    public var pluginClassId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayIds != nil {
            map["gatewayIds"] = self.gatewayIds!
        }
        if self.pluginClassId != nil {
            map["pluginClassId"] = self.pluginClassId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayIds"] as? [String] {
            self.gatewayIds = value
        }
        if let value = dict["pluginClassId"] as? String {
            self.pluginClassId = value
        }
    }
}

public class InstallPluginResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstallPluginResults : Tea.TeaModel {
            public var gatewayId: String?

            public var pluginId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.pluginId != nil {
                    map["pluginId"] = self.pluginId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["gatewayId"] as? String {
                    self.gatewayId = value
                }
                if let value = dict["pluginId"] as? String {
                    self.pluginId = value
                }
            }
        }
        public var installPluginResults: [InstallPluginResponseBody.Data.InstallPluginResults]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.installPluginResults != nil {
                var tmp : [Any] = []
                for k in self.installPluginResults! {
                    tmp.append(k.toMap())
                }
                map["installPluginResults"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["installPluginResults"] as? [Any?] {
                var tmp : [InstallPluginResponseBody.Data.InstallPluginResults] = []
                for v in value {
                    if v != nil {
                        var model = InstallPluginResponseBody.Data.InstallPluginResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.installPluginResults = tmp
            }
        }
    }
    public var code: String?

    public var data: InstallPluginResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = InstallPluginResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class InstallPluginResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallPluginResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = InstallPluginResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConsumersRequest : Tea.TeaModel {
    public var gatewayType: String?

    public var nameLike: String?

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
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListConsumersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var consumerId: String?

            public var createTimestamp: Int64?

            public var deployStatus: String?

            public var description_: String?

            public var enable: Bool?

            public var name: String?

            public var updateTimestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.consumerId != nil {
                    map["consumerId"] = self.consumerId!
                }
                if self.createTimestamp != nil {
                    map["createTimestamp"] = self.createTimestamp!
                }
                if self.deployStatus != nil {
                    map["deployStatus"] = self.deployStatus!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.updateTimestamp != nil {
                    map["updateTimestamp"] = self.updateTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["consumerId"] as? String {
                    self.consumerId = value
                }
                if let value = dict["createTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["deployStatus"] as? String {
                    self.deployStatus = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["updateTimestamp"] as? Int64 {
                    self.updateTimestamp = value
                }
            }
        }
        public var items: [ListConsumersResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [ListConsumersResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListConsumersResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListConsumersResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListConsumersResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListConsumersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConsumersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListConsumersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDomainsRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var gatewayType: String?

    public var nameLike: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ListDomainsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [DomainInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [DomainInfo] = []
                for v in value {
                    if v != nil {
                        var model = DomainInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListDomainsResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListDomainsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEnvironmentsRequest : Tea.TeaModel {
    public var aliasLike: String?

    public var gatewayId: String?

    public var gatewayNameLike: String?

    public var gatewayType: String?

    public var nameLike: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.aliasLike != nil {
            map["aliasLike"] = self.aliasLike!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.gatewayNameLike != nil {
            map["gatewayNameLike"] = self.gatewayNameLike!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliasLike"] as? String {
            self.aliasLike = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["gatewayNameLike"] as? String {
            self.gatewayNameLike = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ListEnvironmentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [EnvironmentInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [EnvironmentInfo] = []
                for v in value {
                    if v != nil {
                        var model = EnvironmentInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListEnvironmentsResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListEnvironmentsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListEnvironmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEnvironmentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGatewaysRequest : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var gatewayId: String?

    public var gatewayType: String?

    public var keyword: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var tag: [ListGatewaysRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListGatewaysRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListGatewaysRequest.Tag()
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

public class ListGatewaysShrinkRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var gatewayType: String?

    public var keyword: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListGatewaysResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class LoadBalancers : Tea.TeaModel {
                public class Ports : Tea.TeaModel {
                    public var port: Int32?

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
                        if self.port != nil {
                            map["port"] = self.port!
                        }
                        if self.protocol_ != nil {
                            map["protocol"] = self.protocol_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["port"] as? Int32 {
                            self.port = value
                        }
                        if let value = dict["protocol"] as? String {
                            self.protocol_ = value
                        }
                    }
                }
                public var address: String?

                public var addressIpVersion: String?

                public var addressType: String?

                public var gatewayDefault: Bool?

                public var loadBalancerId: String?

                public var mode: String?

                public var ports: [ListGatewaysResponseBody.Data.Items.LoadBalancers.Ports]?

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
                    if self.address != nil {
                        map["address"] = self.address!
                    }
                    if self.addressIpVersion != nil {
                        map["addressIpVersion"] = self.addressIpVersion!
                    }
                    if self.addressType != nil {
                        map["addressType"] = self.addressType!
                    }
                    if self.gatewayDefault != nil {
                        map["gatewayDefault"] = self.gatewayDefault!
                    }
                    if self.loadBalancerId != nil {
                        map["loadBalancerId"] = self.loadBalancerId!
                    }
                    if self.mode != nil {
                        map["mode"] = self.mode!
                    }
                    if self.ports != nil {
                        var tmp : [Any] = []
                        for k in self.ports! {
                            tmp.append(k.toMap())
                        }
                        map["ports"] = tmp
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["address"] as? String {
                        self.address = value
                    }
                    if let value = dict["addressIpVersion"] as? String {
                        self.addressIpVersion = value
                    }
                    if let value = dict["addressType"] as? String {
                        self.addressType = value
                    }
                    if let value = dict["gatewayDefault"] as? Bool {
                        self.gatewayDefault = value
                    }
                    if let value = dict["loadBalancerId"] as? String {
                        self.loadBalancerId = value
                    }
                    if let value = dict["mode"] as? String {
                        self.mode = value
                    }
                    if let value = dict["ports"] as? [Any?] {
                        var tmp : [ListGatewaysResponseBody.Data.Items.LoadBalancers.Ports] = []
                        for v in value {
                            if v != nil {
                                var model = ListGatewaysResponseBody.Data.Items.LoadBalancers.Ports()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.ports = tmp
                    }
                    if let value = dict["status"] as? String {
                        self.status = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public class SecurityGroup : Tea.TeaModel {
                public var securityGroupId: String?

                public override init() {
                    super.init()
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
                        map["securityGroupId"] = self.securityGroupId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["securityGroupId"] as? String {
                        self.securityGroupId = value
                    }
                }
            }
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
                        map["key"] = self.key!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["key"] as? String {
                        self.key = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public class VSwitch : Tea.TeaModel {
                public var vSwitchId: String?

                public override init() {
                    super.init()
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
                        map["vSwitchId"] = self.vSwitchId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["vSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                }
            }
            public class Vpc : Tea.TeaModel {
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
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public class Zones : Tea.TeaModel {
                public class VSwitch : Tea.TeaModel {
                    public var vSwitchId: String?

                    public override init() {
                        super.init()
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
                            map["vSwitchId"] = self.vSwitchId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["vSwitchId"] as? String {
                            self.vSwitchId = value
                        }
                    }
                }
                public var vSwitch: ListGatewaysResponseBody.Data.Items.Zones.VSwitch?

                public var zoneId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.vSwitch?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vSwitch != nil {
                        map["vSwitch"] = self.vSwitch?.toMap()
                    }
                    if self.zoneId != nil {
                        map["zoneId"] = self.zoneId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["vSwitch"] as? [String: Any?] {
                        var model = ListGatewaysResponseBody.Data.Items.Zones.VSwitch()
                        model.fromMap(value)
                        self.vSwitch = model
                    }
                    if let value = dict["zoneId"] as? String {
                        self.zoneId = value
                    }
                }
            }
            public var chargeType: String?

            public var createFrom: String?

            public var createTimestamp: Int64?

            public var expireTimestamp: Int64?

            public var gatewayEdition: String?

            public var gatewayId: String?

            public var gatewayType: String?

            public var legacy: Bool?

            public var loadBalancers: [ListGatewaysResponseBody.Data.Items.LoadBalancers]?

            public var name: String?

            public var replicas: String?

            public var resourceGroupId: String?

            public var securityGroup: ListGatewaysResponseBody.Data.Items.SecurityGroup?

            public var spec: String?

            public var status: String?

            public var subDomainInfos: [SubDomainInfo]?

            public var tags: [ListGatewaysResponseBody.Data.Items.Tags]?

            public var targetVersion: String?

            public var updateTimestamp: Int64?

            public var vSwitch: ListGatewaysResponseBody.Data.Items.VSwitch?

            public var version: String?

            public var vpc: ListGatewaysResponseBody.Data.Items.Vpc?

            public var zones: [ListGatewaysResponseBody.Data.Items.Zones]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.securityGroup?.validate()
                try self.vSwitch?.validate()
                try self.vpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chargeType != nil {
                    map["chargeType"] = self.chargeType!
                }
                if self.createFrom != nil {
                    map["createFrom"] = self.createFrom!
                }
                if self.createTimestamp != nil {
                    map["createTimestamp"] = self.createTimestamp!
                }
                if self.expireTimestamp != nil {
                    map["expireTimestamp"] = self.expireTimestamp!
                }
                if self.gatewayEdition != nil {
                    map["gatewayEdition"] = self.gatewayEdition!
                }
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.gatewayType != nil {
                    map["gatewayType"] = self.gatewayType!
                }
                if self.legacy != nil {
                    map["legacy"] = self.legacy!
                }
                if self.loadBalancers != nil {
                    var tmp : [Any] = []
                    for k in self.loadBalancers! {
                        tmp.append(k.toMap())
                    }
                    map["loadBalancers"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.replicas != nil {
                    map["replicas"] = self.replicas!
                }
                if self.resourceGroupId != nil {
                    map["resourceGroupId"] = self.resourceGroupId!
                }
                if self.securityGroup != nil {
                    map["securityGroup"] = self.securityGroup?.toMap()
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subDomainInfos != nil {
                    var tmp : [Any] = []
                    for k in self.subDomainInfos! {
                        tmp.append(k.toMap())
                    }
                    map["subDomainInfos"] = tmp
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["tags"] = tmp
                }
                if self.targetVersion != nil {
                    map["targetVersion"] = self.targetVersion!
                }
                if self.updateTimestamp != nil {
                    map["updateTimestamp"] = self.updateTimestamp!
                }
                if self.vSwitch != nil {
                    map["vSwitch"] = self.vSwitch?.toMap()
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.vpc != nil {
                    map["vpc"] = self.vpc?.toMap()
                }
                if self.zones != nil {
                    var tmp : [Any] = []
                    for k in self.zones! {
                        tmp.append(k.toMap())
                    }
                    map["zones"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["createFrom"] as? String {
                    self.createFrom = value
                }
                if let value = dict["createTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["expireTimestamp"] as? Int64 {
                    self.expireTimestamp = value
                }
                if let value = dict["gatewayEdition"] as? String {
                    self.gatewayEdition = value
                }
                if let value = dict["gatewayId"] as? String {
                    self.gatewayId = value
                }
                if let value = dict["gatewayType"] as? String {
                    self.gatewayType = value
                }
                if let value = dict["legacy"] as? Bool {
                    self.legacy = value
                }
                if let value = dict["loadBalancers"] as? [Any?] {
                    var tmp : [ListGatewaysResponseBody.Data.Items.LoadBalancers] = []
                    for v in value {
                        if v != nil {
                            var model = ListGatewaysResponseBody.Data.Items.LoadBalancers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.loadBalancers = tmp
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["replicas"] as? String {
                    self.replicas = value
                }
                if let value = dict["resourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["securityGroup"] as? [String: Any?] {
                    var model = ListGatewaysResponseBody.Data.Items.SecurityGroup()
                    model.fromMap(value)
                    self.securityGroup = model
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["subDomainInfos"] as? [Any?] {
                    var tmp : [SubDomainInfo] = []
                    for v in value {
                        if v != nil {
                            var model = SubDomainInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subDomainInfos = tmp
                }
                if let value = dict["tags"] as? [Any?] {
                    var tmp : [ListGatewaysResponseBody.Data.Items.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListGatewaysResponseBody.Data.Items.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["targetVersion"] as? String {
                    self.targetVersion = value
                }
                if let value = dict["updateTimestamp"] as? Int64 {
                    self.updateTimestamp = value
                }
                if let value = dict["vSwitch"] as? [String: Any?] {
                    var model = ListGatewaysResponseBody.Data.Items.VSwitch()
                    model.fromMap(value)
                    self.vSwitch = model
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["vpc"] as? [String: Any?] {
                    var model = ListGatewaysResponseBody.Data.Items.Vpc()
                    model.fromMap(value)
                    self.vpc = model
                }
                if let value = dict["zones"] as? [Any?] {
                    var tmp : [ListGatewaysResponseBody.Data.Items.Zones] = []
                    for v in value {
                        if v != nil {
                            var model = ListGatewaysResponseBody.Data.Items.Zones()
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
        public var items: [ListGatewaysResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int64?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [ListGatewaysResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListGatewaysResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int64 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListGatewaysResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListGatewaysResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewaysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGatewaysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHttpApiOperationsRequest : Tea.TeaModel {
    public var consumerAuthorizationRuleId: String?

    public var enableAuth: Bool?

    public var forDeploy: Bool?

    public var gatewayId: String?

    public var method: String?

    public var name: String?

    public var nameLike: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pathLike: String?

    public var withConsumerInEnvironmentId: String?

    public var withConsumerInfoById: String?

    public var withPluginAttachmentByPluginId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumerAuthorizationRuleId != nil {
            map["consumerAuthorizationRuleId"] = self.consumerAuthorizationRuleId!
        }
        if self.enableAuth != nil {
            map["enableAuth"] = self.enableAuth!
        }
        if self.forDeploy != nil {
            map["forDeploy"] = self.forDeploy!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pathLike != nil {
            map["pathLike"] = self.pathLike!
        }
        if self.withConsumerInEnvironmentId != nil {
            map["withConsumerInEnvironmentId"] = self.withConsumerInEnvironmentId!
        }
        if self.withConsumerInfoById != nil {
            map["withConsumerInfoById"] = self.withConsumerInfoById!
        }
        if self.withPluginAttachmentByPluginId != nil {
            map["withPluginAttachmentByPluginId"] = self.withPluginAttachmentByPluginId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["consumerAuthorizationRuleId"] as? String {
            self.consumerAuthorizationRuleId = value
        }
        if let value = dict["enableAuth"] as? Bool {
            self.enableAuth = value
        }
        if let value = dict["forDeploy"] as? Bool {
            self.forDeploy = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["method"] as? String {
            self.method = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["pathLike"] as? String {
            self.pathLike = value
        }
        if let value = dict["withConsumerInEnvironmentId"] as? String {
            self.withConsumerInEnvironmentId = value
        }
        if let value = dict["withConsumerInfoById"] as? String {
            self.withConsumerInfoById = value
        }
        if let value = dict["withPluginAttachmentByPluginId"] as? String {
            self.withPluginAttachmentByPluginId = value
        }
    }
}

public class ListHttpApiOperationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [HttpApiOperationInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [HttpApiOperationInfo] = []
                for v in value {
                    if v != nil {
                        var model = HttpApiOperationInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListHttpApiOperationsResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListHttpApiOperationsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListHttpApiOperationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHttpApiOperationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHttpApiOperationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHttpApiRoutesRequest : Tea.TeaModel {
    public var consumerAuthorizationRuleId: String?

    public var deployStatuses: String?

    public var domainId: String?

    public var environmentId: String?

    public var forDeploy: Bool?

    public var gatewayId: String?

    public var name: String?

    public var nameLike: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pathLike: String?

    public var withAuthPolicyInfo: Bool?

    public var withConsumerInfoById: String?

    public var withPluginAttachmentByPluginId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumerAuthorizationRuleId != nil {
            map["consumerAuthorizationRuleId"] = self.consumerAuthorizationRuleId!
        }
        if self.deployStatuses != nil {
            map["deployStatuses"] = self.deployStatuses!
        }
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.forDeploy != nil {
            map["forDeploy"] = self.forDeploy!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pathLike != nil {
            map["pathLike"] = self.pathLike!
        }
        if self.withAuthPolicyInfo != nil {
            map["withAuthPolicyInfo"] = self.withAuthPolicyInfo!
        }
        if self.withConsumerInfoById != nil {
            map["withConsumerInfoById"] = self.withConsumerInfoById!
        }
        if self.withPluginAttachmentByPluginId != nil {
            map["withPluginAttachmentByPluginId"] = self.withPluginAttachmentByPluginId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["consumerAuthorizationRuleId"] as? String {
            self.consumerAuthorizationRuleId = value
        }
        if let value = dict["deployStatuses"] as? String {
            self.deployStatuses = value
        }
        if let value = dict["domainId"] as? String {
            self.domainId = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["forDeploy"] as? Bool {
            self.forDeploy = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["pathLike"] as? String {
            self.pathLike = value
        }
        if let value = dict["withAuthPolicyInfo"] as? Bool {
            self.withAuthPolicyInfo = value
        }
        if let value = dict["withConsumerInfoById"] as? String {
            self.withConsumerInfoById = value
        }
        if let value = dict["withPluginAttachmentByPluginId"] as? String {
            self.withPluginAttachmentByPluginId = value
        }
    }
}

public class ListHttpApiRoutesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [HttpRoute]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [HttpRoute] = []
                for v in value {
                    if v != nil {
                        var model = HttpRoute()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListHttpApiRoutesResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListHttpApiRoutesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListHttpApiRoutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHttpApiRoutesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHttpApiRoutesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHttpApisRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var gatewayType: String?

    public var keyword: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var types: String?

    public var withAPIsPublishedToEnvironment: Bool?

    public var withAuthPolicyInEnvironmentId: String?

    public var withAuthPolicyList: Bool?

    public var withConsumerInfoById: String?

    public var withEnvironmentInfo: Bool?

    public var withEnvironmentInfoById: String?

    public var withIngressInfo: Bool?

    public var withPluginAttachmentByPluginId: String?

    public var withPolicyConfigs: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.types != nil {
            map["types"] = self.types!
        }
        if self.withAPIsPublishedToEnvironment != nil {
            map["withAPIsPublishedToEnvironment"] = self.withAPIsPublishedToEnvironment!
        }
        if self.withAuthPolicyInEnvironmentId != nil {
            map["withAuthPolicyInEnvironmentId"] = self.withAuthPolicyInEnvironmentId!
        }
        if self.withAuthPolicyList != nil {
            map["withAuthPolicyList"] = self.withAuthPolicyList!
        }
        if self.withConsumerInfoById != nil {
            map["withConsumerInfoById"] = self.withConsumerInfoById!
        }
        if self.withEnvironmentInfo != nil {
            map["withEnvironmentInfo"] = self.withEnvironmentInfo!
        }
        if self.withEnvironmentInfoById != nil {
            map["withEnvironmentInfoById"] = self.withEnvironmentInfoById!
        }
        if self.withIngressInfo != nil {
            map["withIngressInfo"] = self.withIngressInfo!
        }
        if self.withPluginAttachmentByPluginId != nil {
            map["withPluginAttachmentByPluginId"] = self.withPluginAttachmentByPluginId!
        }
        if self.withPolicyConfigs != nil {
            map["withPolicyConfigs"] = self.withPolicyConfigs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["types"] as? String {
            self.types = value
        }
        if let value = dict["withAPIsPublishedToEnvironment"] as? Bool {
            self.withAPIsPublishedToEnvironment = value
        }
        if let value = dict["withAuthPolicyInEnvironmentId"] as? String {
            self.withAuthPolicyInEnvironmentId = value
        }
        if let value = dict["withAuthPolicyList"] as? Bool {
            self.withAuthPolicyList = value
        }
        if let value = dict["withConsumerInfoById"] as? String {
            self.withConsumerInfoById = value
        }
        if let value = dict["withEnvironmentInfo"] as? Bool {
            self.withEnvironmentInfo = value
        }
        if let value = dict["withEnvironmentInfoById"] as? String {
            self.withEnvironmentInfoById = value
        }
        if let value = dict["withIngressInfo"] as? Bool {
            self.withIngressInfo = value
        }
        if let value = dict["withPluginAttachmentByPluginId"] as? String {
            self.withPluginAttachmentByPluginId = value
        }
        if let value = dict["withPolicyConfigs"] as? Bool {
            self.withPolicyConfigs = value
        }
    }
}

public class ListHttpApisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [HttpApiInfoByName]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [HttpApiInfoByName] = []
                for v in value {
                    if v != nil {
                        var model = HttpApiInfoByName()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListHttpApisResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListHttpApisResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListHttpApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHttpApisResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHttpApisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcpServersRequest : Tea.TeaModel {
    public var createFromTypes: String?

    public var deployStatuses: String?

    public var gatewayId: String?

    public var nameLike: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.createFromTypes != nil {
            map["createFromTypes"] = self.createFromTypes!
        }
        if self.deployStatuses != nil {
            map["deployStatuses"] = self.deployStatuses!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createFromTypes"] as? String {
            self.createFromTypes = value
        }
        if let value = dict["deployStatuses"] as? String {
            self.deployStatuses = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListMcpServersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class AssembledSources : Tea.TeaModel {
                public var mcpServerId: String?

                public var mcpServerName: String?

                public var tools: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mcpServerId != nil {
                        map["mcpServerId"] = self.mcpServerId!
                    }
                    if self.mcpServerName != nil {
                        map["mcpServerName"] = self.mcpServerName!
                    }
                    if self.tools != nil {
                        map["tools"] = self.tools!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["mcpServerId"] as? String {
                        self.mcpServerId = value
                    }
                    if let value = dict["mcpServerName"] as? String {
                        self.mcpServerName = value
                    }
                    if let value = dict["tools"] as? [String] {
                        self.tools = value
                    }
                }
            }
            public class NacosMcpSyncInfo : Tea.TeaModel {
                public var importInstanceId: String?

                public var importMcpServerId: String?

                public var importNamespace: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.importInstanceId != nil {
                        map["importInstanceId"] = self.importInstanceId!
                    }
                    if self.importMcpServerId != nil {
                        map["importMcpServerId"] = self.importMcpServerId!
                    }
                    if self.importNamespace != nil {
                        map["importNamespace"] = self.importNamespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["importInstanceId"] as? String {
                        self.importInstanceId = value
                    }
                    if let value = dict["importMcpServerId"] as? String {
                        self.importMcpServerId = value
                    }
                    if let value = dict["importNamespace"] as? String {
                        self.importNamespace = value
                    }
                }
            }
            public var assembledSources: [ListMcpServersResponseBody.Data.Items.AssembledSources]?

            public var backend: Backend?

            public var createFromType: String?

            public var deployStatus: String?

            public var description_: String?

            public var domainIds: [String]?

            public var domainInfos: [HttpApiDomainInfo]?

            public var environmentId: String?

            public var exposedUriPath: String?

            public var gatewayId: String?

            public var match: HttpRouteMatch?

            public var mcpServerConfig: String?

            public var mcpServerId: String?

            public var mcpServerPath: String?

            public var mcpStatisticsEnable: Bool?

            public var nacosMcpSyncInfo: ListMcpServersResponseBody.Data.Items.NacosMcpSyncInfo?

            public var name: String?

            public var protocol_: String?

            public var routeId: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.backend?.validate()
                try self.match?.validate()
                try self.nacosMcpSyncInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assembledSources != nil {
                    var tmp : [Any] = []
                    for k in self.assembledSources! {
                        tmp.append(k.toMap())
                    }
                    map["assembledSources"] = tmp
                }
                if self.backend != nil {
                    map["backend"] = self.backend?.toMap()
                }
                if self.createFromType != nil {
                    map["createFromType"] = self.createFromType!
                }
                if self.deployStatus != nil {
                    map["deployStatus"] = self.deployStatus!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.domainIds != nil {
                    map["domainIds"] = self.domainIds!
                }
                if self.domainInfos != nil {
                    var tmp : [Any] = []
                    for k in self.domainInfos! {
                        tmp.append(k.toMap())
                    }
                    map["domainInfos"] = tmp
                }
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                if self.exposedUriPath != nil {
                    map["exposedUriPath"] = self.exposedUriPath!
                }
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.mcpServerConfig != nil {
                    map["mcpServerConfig"] = self.mcpServerConfig!
                }
                if self.mcpServerId != nil {
                    map["mcpServerId"] = self.mcpServerId!
                }
                if self.mcpServerPath != nil {
                    map["mcpServerPath"] = self.mcpServerPath!
                }
                if self.mcpStatisticsEnable != nil {
                    map["mcpStatisticsEnable"] = self.mcpStatisticsEnable!
                }
                if self.nacosMcpSyncInfo != nil {
                    map["nacosMcpSyncInfo"] = self.nacosMcpSyncInfo?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.routeId != nil {
                    map["routeId"] = self.routeId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["assembledSources"] as? [Any?] {
                    var tmp : [ListMcpServersResponseBody.Data.Items.AssembledSources] = []
                    for v in value {
                        if v != nil {
                            var model = ListMcpServersResponseBody.Data.Items.AssembledSources()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.assembledSources = tmp
                }
                if let value = dict["backend"] as? [String: Any?] {
                    var model = Backend()
                    model.fromMap(value)
                    self.backend = model
                }
                if let value = dict["createFromType"] as? String {
                    self.createFromType = value
                }
                if let value = dict["deployStatus"] as? String {
                    self.deployStatus = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["domainIds"] as? [String] {
                    self.domainIds = value
                }
                if let value = dict["domainInfos"] as? [Any?] {
                    var tmp : [HttpApiDomainInfo] = []
                    for v in value {
                        if v != nil {
                            var model = HttpApiDomainInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.domainInfos = tmp
                }
                if let value = dict["environmentId"] as? String {
                    self.environmentId = value
                }
                if let value = dict["exposedUriPath"] as? String {
                    self.exposedUriPath = value
                }
                if let value = dict["gatewayId"] as? String {
                    self.gatewayId = value
                }
                if let value = dict["match"] as? [String: Any?] {
                    var model = HttpRouteMatch()
                    model.fromMap(value)
                    self.match = model
                }
                if let value = dict["mcpServerConfig"] as? String {
                    self.mcpServerConfig = value
                }
                if let value = dict["mcpServerId"] as? String {
                    self.mcpServerId = value
                }
                if let value = dict["mcpServerPath"] as? String {
                    self.mcpServerPath = value
                }
                if let value = dict["mcpStatisticsEnable"] as? Bool {
                    self.mcpStatisticsEnable = value
                }
                if let value = dict["nacosMcpSyncInfo"] as? [String: Any?] {
                    var model = ListMcpServersResponseBody.Data.Items.NacosMcpSyncInfo()
                    model.fromMap(value)
                    self.nacosMcpSyncInfo = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["routeId"] as? String {
                    self.routeId = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var items: [ListMcpServersResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [ListMcpServersResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListMcpServersResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListMcpServersResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListMcpServersResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMcpServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcpServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMcpServersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPluginAttachmentsRequest : Tea.TeaModel {
    public var attachResourceId: String?

    public var attachResourceType: String?

    public var attachResourceTypes: String?

    public var environmentId: String?

    public var gatewayId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pluginId: String?

    public var withParentResource: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachResourceId != nil {
            map["attachResourceId"] = self.attachResourceId!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.attachResourceTypes != nil {
            map["attachResourceTypes"] = self.attachResourceTypes!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pluginId != nil {
            map["pluginId"] = self.pluginId!
        }
        if self.withParentResource != nil {
            map["withParentResource"] = self.withParentResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceId"] as? String {
            self.attachResourceId = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["attachResourceTypes"] as? String {
            self.attachResourceTypes = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["pluginId"] as? String {
            self.pluginId = value
        }
        if let value = dict["withParentResource"] as? Bool {
            self.withParentResource = value
        }
    }
}

public class ListPluginAttachmentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var attachResourceType: String?

            public var enable: Bool?

            public var environmentInfo: EnvironmentInfo?

            public var parentResourceInfo: ParentResourceInfo?

            public var pluginAttachmentId: String?

            public var pluginClassInfo: PluginClassInfo?

            public var pluginConfig: String?

            public var pluginId: String?

            public var resourceInfos: [ResourceInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.environmentInfo?.validate()
                try self.parentResourceInfo?.validate()
                try self.pluginClassInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachResourceType != nil {
                    map["attachResourceType"] = self.attachResourceType!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.environmentInfo != nil {
                    map["environmentInfo"] = self.environmentInfo?.toMap()
                }
                if self.parentResourceInfo != nil {
                    map["parentResourceInfo"] = self.parentResourceInfo?.toMap()
                }
                if self.pluginAttachmentId != nil {
                    map["pluginAttachmentId"] = self.pluginAttachmentId!
                }
                if self.pluginClassInfo != nil {
                    map["pluginClassInfo"] = self.pluginClassInfo?.toMap()
                }
                if self.pluginConfig != nil {
                    map["pluginConfig"] = self.pluginConfig!
                }
                if self.pluginId != nil {
                    map["pluginId"] = self.pluginId!
                }
                if self.resourceInfos != nil {
                    var tmp : [Any] = []
                    for k in self.resourceInfos! {
                        tmp.append(k.toMap())
                    }
                    map["resourceInfos"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["attachResourceType"] as? String {
                    self.attachResourceType = value
                }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["environmentInfo"] as? [String: Any?] {
                    var model = EnvironmentInfo()
                    model.fromMap(value)
                    self.environmentInfo = model
                }
                if let value = dict["parentResourceInfo"] as? [String: Any?] {
                    var model = ParentResourceInfo()
                    model.fromMap(value)
                    self.parentResourceInfo = model
                }
                if let value = dict["pluginAttachmentId"] as? String {
                    self.pluginAttachmentId = value
                }
                if let value = dict["pluginClassInfo"] as? [String: Any?] {
                    var model = PluginClassInfo()
                    model.fromMap(value)
                    self.pluginClassInfo = model
                }
                if let value = dict["pluginConfig"] as? String {
                    self.pluginConfig = value
                }
                if let value = dict["pluginId"] as? String {
                    self.pluginId = value
                }
                if let value = dict["resourceInfos"] as? [Any?] {
                    var tmp : [ResourceInfo] = []
                    for v in value {
                        if v != nil {
                            var model = ResourceInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resourceInfos = tmp
                }
            }
        }
        public var items: [ListPluginAttachmentsResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [ListPluginAttachmentsResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListPluginAttachmentsResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListPluginAttachmentsResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListPluginAttachmentsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPluginAttachmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPluginAttachmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPluginAttachmentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPluginsRequest : Tea.TeaModel {
    public var attachResourceId: String?

    public var attachResourceType: String?

    public var gatewayId: String?

    public var gatewayType: String?

    public var includeBuiltinAiGateway: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pluginClassId: String?

    public var pluginClassName: String?

    public var withAttachmentInfo: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachResourceId != nil {
            map["attachResourceId"] = self.attachResourceId!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.includeBuiltinAiGateway != nil {
            map["includeBuiltinAiGateway"] = self.includeBuiltinAiGateway!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pluginClassId != nil {
            map["pluginClassId"] = self.pluginClassId!
        }
        if self.pluginClassName != nil {
            map["pluginClassName"] = self.pluginClassName!
        }
        if self.withAttachmentInfo != nil {
            map["withAttachmentInfo"] = self.withAttachmentInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceId"] as? String {
            self.attachResourceId = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["includeBuiltinAiGateway"] as? Bool {
            self.includeBuiltinAiGateway = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["pluginClassId"] as? String {
            self.pluginClassId = value
        }
        if let value = dict["pluginClassName"] as? String {
            self.pluginClassName = value
        }
        if let value = dict["withAttachmentInfo"] as? Bool {
            self.withAttachmentInfo = value
        }
    }
}

public class ListPluginsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class AttachmentInfo : Tea.TeaModel {
                public var enable: String?

                public var pluginAttachmentId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enable != nil {
                        map["enable"] = self.enable!
                    }
                    if self.pluginAttachmentId != nil {
                        map["pluginAttachmentId"] = self.pluginAttachmentId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enable"] as? String {
                        self.enable = value
                    }
                    if let value = dict["pluginAttachmentId"] as? String {
                        self.pluginAttachmentId = value
                    }
                }
            }
            public class GatewayInfo : Tea.TeaModel {
                public var gatewayId: String?

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
                    if self.gatewayId != nil {
                        map["gatewayId"] = self.gatewayId!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["gatewayId"] as? String {
                        self.gatewayId = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public class PluginClassInfo : Tea.TeaModel {
                public var alias: String?

                public var executePriority: String?

                public var executeStage: String?

                public var name: String?

                public var pluginClassId: String?

                public var source: String?

                public var version: String?

                public var versionDescription: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alias != nil {
                        map["alias"] = self.alias!
                    }
                    if self.executePriority != nil {
                        map["executePriority"] = self.executePriority!
                    }
                    if self.executeStage != nil {
                        map["executeStage"] = self.executeStage!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.pluginClassId != nil {
                        map["pluginClassId"] = self.pluginClassId!
                    }
                    if self.source != nil {
                        map["source"] = self.source!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    if self.versionDescription != nil {
                        map["versionDescription"] = self.versionDescription!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["alias"] as? String {
                        self.alias = value
                    }
                    if let value = dict["executePriority"] as? String {
                        self.executePriority = value
                    }
                    if let value = dict["executeStage"] as? String {
                        self.executeStage = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["pluginClassId"] as? String {
                        self.pluginClassId = value
                    }
                    if let value = dict["source"] as? String {
                        self.source = value
                    }
                    if let value = dict["version"] as? String {
                        self.version = value
                    }
                    if let value = dict["versionDescription"] as? String {
                        self.versionDescription = value
                    }
                }
            }
            public var attachmentInfo: ListPluginsResponseBody.Data.Items.AttachmentInfo?

            public var gatewayInfo: ListPluginsResponseBody.Data.Items.GatewayInfo?

            public var pluginClassInfo: ListPluginsResponseBody.Data.Items.PluginClassInfo?

            public var pluginId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.attachmentInfo?.validate()
                try self.gatewayInfo?.validate()
                try self.pluginClassInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachmentInfo != nil {
                    map["attachmentInfo"] = self.attachmentInfo?.toMap()
                }
                if self.gatewayInfo != nil {
                    map["gatewayInfo"] = self.gatewayInfo?.toMap()
                }
                if self.pluginClassInfo != nil {
                    map["pluginClassInfo"] = self.pluginClassInfo?.toMap()
                }
                if self.pluginId != nil {
                    map["pluginId"] = self.pluginId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["attachmentInfo"] as? [String: Any?] {
                    var model = ListPluginsResponseBody.Data.Items.AttachmentInfo()
                    model.fromMap(value)
                    self.attachmentInfo = model
                }
                if let value = dict["gatewayInfo"] as? [String: Any?] {
                    var model = ListPluginsResponseBody.Data.Items.GatewayInfo()
                    model.fromMap(value)
                    self.gatewayInfo = model
                }
                if let value = dict["pluginClassInfo"] as? [String: Any?] {
                    var model = ListPluginsResponseBody.Data.Items.PluginClassInfo()
                    model.fromMap(value)
                    self.pluginClassInfo = model
                }
                if let value = dict["pluginId"] as? String {
                    self.pluginId = value
                }
            }
        }
        public var items: [ListPluginsResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [ListPluginsResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListPluginsResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListPluginsResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListPluginsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPluginsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPluginsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPluginsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPoliciesRequest : Tea.TeaModel {
    public var attachResourceId: String?

    public var attachResourceType: String?

    public var environmentId: String?

    public var gatewayId: String?

    public var withAttachments: Bool?

    public var withSystemPolicy: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachResourceId != nil {
            map["attachResourceId"] = self.attachResourceId!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.withAttachments != nil {
            map["withAttachments"] = self.withAttachments!
        }
        if self.withSystemPolicy != nil {
            map["withSystemPolicy"] = self.withSystemPolicy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceId"] as? String {
            self.attachResourceId = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["withAttachments"] as? Bool {
            self.withAttachments = value
        }
        if let value = dict["withSystemPolicy"] as? Bool {
            self.withSystemPolicy = value
        }
    }
}

public class ListPoliciesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [PolicyInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [PolicyInfo] = []
                for v in value {
                    if v != nil {
                        var model = PolicyInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListPoliciesResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListPoliciesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPolicyClassesRequest : Tea.TeaModel {
    public var attachResourceId: String?

    public var attachResourceType: String?

    public var direction: String?

    public var gatewayId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.attachResourceId != nil {
            map["attachResourceId"] = self.attachResourceId!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.direction != nil {
            map["direction"] = self.direction!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceId"] as? String {
            self.attachResourceId = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["direction"] as? String {
            self.direction = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListPolicyClassesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [PolicyClassInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [PolicyClassInfo] = []
                for v in value {
                    if v != nil {
                        var model = PolicyClassInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListPolicyClassesResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListPolicyClassesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPolicyClassesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyClassesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPolicyClassesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var sourceType: String?

    public var sourceTypes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.sourceTypes != nil {
            map["sourceTypes"] = self.sourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["sourceTypes"] as? String {
            self.sourceTypes = value
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [Service]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [Service] = []
                for v in value {
                    if v != nil {
                        var model = Service()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListServicesResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListServicesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSslCertsRequest : Tea.TeaModel {
    public var certNameLike: String?

    public var domainName: String?

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
        if self.certNameLike != nil {
            map["certNameLike"] = self.certNameLike!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certNameLike"] as? String {
            self.certNameLike = value
        }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListSslCertsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [SslCertMetaInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [SslCertMetaInfo] = []
                for v in value {
                    if v != nil {
                        var model = SslCertMetaInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? Int32 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: ListSslCertsResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListSslCertsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

public class ListZonesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var supportQat: String?

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
                if self.supportQat != nil {
                    map["supportQat"] = self.supportQat!
                }
                if self.zoneId != nil {
                    map["zoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["supportQat"] as? String {
                    self.supportQat = value
                }
                if let value = dict["zoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var items: [ListZonesResponseBody.Data.Items]?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [ListZonesResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListZonesResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
        }
    }
    public var code: String?

    public var data: ListZonesResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListZonesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryConsumerAuthorizationRulesRequest : Tea.TeaModel {
    public var apiNameLike: String?

    public var consumerId: String?

    public var consumerNameLike: String?

    public var environmentId: String?

    public var groupByApi: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentResourceId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var resourceTypes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiNameLike != nil {
            map["apiNameLike"] = self.apiNameLike!
        }
        if self.consumerId != nil {
            map["consumerId"] = self.consumerId!
        }
        if self.consumerNameLike != nil {
            map["consumerNameLike"] = self.consumerNameLike!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.groupByApi != nil {
            map["groupByApi"] = self.groupByApi!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.parentResourceId != nil {
            map["parentResourceId"] = self.parentResourceId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.resourceTypes != nil {
            map["resourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiNameLike"] as? String {
            self.apiNameLike = value
        }
        if let value = dict["consumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["consumerNameLike"] as? String {
            self.consumerNameLike = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["groupByApi"] as? Bool {
            self.groupByApi = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["parentResourceId"] as? String {
            self.parentResourceId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["resourceTypes"] as? String {
            self.resourceTypes = value
        }
    }
}

public class QueryConsumerAuthorizationRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class ResourceInfo : Tea.TeaModel {
                public var operationInfo: HttpApiOperationInfo?

                public var route: HttpRoute?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.operationInfo?.validate()
                    try self.route?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.operationInfo != nil {
                        map["operationInfo"] = self.operationInfo?.toMap()
                    }
                    if self.route != nil {
                        map["route"] = self.route?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["operationInfo"] as? [String: Any?] {
                        var model = HttpApiOperationInfo()
                        model.fromMap(value)
                        self.operationInfo = model
                    }
                    if let value = dict["route"] as? [String: Any?] {
                        var model = HttpRoute()
                        model.fromMap(value)
                        self.route = model
                    }
                }
            }
            public var apiInfo: HttpApiApiInfo?

            public var consumerAuthorizationRuleId: String?

            public var consumerId: String?

            public var consumerInfo: ConsumerInfo?

            public var createTimestamp: Int64?

            public var deployStatus: String?

            public var environmentInfo: EnvironmentInfo?

            public var expireMode: String?

            public var expireStatus: String?

            public var expireTimestamp: Int64?

            public var gatewayInfo: GatewayInfo?

            public var resourceId: String?

            public var resourceInfo: QueryConsumerAuthorizationRulesResponseBody.Data.Items.ResourceInfo?

            public var resourceType: String?

            public var updateTimestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.apiInfo?.validate()
                try self.consumerInfo?.validate()
                try self.environmentInfo?.validate()
                try self.gatewayInfo?.validate()
                try self.resourceInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiInfo != nil {
                    map["apiInfo"] = self.apiInfo?.toMap()
                }
                if self.consumerAuthorizationRuleId != nil {
                    map["consumerAuthorizationRuleId"] = self.consumerAuthorizationRuleId!
                }
                if self.consumerId != nil {
                    map["consumerId"] = self.consumerId!
                }
                if self.consumerInfo != nil {
                    map["consumerInfo"] = self.consumerInfo?.toMap()
                }
                if self.createTimestamp != nil {
                    map["createTimestamp"] = self.createTimestamp!
                }
                if self.deployStatus != nil {
                    map["deployStatus"] = self.deployStatus!
                }
                if self.environmentInfo != nil {
                    map["environmentInfo"] = self.environmentInfo?.toMap()
                }
                if self.expireMode != nil {
                    map["expireMode"] = self.expireMode!
                }
                if self.expireStatus != nil {
                    map["expireStatus"] = self.expireStatus!
                }
                if self.expireTimestamp != nil {
                    map["expireTimestamp"] = self.expireTimestamp!
                }
                if self.gatewayInfo != nil {
                    map["gatewayInfo"] = self.gatewayInfo?.toMap()
                }
                if self.resourceId != nil {
                    map["resourceId"] = self.resourceId!
                }
                if self.resourceInfo != nil {
                    map["resourceInfo"] = self.resourceInfo?.toMap()
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                if self.updateTimestamp != nil {
                    map["updateTimestamp"] = self.updateTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["apiInfo"] as? [String: Any?] {
                    var model = HttpApiApiInfo()
                    model.fromMap(value)
                    self.apiInfo = model
                }
                if let value = dict["consumerAuthorizationRuleId"] as? String {
                    self.consumerAuthorizationRuleId = value
                }
                if let value = dict["consumerId"] as? String {
                    self.consumerId = value
                }
                if let value = dict["consumerInfo"] as? [String: Any?] {
                    var model = ConsumerInfo()
                    model.fromMap(value)
                    self.consumerInfo = model
                }
                if let value = dict["createTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["deployStatus"] as? String {
                    self.deployStatus = value
                }
                if let value = dict["environmentInfo"] as? [String: Any?] {
                    var model = EnvironmentInfo()
                    model.fromMap(value)
                    self.environmentInfo = model
                }
                if let value = dict["expireMode"] as? String {
                    self.expireMode = value
                }
                if let value = dict["expireStatus"] as? String {
                    self.expireStatus = value
                }
                if let value = dict["expireTimestamp"] as? Int64 {
                    self.expireTimestamp = value
                }
                if let value = dict["gatewayInfo"] as? [String: Any?] {
                    var model = GatewayInfo()
                    model.fromMap(value)
                    self.gatewayInfo = model
                }
                if let value = dict["resourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["resourceInfo"] as? [String: Any?] {
                    var model = QueryConsumerAuthorizationRulesResponseBody.Data.Items.ResourceInfo()
                    model.fromMap(value)
                    self.resourceInfo = model
                }
                if let value = dict["resourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["updateTimestamp"] as? Int64 {
                    self.updateTimestamp = value
                }
            }
        }
        public var items: [QueryConsumerAuthorizationRulesResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: String?

        public override init() {
            super.init()
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
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [QueryConsumerAuthorizationRulesResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = QueryConsumerAuthorizationRulesResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["totalSize"] as? String {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: QueryConsumerAuthorizationRulesResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryConsumerAuthorizationRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryConsumerAuthorizationRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryConsumerAuthorizationRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryConsumerAuthorizationRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveConsumerAuthorizationRuleResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveConsumerAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveConsumerAuthorizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveConsumerAuthorizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartGatewayResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestartGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestartGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnDeployMcpServerResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnDeployMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnDeployMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnDeployMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UndeployHttpApiRequest : Tea.TeaModel {
    public var environmentId: String?

    public var gatewayId: String?

    public var operationId: String?

    public var routeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.operationId != nil {
            map["operationId"] = self.operationId!
        }
        if self.routeId != nil {
            map["routeId"] = self.routeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["operationId"] as? String {
            self.operationId = value
        }
        if let value = dict["routeId"] as? String {
            self.routeId = value
        }
    }
}

public class UndeployHttpApiResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UndeployHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UndeployHttpApiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UndeployHttpApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UninstallPluginResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UninstallPluginResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallPluginResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UninstallPluginResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAndAttachPolicyRequest : Tea.TeaModel {
    public var attachResourceIds: [String]?

    public var attachResourceType: String?

    public var config: String?

    public var description_: String?

    public var environmentId: String?

    public var gatewayId: String?

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
        if self.attachResourceIds != nil {
            map["attachResourceIds"] = self.attachResourceIds!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceIds"] as? [String] {
            self.attachResourceIds = value
        }
        if let value = dict["attachResourceType"] as? String {
            self.attachResourceType = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class UpdateAndAttachPolicyResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAndAttachPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAndAttachPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAndAttachPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConsumerRequest : Tea.TeaModel {
    public var akSkIdentityConfigs: [AkSkIdentityConfig]?

    public var apikeyIdentityConfig: ApiKeyIdentityConfig?

    public var description_: String?

    public var enable: Bool?

    public var jwtIdentityConfig: JwtIdentityConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apikeyIdentityConfig?.validate()
        try self.jwtIdentityConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.akSkIdentityConfigs != nil {
            var tmp : [Any] = []
            for k in self.akSkIdentityConfigs! {
                tmp.append(k.toMap())
            }
            map["akSkIdentityConfigs"] = tmp
        }
        if self.apikeyIdentityConfig != nil {
            map["apikeyIdentityConfig"] = self.apikeyIdentityConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.jwtIdentityConfig != nil {
            map["jwtIdentityConfig"] = self.jwtIdentityConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["akSkIdentityConfigs"] as? [Any?] {
            var tmp : [AkSkIdentityConfig] = []
            for v in value {
                if v != nil {
                    var model = AkSkIdentityConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.akSkIdentityConfigs = tmp
        }
        if let value = dict["apikeyIdentityConfig"] as? [String: Any?] {
            var model = ApiKeyIdentityConfig()
            model.fromMap(value)
            self.apikeyIdentityConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["jwtIdentityConfig"] as? [String: Any?] {
            var model = JwtIdentityConfig()
            model.fromMap(value)
            self.jwtIdentityConfig = model
        }
    }
}

public class UpdateConsumerResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateConsumerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConsumerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateConsumerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConsumerAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationResourceInfos: [AuthorizationResourceInfo]?

    public var expireMode: String?

    public var expireTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationResourceInfos != nil {
            var tmp : [Any] = []
            for k in self.authorizationResourceInfos! {
                tmp.append(k.toMap())
            }
            map["authorizationResourceInfos"] = tmp
        }
        if self.expireMode != nil {
            map["expireMode"] = self.expireMode!
        }
        if self.expireTimestamp != nil {
            map["expireTimestamp"] = self.expireTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authorizationResourceInfos"] as? [Any?] {
            var tmp : [AuthorizationResourceInfo] = []
            for v in value {
                if v != nil {
                    var model = AuthorizationResourceInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.authorizationResourceInfos = tmp
        }
        if let value = dict["expireMode"] as? String {
            self.expireMode = value
        }
        if let value = dict["expireTimestamp"] as? Int64 {
            self.expireTimestamp = value
        }
    }
}

public class UpdateConsumerAuthorizationRuleResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateConsumerAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConsumerAuthorizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateConsumerAuthorizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDomainRequest : Tea.TeaModel {
    public var caCertIdentifier: String?

    public var certIdentifier: String?

    public var clientCACert: String?

    public var forceHttps: Bool?

    public var http2Option: String?

    public var mTLSEnabled: Bool?

    public var protocol_: String?

    public var tlsCipherSuitesConfig: TlsCipherSuitesConfig?

    public var tlsMax: String?

    public var tlsMin: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tlsCipherSuitesConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caCertIdentifier != nil {
            map["caCertIdentifier"] = self.caCertIdentifier!
        }
        if self.certIdentifier != nil {
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.clientCACert != nil {
            map["clientCACert"] = self.clientCACert!
        }
        if self.forceHttps != nil {
            map["forceHttps"] = self.forceHttps!
        }
        if self.http2Option != nil {
            map["http2Option"] = self.http2Option!
        }
        if self.mTLSEnabled != nil {
            map["mTLSEnabled"] = self.mTLSEnabled!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.tlsCipherSuitesConfig != nil {
            map["tlsCipherSuitesConfig"] = self.tlsCipherSuitesConfig?.toMap()
        }
        if self.tlsMax != nil {
            map["tlsMax"] = self.tlsMax!
        }
        if self.tlsMin != nil {
            map["tlsMin"] = self.tlsMin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["caCertIdentifier"] as? String {
            self.caCertIdentifier = value
        }
        if let value = dict["certIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["clientCACert"] as? String {
            self.clientCACert = value
        }
        if let value = dict["forceHttps"] as? Bool {
            self.forceHttps = value
        }
        if let value = dict["http2Option"] as? String {
            self.http2Option = value
        }
        if let value = dict["mTLSEnabled"] as? Bool {
            self.mTLSEnabled = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["tlsCipherSuitesConfig"] as? [String: Any?] {
            var model = TlsCipherSuitesConfig()
            model.fromMap(value)
            self.tlsCipherSuitesConfig = model
        }
        if let value = dict["tlsMax"] as? String {
            self.tlsMax = value
        }
        if let value = dict["tlsMin"] as? String {
            self.tlsMin = value
        }
    }
}

public class UpdateDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deployRevisionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deployRevisionId != nil {
                map["deployRevisionId"] = self.deployRevisionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deployRevisionId"] as? String {
                self.deployRevisionId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateDomainResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateDomainResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEnvironmentRequest : Tea.TeaModel {
    public var alias: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateEnvironmentResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnvironmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateEnvironmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGatewayFeatureRequest : Tea.TeaModel {
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
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class UpdateGatewayFeatureResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateGatewayFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateGatewayFeatureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGatewayNameRequest : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class UpdateGatewayNameResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateGatewayNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateGatewayNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateHttpApiRequest : Tea.TeaModel {
    public class IngressConfig : Tea.TeaModel {
        public var environmentId: String?

        public var ingressClass: String?

        public var overrideIngressIp: Bool?

        public var sourceId: String?

        public var watchNamespace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.ingressClass != nil {
                map["ingressClass"] = self.ingressClass!
            }
            if self.overrideIngressIp != nil {
                map["overrideIngressIp"] = self.overrideIngressIp!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.watchNamespace != nil {
                map["watchNamespace"] = self.watchNamespace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["ingressClass"] as? String {
                self.ingressClass = value
            }
            if let value = dict["overrideIngressIp"] as? Bool {
                self.overrideIngressIp = value
            }
            if let value = dict["sourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["watchNamespace"] as? String {
                self.watchNamespace = value
            }
        }
    }
    public var agentProtocols: [String]?

    public var aiProtocols: [String]?

    public var authConfig: AuthConfig?

    public var basePath: String?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var enableAuth: Bool?

    public var firstByteTimeout: Int32?

    public var ingressConfig: UpdateHttpApiRequest.IngressConfig?

    public var onlyChangeConfig: Bool?

    public var protocols: [String]?

    public var removeBasePathOnForward: Bool?

    public var versionConfig: HttpApiVersionConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.ingressConfig?.validate()
        try self.versionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentProtocols != nil {
            map["agentProtocols"] = self.agentProtocols!
        }
        if self.aiProtocols != nil {
            map["aiProtocols"] = self.aiProtocols!
        }
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.basePath != nil {
            map["basePath"] = self.basePath!
        }
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enableAuth != nil {
            map["enableAuth"] = self.enableAuth!
        }
        if self.firstByteTimeout != nil {
            map["firstByteTimeout"] = self.firstByteTimeout!
        }
        if self.ingressConfig != nil {
            map["ingressConfig"] = self.ingressConfig?.toMap()
        }
        if self.onlyChangeConfig != nil {
            map["onlyChangeConfig"] = self.onlyChangeConfig!
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.removeBasePathOnForward != nil {
            map["removeBasePathOnForward"] = self.removeBasePathOnForward!
        }
        if self.versionConfig != nil {
            map["versionConfig"] = self.versionConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentProtocols"] as? [String] {
            self.agentProtocols = value
        }
        if let value = dict["aiProtocols"] as? [String] {
            self.aiProtocols = value
        }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["basePath"] as? String {
            self.basePath = value
        }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enableAuth"] as? Bool {
            self.enableAuth = value
        }
        if let value = dict["firstByteTimeout"] as? Int32 {
            self.firstByteTimeout = value
        }
        if let value = dict["ingressConfig"] as? [String: Any?] {
            var model = UpdateHttpApiRequest.IngressConfig()
            model.fromMap(value)
            self.ingressConfig = model
        }
        if let value = dict["onlyChangeConfig"] as? Bool {
            self.onlyChangeConfig = value
        }
        if let value = dict["protocols"] as? [String] {
            self.protocols = value
        }
        if let value = dict["removeBasePathOnForward"] as? Bool {
            self.removeBasePathOnForward = value
        }
        if let value = dict["versionConfig"] as? [String: Any?] {
            var model = HttpApiVersionConfig()
            model.fromMap(value)
            self.versionConfig = model
        }
    }
}

public class UpdateHttpApiResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHttpApiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateHttpApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateHttpApiOperationRequest : Tea.TeaModel {
    public var operation: HttpApiOperation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operation != nil {
            map["operation"] = self.operation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operation"] as? [String: Any?] {
            var model = HttpApiOperation()
            model.fromMap(value)
            self.operation = model
        }
    }
}

public class UpdateHttpApiOperationResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateHttpApiOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHttpApiOperationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateHttpApiOperationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateHttpApiRouteRequest : Tea.TeaModel {
    public class BackendConfig : Tea.TeaModel {
        public class Services : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public var serviceId: String?

            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.serviceId != nil {
                    map["serviceId"] = self.serviceId!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["serviceId"] as? String {
                    self.serviceId = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var scene: String?

        public var services: [UpdateHttpApiRouteRequest.BackendConfig.Services]?

        public override init() {
            super.init()
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
                map["scene"] = self.scene!
            }
            if self.services != nil {
                var tmp : [Any] = []
                for k in self.services! {
                    tmp.append(k.toMap())
                }
                map["services"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["scene"] as? String {
                self.scene = value
            }
            if let value = dict["services"] as? [Any?] {
                var tmp : [UpdateHttpApiRouteRequest.BackendConfig.Services] = []
                for v in value {
                    if v != nil {
                        var model = UpdateHttpApiRouteRequest.BackendConfig.Services()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.services = tmp
            }
        }
    }
    public class McpRouteConfig : Tea.TeaModel {
        public var exposedUriPath: String?

        public var mcpStatisticsEnable: Bool?

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
            if self.exposedUriPath != nil {
                map["exposedUriPath"] = self.exposedUriPath!
            }
            if self.mcpStatisticsEnable != nil {
                map["mcpStatisticsEnable"] = self.mcpStatisticsEnable!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["exposedUriPath"] as? String {
                self.exposedUriPath = value
            }
            if let value = dict["mcpStatisticsEnable"] as? Bool {
                self.mcpStatisticsEnable = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var backendConfig: UpdateHttpApiRouteRequest.BackendConfig?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var domainIds: [String]?

    public var environmentId: String?

    public var match: HttpRouteMatch?

    public var mcpRouteConfig: UpdateHttpApiRouteRequest.McpRouteConfig?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendConfig?.validate()
        try self.match?.validate()
        try self.mcpRouteConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
        }
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainIds != nil {
            map["domainIds"] = self.domainIds!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.match != nil {
            map["match"] = self.match?.toMap()
        }
        if self.mcpRouteConfig != nil {
            map["mcpRouteConfig"] = self.mcpRouteConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backendConfig"] as? [String: Any?] {
            var model = UpdateHttpApiRouteRequest.BackendConfig()
            model.fromMap(value)
            self.backendConfig = model
        }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [HttpApiDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = HttpApiDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainIds"] as? [String] {
            self.domainIds = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["match"] as? [String: Any?] {
            var model = HttpRouteMatch()
            model.fromMap(value)
            self.match = model
        }
        if let value = dict["mcpRouteConfig"] as? [String: Any?] {
            var model = UpdateHttpApiRouteRequest.McpRouteConfig()
            model.fromMap(value)
            self.mcpRouteConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class UpdateHttpApiRouteResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateHttpApiRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHttpApiRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateHttpApiRouteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMcpServerRequest : Tea.TeaModel {
    public class AssembledSources : Tea.TeaModel {
        public var mcpServerId: String?

        public var mcpServerName: String?

        public var tools: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mcpServerId != nil {
                map["mcpServerId"] = self.mcpServerId!
            }
            if self.mcpServerName != nil {
                map["mcpServerName"] = self.mcpServerName!
            }
            if self.tools != nil {
                map["tools"] = self.tools!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mcpServerId"] as? String {
                self.mcpServerId = value
            }
            if let value = dict["mcpServerName"] as? String {
                self.mcpServerName = value
            }
            if let value = dict["tools"] as? [String] {
                self.tools = value
            }
        }
    }
    public class BackendConfig : Tea.TeaModel {
        public class Services : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public var serviceId: String?

            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.serviceId != nil {
                    map["serviceId"] = self.serviceId!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["serviceId"] as? String {
                    self.serviceId = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var scene: String?

        public var services: [UpdateMcpServerRequest.BackendConfig.Services]?

        public override init() {
            super.init()
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
                map["scene"] = self.scene!
            }
            if self.services != nil {
                var tmp : [Any] = []
                for k in self.services! {
                    tmp.append(k.toMap())
                }
                map["services"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["scene"] as? String {
                self.scene = value
            }
            if let value = dict["services"] as? [Any?] {
                var tmp : [UpdateMcpServerRequest.BackendConfig.Services] = []
                for v in value {
                    if v != nil {
                        var model = UpdateMcpServerRequest.BackendConfig.Services()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.services = tmp
            }
        }
    }
    public var assembledSources: [UpdateMcpServerRequest.AssembledSources]?

    public var backendConfig: UpdateMcpServerRequest.BackendConfig?

    public var description_: String?

    public var domainIds: [String]?

    public var exposedUriPath: String?

    public var match: HttpRouteMatch?

    public var mcpStatisticsEnable: Bool?

    public var protocol_: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendConfig?.validate()
        try self.match?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assembledSources != nil {
            var tmp : [Any] = []
            for k in self.assembledSources! {
                tmp.append(k.toMap())
            }
            map["assembledSources"] = tmp
        }
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainIds != nil {
            map["domainIds"] = self.domainIds!
        }
        if self.exposedUriPath != nil {
            map["exposedUriPath"] = self.exposedUriPath!
        }
        if self.match != nil {
            map["match"] = self.match?.toMap()
        }
        if self.mcpStatisticsEnable != nil {
            map["mcpStatisticsEnable"] = self.mcpStatisticsEnable!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["assembledSources"] as? [Any?] {
            var tmp : [UpdateMcpServerRequest.AssembledSources] = []
            for v in value {
                if v != nil {
                    var model = UpdateMcpServerRequest.AssembledSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.assembledSources = tmp
        }
        if let value = dict["backendConfig"] as? [String: Any?] {
            var model = UpdateMcpServerRequest.BackendConfig()
            model.fromMap(value)
            self.backendConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainIds"] as? [String] {
            self.domainIds = value
        }
        if let value = dict["exposedUriPath"] as? String {
            self.exposedUriPath = value
        }
        if let value = dict["match"] as? [String: Any?] {
            var model = HttpRouteMatch()
            model.fromMap(value)
            self.match = model
        }
        if let value = dict["mcpStatisticsEnable"] as? Bool {
            self.mcpStatisticsEnable = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class UpdateMcpServerResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePluginAttachmentRequest : Tea.TeaModel {
    public var attachResourceIds: [String]?

    public var enable: Bool?

    public var pluginConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachResourceIds != nil {
            map["attachResourceIds"] = self.attachResourceIds!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.pluginConfig != nil {
            map["pluginConfig"] = self.pluginConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attachResourceIds"] as? [String] {
            self.attachResourceIds = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["pluginConfig"] as? String {
            self.pluginConfig = value
        }
    }
}

public class UpdatePluginAttachmentResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePluginAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePluginAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePluginAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePolicyRequest : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class UpdatePolicyResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeGatewayRequest : Tea.TeaModel {
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
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class UpgradeGatewayResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpgradeGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
