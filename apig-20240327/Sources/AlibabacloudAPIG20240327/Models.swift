import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AiServiceConfig : Tea.TeaModel {
    public var address: String?

    public var apiKeys: [String]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKeys != nil {
            map["apiKeys"] = self.apiKeys!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("address") {
            self.address = dict["address"] as! String
        }
        if dict.keys.contains("apiKeys") {
            self.apiKeys = dict["apiKeys"] as! [String]
        }
        if dict.keys.contains("enableHealthCheck") {
            self.enableHealthCheck = dict["enableHealthCheck"] as! Bool
        }
        if dict.keys.contains("protocols") {
            self.protocols = dict["protocols"] as! [String]
        }
        if dict.keys.contains("provider") {
            self.provider = dict["provider"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ak") {
            self.ak = dict["ak"] as! String
        }
        if dict.keys.contains("generateMode") {
            self.generateMode = dict["generateMode"] as! String
        }
        if dict.keys.contains("sk") {
            self.sk = dict["sk"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("source") {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apikey") {
                self.apikey = dict["apikey"] as! String
            }
            if dict.keys.contains("generateMode") {
                self.generateMode = dict["generateMode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apikeySource") {
            var model = ApiKeyIdentityConfig.ApikeySource()
            model.fromMap(dict["apikeySource"] as! [String: Any])
            self.apikeySource = model
        }
        if dict.keys.contains("credentials") {
            var tmp : [ApiKeyIdentityConfig.Credentials] = []
            for v in dict["credentials"] as! [Any] {
                var model = ApiKeyIdentityConfig.Credentials()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.credentials = tmp
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("operationId") {
                            self.operationId = dict["operationId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("match") {
                        var model = HttpRouteMatch()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("operationInfo") {
                        var model = ApiRouteConflictInfo.Conflicts.Details.ConflictingMatch.OperationInfo()
                        model.fromMap(dict["operationInfo"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("operationId") {
                            self.operationId = dict["operationId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("match") {
                        var model = HttpRouteMatch()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("operationInfo") {
                        var model = ApiRouteConflictInfo.Conflicts.Details.DetectedMatch.OperationInfo()
                        model.fromMap(dict["operationInfo"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("conflictingMatch") {
                    var model = ApiRouteConflictInfo.Conflicts.Details.ConflictingMatch()
                    model.fromMap(dict["conflictingMatch"] as! [String: Any])
                    self.conflictingMatch = model
                }
                if dict.keys.contains("detectedMatch") {
                    var model = ApiRouteConflictInfo.Conflicts.Details.DetectedMatch()
                    model.fromMap(dict["detectedMatch"] as! [String: Any])
                    self.detectedMatch = model
                }
                if dict.keys.contains("level") {
                    self.level = dict["level"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("environmentId") {
                    self.environmentId = dict["environmentId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("routeId") {
                    self.routeId = dict["routeId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("details") {
                var tmp : [ApiRouteConflictInfo.Conflicts.Details] = []
                for v in dict["details"] as! [Any] {
                    var model = ApiRouteConflictInfo.Conflicts.Details()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.details = tmp
            }
            if dict.keys.contains("environmentInfo") {
                var model = ApiRouteConflictInfo.Conflicts.EnvironmentInfo()
                model.fromMap(dict["environmentInfo"] as! [String: Any])
                self.environmentInfo = model
            }
            if dict.keys.contains("resourceId") {
                self.resourceId = dict["resourceId"] as! String
            }
            if dict.keys.contains("resourceName") {
                self.resourceName = dict["resourceName"] as! String
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("routeInfo") {
                var model = ApiRouteConflictInfo.Conflicts.RouteInfo()
                model.fromMap(dict["routeInfo"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domainId") {
                self.domainId = dict["domainId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("conflicts") {
            var tmp : [ApiRouteConflictInfo.Conflicts] = []
            for v in dict["conflicts"] as! [Any] {
                var model = ApiRouteConflictInfo.Conflicts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conflicts = tmp
        }
        if dict.keys.contains("domainInfo") {
            var model = ApiRouteConflictInfo.DomainInfo()
            model.fromMap(dict["domainInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("attachResourceIds") {
            self.attachResourceIds = dict["attachResourceIds"] as! [String]
        }
        if dict.keys.contains("attachResourceType") {
            self.attachResourceType = dict["attachResourceType"] as! String
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("policyAttachmentId") {
            self.policyAttachmentId = dict["policyAttachmentId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authMode") {
            self.authMode = dict["authMode"] as! String
        }
        if dict.keys.contains("authType") {
            self.authType = dict["authType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("parentResourceId") {
            self.parentResourceId = dict["parentResourceId"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
            if dict.keys.contains("serviceId") {
                self.serviceId = dict["serviceId"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("scene") {
            self.scene = dict["scene"] as! String
        }
        if dict.keys.contains("services") {
            var tmp : [Backend.Services] = []
            for v in dict["services"] as! [Any] {
                var model = Backend.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("existed") {
            self.existed = dict["existed"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("consumerId") {
            self.consumerId = dict["consumerId"] as! String
        }
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("routeName") {
            self.routeName = dict["routeName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("certIdentifier") {
            self.certIdentifier = dict["certIdentifier"] as! String
        }
        if dict.keys.contains("clientCACert") {
            self.clientCACert = dict["clientCACert"] as! String
        }
        if dict.keys.contains("createFrom") {
            self.createFrom = dict["createFrom"] as! String
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("domainId") {
            self.domainId = dict["domainId"] as! String
        }
        if dict.keys.contains("forceHttps") {
            self.forceHttps = dict["forceHttps"] as! Bool
        }
        if dict.keys.contains("mTLSEnabled") {
            self.mTLSEnabled = dict["mTLSEnabled"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("updateTimestamp") {
            self.updateTimestamp = dict["updateTimestamp"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("default") {
            self.default_ = dict["default"] as! Bool
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("gatewayInfo") {
            var model = GatewayInfo()
            model.fromMap(dict["gatewayInfo"] as! [String: Any])
            self.gatewayInfo = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("subDomainInfos") {
            var tmp : [SubDomainInfo] = []
            for v in dict["subDomainInfos"] as! [Any] {
                var model = SubDomainInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subDomainInfos = tmp
        }
        if dict.keys.contains("updateTimestamp") {
            self.updateTimestamp = dict["updateTimestamp"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("engineVersion") {
            self.engineVersion = dict["engineVersion"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("vpcInfo") {
            var model = GatewayInfo.VpcInfo()
            model.fromMap(dict["vpcInfo"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enable") {
                self.enable = dict["enable"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("slsConfig") {
            var model = GatewayLogConfig.SlsConfig()
            model.fromMap(dict["slsConfig"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayId") {
                    self.gatewayId = dict["gatewayId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! String
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
                }
                if dict.keys.contains("serviceId") {
                    self.serviceId = dict["serviceId"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("domainId") {
                    self.domainId = dict["domainId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("networkType") {
                    self.networkType = dict["networkType"] as! String
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alias") {
                self.alias = dict["alias"] as! String
            }
            if dict.keys.contains("backendScene") {
                self.backendScene = dict["backendScene"] as! String
            }
            if dict.keys.contains("backendType") {
                self.backendType = dict["backendType"] as! String
            }
            if dict.keys.contains("customDomains") {
                var tmp : [HttpApiDomainInfo] = []
                for v in dict["customDomains"] as! [Any] {
                    var model = HttpApiDomainInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customDomains = tmp
            }
            if dict.keys.contains("deployStatus") {
                self.deployStatus = dict["deployStatus"] as! String
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("gatewayInfo") {
                var model = HttpApiApiInfo.Environments.GatewayInfo()
                model.fromMap(dict["gatewayInfo"] as! [String: Any])
                self.gatewayInfo = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("serviceConfigs") {
                var tmp : [HttpApiApiInfo.Environments.ServiceConfigs] = []
                for v in dict["serviceConfigs"] as! [Any] {
                    var model = HttpApiApiInfo.Environments.ServiceConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceConfigs = tmp
            }
            if dict.keys.contains("subDomains") {
                var tmp : [HttpApiApiInfo.Environments.SubDomains] = []
                for v in dict["subDomains"] as! [Any] {
                    var model = HttpApiApiInfo.Environments.SubDomains()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("environmentId") {
                    self.environmentId = dict["environmentId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clusterId") {
                    self.clusterId = dict["clusterId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("environmentInfo") {
                var model = HttpApiApiInfo.IngressInfo.EnvironmentInfo()
                model.fromMap(dict["environmentInfo"] as! [String: Any])
                self.environmentInfo = model
            }
            if dict.keys.contains("ingressClass") {
                self.ingressClass = dict["ingressClass"] as! String
            }
            if dict.keys.contains("k8sClusterInfo") {
                var model = HttpApiApiInfo.IngressInfo.K8sClusterInfo()
                model.fromMap(dict["k8sClusterInfo"] as! [String: Any])
                self.k8sClusterInfo = model
            }
            if dict.keys.contains("overrideIngressIp") {
                self.overrideIngressIp = dict["overrideIngressIp"] as! Bool
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! String
            }
            if dict.keys.contains("watchNamespace") {
                self.watchNamespace = dict["watchNamespace"] as! String
            }
        }
    }
    public var aiProtocols: [String]?

    public var authConfig: AuthConfig?

    public var basePath: String?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var enabelAuth: Bool?

    public var environments: [HttpApiApiInfo.Environments]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aiProtocols") {
            self.aiProtocols = dict["aiProtocols"] as! [String]
        }
        if dict.keys.contains("authConfig") {
            var model = AuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("basePath") {
            self.basePath = dict["basePath"] as! String
        }
        if dict.keys.contains("deployConfigs") {
            var tmp : [HttpApiDeployConfig] = []
            for v in dict["deployConfigs"] as! [Any] {
                var model = HttpApiDeployConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deployConfigs = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enabelAuth") {
            self.enabelAuth = dict["enabelAuth"] as! Bool
        }
        if dict.keys.contains("environments") {
            var tmp : [HttpApiApiInfo.Environments] = []
            for v in dict["environments"] as! [Any] {
                var model = HttpApiApiInfo.Environments()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.environments = tmp
        }
        if dict.keys.contains("httpApiId") {
            self.httpApiId = dict["httpApiId"] as! String
        }
        if dict.keys.contains("ingressInfo") {
            var model = HttpApiApiInfo.IngressInfo()
            model.fromMap(dict["ingressInfo"] as! [String: Any])
            self.ingressInfo = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocols") {
            self.protocols = dict["protocols"] as! [String]
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("versionInfo") {
            var model = HttpApiVersionInfo()
            model.fromMap(dict["versionInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("operator") {
            self.operator_ = dict["operator"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("conditions") {
            var tmp : [HttpApiBackendMatchCondition] = []
            for v in dict["conditions"] as! [Any] {
                var model = HttpApiBackendMatchCondition()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conditions = tmp
        }
        if dict.keys.contains("default") {
            self.default_ = dict["default"] as! Bool
        }
    }
}

public class HttpApiDeployConfig : Tea.TeaModel {
    public class PolicyConfigs : Tea.TeaModel {
        public class AiFallbackConfig : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("serviceIds") {
                    self.serviceIds = dict["serviceIds"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aiFallbackConfig") {
                var model = HttpApiDeployConfig.PolicyConfigs.AiFallbackConfig()
                model.fromMap(dict["aiFallbackConfig"] as! [String: Any])
                self.aiFallbackConfig = model
            }
            if dict.keys.contains("enable") {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("modelName") {
                self.modelName = dict["modelName"] as! String
            }
            if dict.keys.contains("modelNamePattern") {
                self.modelNamePattern = dict["modelNamePattern"] as! String
            }
            if dict.keys.contains("serviceId") {
                self.serviceId = dict["serviceId"] as! String
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Int64
            }
        }
    }
    public var autoDeploy: Bool?

    public var backendScene: String?

    public var customDomainIds: [String]?

    public var environmentId: String?

    public var policyConfigs: [HttpApiDeployConfig.PolicyConfigs]?

    public var serviceConfigs: [HttpApiDeployConfig.ServiceConfigs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.policyConfigs != nil {
            var tmp : [Any] = []
            for k in self.policyConfigs! {
                tmp.append(k.toMap())
            }
            map["policyConfigs"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoDeploy") {
            self.autoDeploy = dict["autoDeploy"] as! Bool
        }
        if dict.keys.contains("backendScene") {
            self.backendScene = dict["backendScene"] as! String
        }
        if dict.keys.contains("customDomainIds") {
            self.customDomainIds = dict["customDomainIds"] as! [String]
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("policyConfigs") {
            var tmp : [HttpApiDeployConfig.PolicyConfigs] = []
            for v in dict["policyConfigs"] as! [Any] {
                var model = HttpApiDeployConfig.PolicyConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyConfigs = tmp
        }
        if dict.keys.contains("serviceConfigs") {
            var tmp : [HttpApiDeployConfig.ServiceConfigs] = []
            for v in dict["serviceConfigs"] as! [Any] {
                var model = HttpApiDeployConfig.ServiceConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceConfigs = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domainId") {
            self.domainId = dict["domainId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
    }
}

public class HttpApiInfoByName : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("versionEnabled") {
            self.versionEnabled = dict["versionEnabled"] as! Bool
        }
        if dict.keys.contains("versionedHttpApis") {
            var tmp : [HttpApiApiInfo] = []
            for v in dict["versionedHttpApis"] as! [Any] {
                var model = HttpApiApiInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("responseCode") {
            self.responseCode = dict["responseCode"] as! Int32
        }
        if dict.keys.contains("responseContent") {
            self.responseContent = dict["responseContent"] as! String
        }
    }
}

public class HttpApiOperation : Tea.TeaModel {
    public var authConfig: AuthConfig?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authConfig") {
            var model = AuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enableAuth") {
            self.enableAuth = dict["enableAuth"] as! Bool
        }
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
        if dict.keys.contains("mock") {
            var model = HttpApiMockContract()
            model.fromMap(dict["mock"] as! [String: Any])
            self.mock = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("request") {
            var model = HttpApiRequestContract()
            model.fromMap(dict["request"] as! [String: Any])
            self.request = model
        }
        if dict.keys.contains("response") {
            var model = HttpApiResponseContract()
            model.fromMap(dict["response"] as! [String: Any])
            self.response = model
        }
    }
}

public class HttpApiOperationInfo : Tea.TeaModel {
    public var authConfig: AuthConfig?

    public var createTimestamp: Int64?

    public var description_: String?

    public var enableAuth: Bool?

    public var method: String?

    public var mock: HttpApiMockContract?

    public var name: String?

    public var operationId: String?

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
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authConfig") {
            var model = AuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enableAuth") {
            self.enableAuth = dict["enableAuth"] as! Bool
        }
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
        if dict.keys.contains("mock") {
            var model = HttpApiMockContract()
            model.fromMap(dict["mock"] as! [String: Any])
            self.mock = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("operationId") {
            self.operationId = dict["operationId"] as! String
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("request") {
            var model = HttpApiRequestContract()
            model.fromMap(dict["request"] as! [String: Any])
            self.request = model
        }
        if dict.keys.contains("response") {
            var model = HttpApiResponseContract()
            model.fromMap(dict["response"] as! [String: Any])
            self.response = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("defaultValue") {
            self.defaultValue = dict["defaultValue"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("exampleValue") {
            self.exampleValue = dict["exampleValue"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("required") {
            self.required_ = dict["required"] as! Bool
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! Int32
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("qualifier") {
                    self.qualifier = dict["qualifier"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cloudProductType") {
                self.cloudProductType = dict["cloudProductType"] as! String
            }
            if dict.keys.contains("containerServiceConfigs") {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.ContainerServiceConfigs] = []
                for v in dict["containerServiceConfigs"] as! [Any] {
                    var model = HttpApiPublishRevisionInfo.CloudProductConfig.ContainerServiceConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.containerServiceConfigs = tmp
            }
            if dict.keys.contains("functionConfigs") {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.FunctionConfigs] = []
                for v in dict["functionConfigs"] as! [Any] {
                    var model = HttpApiPublishRevisionInfo.CloudProductConfig.FunctionConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.functionConfigs = tmp
            }
            if dict.keys.contains("mseNacosConfigs") {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.MseNacosConfigs] = []
                for v in dict["mseNacosConfigs"] as! [Any] {
                    var model = HttpApiPublishRevisionInfo.CloudProductConfig.MseNacosConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dnsList") {
                self.dnsList = dict["dnsList"] as! [String]
            }
            if dict.keys.contains("match") {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(dict["match"] as! [String: Any])
                self.match = model
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayId") {
                    self.gatewayId = dict["gatewayId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alias") {
                self.alias = dict["alias"] as! String
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("gatewayInfo") {
                var model = HttpApiPublishRevisionInfo.EnvironmentInfo.GatewayInfo()
                model.fromMap(dict["gatewayInfo"] as! [String: Any])
                self.gatewayInfo = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gatewayServiceId") {
                self.gatewayServiceId = dict["gatewayServiceId"] as! String
            }
            if dict.keys.contains("match") {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(dict["match"] as! [String: Any])
                self.match = model
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpoints") {
                self.endpoints = dict["endpoints"] as! [String]
            }
            if dict.keys.contains("match") {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(dict["match"] as! [String: Any])
                self.match = model
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("backendScene") {
            self.backendScene = dict["backendScene"] as! String
        }
        if dict.keys.contains("backendType") {
            self.backendType = dict["backendType"] as! String
        }
        if dict.keys.contains("cloudProductConfig") {
            var model = HttpApiPublishRevisionInfo.CloudProductConfig()
            model.fromMap(dict["cloudProductConfig"] as! [String: Any])
            self.cloudProductConfig = model
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("customDomains") {
            var tmp : [HttpApiDomainInfo] = []
            for v in dict["customDomains"] as! [Any] {
                var model = HttpApiDomainInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customDomains = tmp
        }
        if dict.keys.contains("dnsConfigs") {
            var tmp : [HttpApiPublishRevisionInfo.DnsConfigs] = []
            for v in dict["dnsConfigs"] as! [Any] {
                var model = HttpApiPublishRevisionInfo.DnsConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dnsConfigs = tmp
        }
        if dict.keys.contains("environmentInfo") {
            var model = HttpApiPublishRevisionInfo.EnvironmentInfo()
            model.fromMap(dict["environmentInfo"] as! [String: Any])
            self.environmentInfo = model
        }
        if dict.keys.contains("isCurrentVersion") {
            self.isCurrentVersion = dict["isCurrentVersion"] as! Bool
        }
        if dict.keys.contains("operations") {
            var tmp : [HttpApiOperationInfo] = []
            for v in dict["operations"] as! [Any] {
                var model = HttpApiOperationInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.operations = tmp
        }
        if dict.keys.contains("revisionId") {
            self.revisionId = dict["revisionId"] as! String
        }
        if dict.keys.contains("serviceConfigs") {
            var tmp : [HttpApiPublishRevisionInfo.ServiceConfigs] = []
            for v in dict["serviceConfigs"] as! [Any] {
                var model = HttpApiPublishRevisionInfo.ServiceConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceConfigs = tmp
        }
        if dict.keys.contains("subDomains") {
            var tmp : [HttpApiDomainInfo] = []
            for v in dict["subDomains"] as! [Any] {
                var model = HttpApiDomainInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subDomains = tmp
        }
        if dict.keys.contains("vipConfigs") {
            var tmp : [HttpApiPublishRevisionInfo.VipConfigs] = []
            for v in dict["vipConfigs"] as! [Any] {
                var model = HttpApiPublishRevisionInfo.VipConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("contentType") {
                self.contentType = dict["contentType"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("example") {
                self.example = dict["example"] as! String
            }
            if dict.keys.contains("jsonSchema") {
                self.jsonSchema = dict["jsonSchema"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = HttpApiRequestContract.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("headerParameters") {
            var tmp : [HttpApiParameter] = []
            for v in dict["headerParameters"] as! [Any] {
                var model = HttpApiParameter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.headerParameters = tmp
        }
        if dict.keys.contains("pathParameters") {
            var tmp : [HttpApiParameter] = []
            for v in dict["pathParameters"] as! [Any] {
                var model = HttpApiParameter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pathParameters = tmp
        }
        if dict.keys.contains("queryParameters") {
            var tmp : [HttpApiParameter] = []
            for v in dict["queryParameters"] as! [Any] {
                var model = HttpApiParameter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") {
                self.code = dict["code"] as! Int32
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("example") {
                self.example = dict["example"] as! String
            }
            if dict.keys.contains("jsonSchema") {
                self.jsonSchema = dict["jsonSchema"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contentType") {
            self.contentType = dict["contentType"] as! String
        }
        if dict.keys.contains("items") {
            var tmp : [HttpApiResponseContract.Items] = []
            for v in dict["items"] as! [Any] {
                var model = HttpApiResponseContract.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("headerName") {
            self.headerName = dict["headerName"] as! String
        }
        if dict.keys.contains("queryName") {
            self.queryName = dict["queryName"] as! String
        }
        if dict.keys.contains("scheme") {
            self.scheme = dict["scheme"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("headerName") {
            self.headerName = dict["headerName"] as! String
        }
        if dict.keys.contains("queryName") {
            self.queryName = dict["queryName"] as! String
        }
        if dict.keys.contains("scheme") {
            self.scheme = dict["scheme"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("extractKey") {
                    self.extractKey = dict["extractKey"] as! String
                }
                if dict.keys.contains("extractKeySpec") {
                    self.extractKeySpec = dict["extractKeySpec"] as! String
                }
                if dict.keys.contains("mappingType") {
                    self.mappingType = dict["mappingType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dubboMothedName") {
                self.dubboMothedName = dict["dubboMothedName"] as! String
            }
            if dict.keys.contains("httpMothed") {
                self.httpMothed = dict["httpMothed"] as! String
            }
            if dict.keys.contains("mothedpath") {
                self.mothedpath = dict["mothedpath"] as! String
            }
            if dict.keys.contains("paramMapsList") {
                var tmp : [HttpDubboTranscoder.MothedMapList.ParamMapsList] = []
                for v in dict["paramMapsList"] as! [Any] {
                    var model = HttpDubboTranscoder.MothedMapList.ParamMapsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramMapsList = tmp
            }
            if dict.keys.contains("passThroughAllHeaders") {
                self.passThroughAllHeaders = dict["passThroughAllHeaders"] as! String
            }
            if dict.keys.contains("passThroughList") {
                self.passThroughList = dict["passThroughList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dubboServiceGroup") {
            self.dubboServiceGroup = dict["dubboServiceGroup"] as! String
        }
        if dict.keys.contains("dubboServiceName") {
            self.dubboServiceName = dict["dubboServiceName"] as! String
        }
        if dict.keys.contains("dubboServiceVersion") {
            self.dubboServiceVersion = dict["dubboServiceVersion"] as! String
        }
        if dict.keys.contains("mothedMapList") {
            var tmp : [HttpDubboTranscoder.MothedMapList] = []
            for v in dict["mothedMapList"] as! [Any] {
                var model = HttpDubboTranscoder.MothedMapList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domainId") {
                self.domainId = dict["domainId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayId") {
                    self.gatewayId = dict["gatewayId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("domainId") {
                    self.domainId = dict["domainId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("networkType") {
                    self.networkType = dict["networkType"] as! String
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alias") {
                self.alias = dict["alias"] as! String
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("gatewayInfo") {
                var model = HttpRoute.EnvironmentInfo.GatewayInfo()
                model.fromMap(dict["gatewayInfo"] as! [String: Any])
                self.gatewayInfo = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("subDomains") {
                var tmp : [HttpRoute.EnvironmentInfo.SubDomains] = []
                for v in dict["subDomains"] as! [Any] {
                    var model = HttpRoute.EnvironmentInfo.SubDomains()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subDomains = tmp
            }
        }
    }
    public var backend: Backend?

    public var createTimestamp: Int64?

    public var deployStatus: String?

    public var description_: String?

    public var domainInfos: [HttpRoute.DomainInfos]?

    public var environmentInfo: HttpRoute.EnvironmentInfo?

    public var match: HttpRouteMatch?

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
        if self.match != nil {
            map["match"] = self.match?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("backend") {
            var model = Backend()
            model.fromMap(dict["backend"] as! [String: Any])
            self.backend = model
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("deployStatus") {
            self.deployStatus = dict["deployStatus"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domainInfos") {
            var tmp : [HttpRoute.DomainInfos] = []
            for v in dict["domainInfos"] as! [Any] {
                var model = HttpRoute.DomainInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domainInfos = tmp
        }
        if dict.keys.contains("environmentInfo") {
            var model = HttpRoute.EnvironmentInfo()
            model.fromMap(dict["environmentInfo"] as! [String: Any])
            self.environmentInfo = model
        }
        if dict.keys.contains("match") {
            var model = HttpRouteMatch()
            model.fromMap(dict["match"] as! [String: Any])
            self.match = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("routeId") {
            self.routeId = dict["routeId"] as! String
        }
        if dict.keys.contains("updateTimestamp") {
            self.updateTimestamp = dict["updateTimestamp"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            var tmp : [HttpRouteMatch.Headers] = []
            for v in dict["headers"] as! [Any] {
                var model = HttpRouteMatch.Headers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.headers = tmp
        }
        if dict.keys.contains("ignoreUriCase") {
            self.ignoreUriCase = dict["ignoreUriCase"] as! Bool
        }
        if dict.keys.contains("methods") {
            self.methods = dict["methods"] as! [String]
        }
        if dict.keys.contains("path") {
            var model = HttpRouteMatch.Path()
            model.fromMap(dict["path"] as! [String: Any])
            self.path = model
        }
        if dict.keys.contains("queryParams") {
            var tmp : [HttpRouteMatch.QueryParams] = []
            for v in dict["queryParams"] as! [Any] {
                var model = HttpRouteMatch.QueryParams()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("payloadKeyName") {
                self.payloadKeyName = dict["payloadKeyName"] as! String
            }
            if dict.keys.contains("payloadKeyValue") {
                self.payloadKeyValue = dict["payloadKeyValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("pass") {
                self.pass = dict["pass"] as! Bool
            }
            if dict.keys.contains("position") {
                self.position = dict["position"] as! String
            }
            if dict.keys.contains("prefix") {
                self.prefix_ = dict["prefix"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jwks") {
            self.jwks = dict["jwks"] as! String
        }
        if dict.keys.contains("jwtPayloadConfig") {
            var model = JwtIdentityConfig.JwtPayloadConfig()
            model.fromMap(dict["jwtPayloadConfig"] as! [String: Any])
            self.jwtPayloadConfig = model
        }
        if dict.keys.contains("jwtTokenConfig") {
            var model = JwtIdentityConfig.JwtTokenConfig()
            model.fromMap(dict["jwtTokenConfig"] as! [String: Any])
            self.jwtTokenConfig = model
        }
        if dict.keys.contains("secretType") {
            self.secretType = dict["secretType"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apiInfo") {
            var model = HttpApiApiInfo()
            model.fromMap(dict["apiInfo"] as! [String: Any])
            self.apiInfo = model
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("configExample") {
            self.configExample = dict["configExample"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("executePriority") {
            self.executePriority = dict["executePriority"] as! Int32
        }
        if dict.keys.contains("executeStage") {
            self.executeStage = dict["executeStage"] as! String
        }
        if dict.keys.contains("imageName") {
            self.imageName = dict["imageName"] as! String
        }
        if dict.keys.contains("innerPlugin") {
            self.innerPlugin = dict["innerPlugin"] as! Bool
        }
        if dict.keys.contains("mode") {
            self.mode = dict["mode"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pluginClassId") {
            self.pluginClassId = dict["pluginClassId"] as! String
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("supportedMinGatewayVersion") {
            self.supportedMinGatewayVersion = dict["supportedMinGatewayVersion"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
        if dict.keys.contains("versionDescription") {
            self.versionDescription = dict["versionDescription"] as! String
        }
        if dict.keys.contains("wasmLanguage") {
            self.wasmLanguage = dict["wasmLanguage"] as! String
        }
        if dict.keys.contains("wasmUrl") {
            self.wasmUrl = dict["wasmUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("attachableResourceTypes") {
            self.attachableResourceTypes = dict["attachableResourceTypes"] as! [String]
        }
        if dict.keys.contains("classId") {
            self.classId = dict["classId"] as! String
        }
        if dict.keys.contains("configExample") {
            self.configExample = dict["configExample"] as! String
        }
        if dict.keys.contains("deprecated") {
            self.deprecated = dict["deprecated"] as! Bool
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("direction") {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("enableLog") {
            self.enableLog = dict["enableLog"] as! Bool
        }
        if dict.keys.contains("executePriority") {
            self.executePriority = dict["executePriority"] as! String
        }
        if dict.keys.contains("executeStage") {
            self.executeStage = dict["executeStage"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("classId") {
            self.classId = dict["classId"] as! String
        }
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("policyId") {
            self.policyId = dict["policyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("attachments") {
            var tmp : [Attachment] = []
            for v in dict["attachments"] as! [Any] {
                var model = Attachment()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.attachments = tmp
        }
        if dict.keys.contains("classAlias") {
            self.classAlias = dict["classAlias"] as! String
        }
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("direction") {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("executePriority") {
            self.executePriority = dict["executePriority"] as! String
        }
        if dict.keys.contains("executeStage") {
            self.executeStage = dict["executeStage"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("policyId") {
            self.policyId = dict["policyId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceName") {
            self.resourceName = dict["resourceName"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceCount") {
            self.resourceCount = dict["resourceCount"] as! Int32
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
        }
    }
    public var addresses: [String]?

    public var aiServiceConfig: AiServiceConfig?

    public var createTimestamp: Int64?

    public var gatewayId: String?

    public var groupName: String?

    public var healthCheck: ServiceHealthCheck?

    public var healthStatus: String?

    public var name: String?

    public var namespace: String?

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
        try self.aiServiceConfig?.validate()
        try self.healthCheck?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            map["addresses"] = self.addresses!
        }
        if self.aiServiceConfig != nil {
            map["aiServiceConfig"] = self.aiServiceConfig?.toMap()
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("addresses") {
            self.addresses = dict["addresses"] as! [String]
        }
        if dict.keys.contains("aiServiceConfig") {
            var model = AiServiceConfig()
            model.fromMap(dict["aiServiceConfig"] as! [String: Any])
            self.aiServiceConfig = model
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("groupName") {
            self.groupName = dict["groupName"] as! String
        }
        if dict.keys.contains("healthCheck") {
            var model = ServiceHealthCheck()
            model.fromMap(dict["healthCheck"] as! [String: Any])
            self.healthCheck = model
        }
        if dict.keys.contains("healthStatus") {
            self.healthStatus = dict["healthStatus"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("ports") {
            var tmp : [Service.Ports] = []
            for v in dict["ports"] as! [Any] {
                var model = Service.Ports()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ports = tmp
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("serviceId") {
            self.serviceId = dict["serviceId"] as! String
        }
        if dict.keys.contains("sourceType") {
            self.sourceType = dict["sourceType"] as! String
        }
        if dict.keys.contains("unhealthyEndpoints") {
            self.unhealthyEndpoints = dict["unhealthyEndpoints"] as! [String]
        }
        if dict.keys.contains("updateTimestamp") {
            self.updateTimestamp = dict["updateTimestamp"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("healthyThreshold") {
            self.healthyThreshold = dict["healthyThreshold"] as! Int32
        }
        if dict.keys.contains("httpHost") {
            self.httpHost = dict["httpHost"] as! String
        }
        if dict.keys.contains("httpPath") {
            self.httpPath = dict["httpPath"] as! String
        }
        if dict.keys.contains("interval") {
            self.interval = dict["interval"] as! Int32
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("unhealthyThreshold") {
            self.unhealthyThreshold = dict["unhealthyThreshold"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("arn") {
            self.arn = dict["arn"] as! String
        }
        if dict.keys.contains("assumeRolePolicyDocument") {
            self.assumeRolePolicyDocument = dict["assumeRolePolicyDocument"] as! String
        }
        if dict.keys.contains("createDate") {
            self.createDate = dict["createDate"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("isServiceLinkedRole") {
            self.isServiceLinkedRole = dict["isServiceLinkedRole"] as! Bool
        }
        if dict.keys.contains("roleId") {
            self.roleId = dict["roleId"] as! String
        }
        if dict.keys.contains("roleName") {
            self.roleName = dict["roleName"] as! String
        }
        if dict.keys.contains("rolePrincipalName") {
            self.rolePrincipalName = dict["rolePrincipalName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("algorithm") {
            self.algorithm = dict["algorithm"] as! String
        }
        if dict.keys.contains("certId") {
            self.certId = dict["certId"] as! Int64
        }
        if dict.keys.contains("certIdentifier") {
            self.certIdentifier = dict["certIdentifier"] as! String
        }
        if dict.keys.contains("certName") {
            self.certName = dict["certName"] as! String
        }
        if dict.keys.contains("commonName") {
            self.commonName = dict["commonName"] as! String
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("domainMatchCert") {
            self.domainMatchCert = dict["domainMatchCert"] as! Bool
        }
        if dict.keys.contains("fingerprint") {
            self.fingerprint = dict["fingerprint"] as! String
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("isChainCompleted") {
            self.isChainCompleted = dict["isChainCompleted"] as! Bool
        }
        if dict.keys.contains("issuer") {
            self.issuer = dict["issuer"] as! String
        }
        if dict.keys.contains("keySize") {
            self.keySize = dict["keySize"] as! String
        }
        if dict.keys.contains("md5") {
            self.md5 = dict["md5"] as! String
        }
        if dict.keys.contains("notAfterTimestamp") {
            self.notAfterTimestamp = dict["notAfterTimestamp"] as! Int64
        }
        if dict.keys.contains("notBeforeTimestamp") {
            self.notBeforeTimestamp = dict["notBeforeTimestamp"] as! Int64
        }
        if dict.keys.contains("sans") {
            self.sans = dict["sans"] as! String
        }
        if dict.keys.contains("serialNo") {
            self.serialNo = dict["serialNo"] as! String
        }
        if dict.keys.contains("sha2") {
            self.sha2 = dict["sha2"] as! String
        }
        if dict.keys.contains("signAlgorithm") {
            self.signAlgorithm = dict["signAlgorithm"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domainId") {
            self.domainId = dict["domainId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("networkType") {
            self.networkType = dict["networkType"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("supportVersions") {
                self.supportVersions = dict["supportVersions"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("configType") {
            self.configType = dict["configType"] as! String
        }
        if dict.keys.contains("tlsCipherSuite") {
            var tmp : [TlsCipherSuitesConfig.TlsCipherSuite] = []
            for v in dict["tlsCipherSuite"] as! [Any] {
                var model = TlsCipherSuitesConfig.TlsCipherSuite()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tlsCipherSuite = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("portRanges") {
            self.portRanges = dict["portRanges"] as! [String]
        }
        if dict.keys.contains("securityGroupId") {
            self.securityGroupId = dict["securityGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddGatewaySecurityGroupRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public var caCertIdentifier: String?

    public var certIdentifier: String?

    public var clientCACert: String?

    public var forceHttps: Bool?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caCertIdentifier") {
            self.caCertIdentifier = dict["caCertIdentifier"] as! String
        }
        if dict.keys.contains("certIdentifier") {
            self.certIdentifier = dict["certIdentifier"] as! String
        }
        if dict.keys.contains("clientCACert") {
            self.clientCACert = dict["clientCACert"] as! String
        }
        if dict.keys.contains("forceHttps") {
            self.forceHttps = dict["forceHttps"] as! Bool
        }
        if dict.keys.contains("http2Option") {
            self.http2Option = dict["http2Option"] as! String
        }
        if dict.keys.contains("mTLSEnabled") {
            self.mTLSEnabled = dict["mTLSEnabled"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("tlsCipherSuitesConfig") {
            var model = TlsCipherSuitesConfig()
            model.fromMap(dict["tlsCipherSuitesConfig"] as! [String: Any])
            self.tlsCipherSuitesConfig = model
        }
        if dict.keys.contains("tlsMax") {
            self.tlsMax = dict["tlsMax"] as! String
        }
        if dict.keys.contains("tlsMin") {
            self.tlsMin = dict["tlsMin"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domainId") {
                self.domainId = dict["domainId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateDomainResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateEnvironmentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHttpApiRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("ingressClass") {
                self.ingressClass = dict["ingressClass"] as! String
            }
            if dict.keys.contains("overrideIngressIp") {
                self.overrideIngressIp = dict["overrideIngressIp"] as! Bool
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! String
            }
            if dict.keys.contains("watchNamespace") {
                self.watchNamespace = dict["watchNamespace"] as! String
            }
        }
    }
    public var aiProtocols: [String]?

    public var authConfig: AuthConfig?

    public var basePath: String?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var enableAuth: Bool?

    public var ingressConfig: CreateHttpApiRequest.IngressConfig?

    public var name: String?

    public var protocols: [String]?

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
        if self.ingressConfig != nil {
            map["ingressConfig"] = self.ingressConfig?.toMap()
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
        if self.versionConfig != nil {
            map["versionConfig"] = self.versionConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aiProtocols") {
            self.aiProtocols = dict["aiProtocols"] as! [String]
        }
        if dict.keys.contains("authConfig") {
            var model = AuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("basePath") {
            self.basePath = dict["basePath"] as! String
        }
        if dict.keys.contains("deployConfigs") {
            var tmp : [HttpApiDeployConfig] = []
            for v in dict["deployConfigs"] as! [Any] {
                var model = HttpApiDeployConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deployConfigs = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enableAuth") {
            self.enableAuth = dict["enableAuth"] as! Bool
        }
        if dict.keys.contains("ingressConfig") {
            var model = CreateHttpApiRequest.IngressConfig()
            model.fromMap(dict["ingressConfig"] as! [String: Any])
            self.ingressConfig = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocols") {
            self.protocols = dict["protocols"] as! [String]
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("versionConfig") {
            var model = HttpApiVersionConfig()
            model.fromMap(dict["versionConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("httpApiId") {
                self.httpApiId = dict["httpApiId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateHttpApiResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("operations") {
            var tmp : [HttpApiOperation] = []
            for v in dict["operations"] as! [Any] {
                var model = HttpApiOperation()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("operationId") {
                    self.operationId = dict["operationId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("operations") {
                var tmp : [CreateHttpApiOperationResponseBody.Data.Operations] = []
                for v in dict["operations"] as! [Any] {
                    var model = CreateHttpApiOperationResponseBody.Data.Operations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateHttpApiOperationResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateHttpApiOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! Int32
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
                }
                if dict.keys.contains("serviceId") {
                    self.serviceId = dict["serviceId"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("scene") {
                self.scene = dict["scene"] as! String
            }
            if dict.keys.contains("services") {
                var tmp : [CreateHttpApiRouteRequest.BackendConfig.Services] = []
                for v in dict["services"] as! [Any] {
                    var model = CreateHttpApiRouteRequest.BackendConfig.Services()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.services = tmp
            }
        }
    }
    public var backendConfig: CreateHttpApiRouteRequest.BackendConfig?

    public var description_: String?

    public var domainIds: [String]?

    public var environmentId: String?

    public var match: HttpRouteMatch?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("backendConfig") {
            var model = CreateHttpApiRouteRequest.BackendConfig()
            model.fromMap(dict["backendConfig"] as! [String: Any])
            self.backendConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domainIds") {
            self.domainIds = dict["domainIds"] as! [String]
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("match") {
            var model = HttpRouteMatch()
            model.fromMap(dict["match"] as! [String: Any])
            self.match = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("routeId") {
                self.routeId = dict["routeId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateHttpApiRouteResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateHttpApiRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("policyId") {
                self.policyId = dict["policyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreatePolicyResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("attachResourceId") {
            self.attachResourceId = dict["attachResourceId"] as! String
        }
        if dict.keys.contains("attachResourceType") {
            self.attachResourceType = dict["attachResourceType"] as! String
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("policyId") {
            self.policyId = dict["policyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("policyAttachmentId") {
                self.policyAttachmentId = dict["policyAttachmentId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreatePolicyAttachmentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePolicyAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
    public class ServiceConfigs : Tea.TeaModel {
        public var addresses: [String]?

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
            try self.aiServiceConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["addresses"] = self.addresses!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("addresses") {
                self.addresses = dict["addresses"] as! [String]
            }
            if dict.keys.contains("aiServiceConfig") {
                var model = AiServiceConfig()
                model.fromMap(dict["aiServiceConfig"] as! [String: Any])
                self.aiServiceConfig = model
            }
            if dict.keys.contains("dnsServers") {
                self.dnsServers = dict["dnsServers"] as! [String]
            }
            if dict.keys.contains("groupName") {
                self.groupName = dict["groupName"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("namespace") {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("qualifier") {
                self.qualifier = dict["qualifier"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("serviceConfigs") {
            var tmp : [CreateServiceRequest.ServiceConfigs] = []
            for v in dict["serviceConfigs"] as! [Any] {
                var model = CreateServiceRequest.ServiceConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceConfigs = tmp
        }
        if dict.keys.contains("sourceType") {
            self.sourceType = dict["sourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("serviceIds") {
                self.serviceIds = dict["serviceIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateServiceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cascadingDelete") {
            self.cascadingDelete = dict["cascadingDelete"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGatewaySecurityGroupRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteHttpApiOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteHttpApiRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePolicyAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployHttpApiRequest : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("match") {
                        var model = HttpApiBackendMatchConditions()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("port") {
                        self.port = dict["port"] as! Int32
                    }
                    if dict.keys.contains("protocol") {
                        self.protocol_ = dict["protocol"] as! String
                    }
                    if dict.keys.contains("serviceId") {
                        self.serviceId = dict["serviceId"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                    if dict.keys.contains("weight") {
                        self.weight = dict["weight"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("backendScene") {
                    self.backendScene = dict["backendScene"] as! String
                }
                if dict.keys.contains("customDomainIds") {
                    self.customDomainIds = dict["customDomainIds"] as! [String]
                }
                if dict.keys.contains("environmentId") {
                    self.environmentId = dict["environmentId"] as! String
                }
                if dict.keys.contains("serviceConfigs") {
                    var tmp : [DeployHttpApiRequest.RestApiConfig.Environment.ServiceConfigs] = []
                    for v in dict["serviceConfigs"] as! [Any] {
                        var model = DeployHttpApiRequest.RestApiConfig.Environment.ServiceConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceConfigs = tmp
                }
            }
        }
        public var description_: String?

        public var environment: DeployHttpApiRequest.RestApiConfig.Environment?

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
            if self.revisionId != nil {
                map["revisionId"] = self.revisionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("environment") {
                var model = DeployHttpApiRequest.RestApiConfig.Environment()
                model.fromMap(dict["environment"] as! [String: Any])
                self.environment = model
            }
            if dict.keys.contains("revisionId") {
                self.revisionId = dict["revisionId"] as! String
            }
        }
    }
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
        try self.restApiConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.restApiConfig != nil {
            map["restApiConfig"] = self.restApiConfig?.toMap()
        }
        if self.routeId != nil {
            map["routeId"] = self.routeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("restApiConfig") {
            var model = DeployHttpApiRequest.RestApiConfig()
            model.fromMap(dict["restApiConfig"] as! [String: Any])
            self.restApiConfig = model
        }
        if dict.keys.contains("routeId") {
            self.routeId = dict["routeId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeployHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("specContentBase64") {
                self.specContentBase64 = dict["specContentBase64"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ExportHttpApiResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("routeName") {
                self.routeName = dict["routeName"] as! String
            }
        }
    }
    public var acceptLanguage: String?

    public var apiId: String?

    public var filter: GetDashboardRequest.Filter?

    public var name: String?

    public var pluginClassId: String?

    public var pluginId: String?

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
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.upstreamCluster != nil {
            map["upstreamCluster"] = self.upstreamCluster!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acceptLanguage") {
            self.acceptLanguage = dict["acceptLanguage"] as! String
        }
        if dict.keys.contains("apiId") {
            self.apiId = dict["apiId"] as! String
        }
        if dict.keys.contains("filter") {
            var model = GetDashboardRequest.Filter()
            model.fromMap(dict["filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pluginClassId") {
            self.pluginClassId = dict["pluginClassId"] as! String
        }
        if dict.keys.contains("pluginId") {
            self.pluginId = dict["pluginId"] as! String
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("upstreamCluster") {
            self.upstreamCluster = dict["upstreamCluster"] as! String
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
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.upstreamCluster != nil {
            map["upstreamCluster"] = self.upstreamCluster!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acceptLanguage") {
            self.acceptLanguage = dict["acceptLanguage"] as! String
        }
        if dict.keys.contains("apiId") {
            self.apiId = dict["apiId"] as! String
        }
        if dict.keys.contains("filter") {
            self.filterShrink = dict["filter"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pluginClassId") {
            self.pluginClassId = dict["pluginClassId"] as! String
        }
        if dict.keys.contains("pluginId") {
            self.pluginId = dict["pluginId"] as! String
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("upstreamCluster") {
            self.upstreamCluster = dict["upstreamCluster"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gatewayId") {
                self.gatewayId = dict["gatewayId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("title") {
                self.title = dict["title"] as! String
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = GetDashboardResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDashboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("withStatistics") {
            self.withStatistics = dict["withStatistics"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resourceStatistics") {
                    var tmp : [ResourceStatistic] = []
                    for v in dict["resourceStatistics"] as! [Any] {
                        var model = ResourceStatistic()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resourceStatistics = tmp
                }
                if dict.keys.contains("totalCount") {
                    self.totalCount = dict["totalCount"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("algorithm") {
                self.algorithm = dict["algorithm"] as! String
            }
            if dict.keys.contains("caCertIdentifier") {
                self.caCertIdentifier = dict["caCertIdentifier"] as! String
            }
            if dict.keys.contains("certIdentifier") {
                self.certIdentifier = dict["certIdentifier"] as! String
            }
            if dict.keys.contains("certName") {
                self.certName = dict["certName"] as! String
            }
            if dict.keys.contains("clientCACert") {
                self.clientCACert = dict["clientCACert"] as! String
            }
            if dict.keys.contains("createFrom") {
                self.createFrom = dict["createFrom"] as! String
            }
            if dict.keys.contains("createTimestamp") {
                self.createTimestamp = dict["createTimestamp"] as! Int64
            }
            if dict.keys.contains("default") {
                self.default_ = dict["default"] as! Bool
            }
            if dict.keys.contains("domainId") {
                self.domainId = dict["domainId"] as! String
            }
            if dict.keys.contains("forceHttps") {
                self.forceHttps = dict["forceHttps"] as! Bool
            }
            if dict.keys.contains("http2Option") {
                self.http2Option = dict["http2Option"] as! String
            }
            if dict.keys.contains("issuer") {
                self.issuer = dict["issuer"] as! String
            }
            if dict.keys.contains("mTLSEnabled") {
                self.mTLSEnabled = dict["mTLSEnabled"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("notAfterTimstamp") {
                self.notAfterTimstamp = dict["notAfterTimstamp"] as! Int64
            }
            if dict.keys.contains("notBeforeTimestamp") {
                self.notBeforeTimestamp = dict["notBeforeTimestamp"] as! Int64
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
            if dict.keys.contains("resourceGroupId") {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("sans") {
                self.sans = dict["sans"] as! String
            }
            if dict.keys.contains("statisticsInfo") {
                var model = GetDomainResponseBody.Data.StatisticsInfo()
                model.fromMap(dict["statisticsInfo"] as! [String: Any])
                self.statisticsInfo = model
            }
            if dict.keys.contains("tlsCipherSuitesConfig") {
                var model = TlsCipherSuitesConfig()
                model.fromMap(dict["tlsCipherSuitesConfig"] as! [String: Any])
                self.tlsCipherSuitesConfig = model
            }
            if dict.keys.contains("tlsMax") {
                self.tlsMax = dict["tlsMax"] as! String
            }
            if dict.keys.contains("tlsMin") {
                self.tlsMin = dict["tlsMin"] as! String
            }
            if dict.keys.contains("updatetimestamp") {
                self.updatetimestamp = dict["updatetimestamp"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetDomainResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("withStatistics") {
            self.withStatistics = dict["withStatistics"] as! Bool
        }
        if dict.keys.contains("withVpcInfo") {
            self.withVpcInfo = dict["withVpcInfo"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resourceStatistics") {
                    var tmp : [ResourceStatistic] = []
                    for v in dict["resourceStatistics"] as! [Any] {
                        var model = ResourceStatistic()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resourceStatistics = tmp
                }
                if dict.keys.contains("totalCount") {
                    self.totalCount = dict["totalCount"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alias") {
                self.alias = dict["alias"] as! String
            }
            if dict.keys.contains("createTimestamp") {
                self.createTimestamp = dict["createTimestamp"] as! Int64
            }
            if dict.keys.contains("default") {
                self.default_ = dict["default"] as! Bool
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("gatewayInfo") {
                var model = GatewayInfo()
                model.fromMap(dict["gatewayInfo"] as! [String: Any])
                self.gatewayInfo = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("resourceGroupId") {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("statisticsInfo") {
                var model = GetEnvironmentResponseBody.Data.StatisticsInfo()
                model.fromMap(dict["statisticsInfo"] as! [String: Any])
                self.statisticsInfo = model
            }
            if dict.keys.contains("subDomainInfos") {
                var tmp : [SubDomainInfo] = []
                for v in dict["subDomainInfos"] as! [Any] {
                    var model = SubDomainInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subDomainInfos = tmp
            }
            if dict.keys.contains("updateTimestamp") {
                self.updateTimestamp = dict["updateTimestamp"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetEnvironmentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("alias") {
                    self.alias = dict["alias"] as! String
                }
                if dict.keys.contains("environmentId") {
                    self.environmentId = dict["environmentId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("port") {
                        self.port = dict["port"] as! Int32
                    }
                    if dict.keys.contains("protocol") {
                        self.protocol_ = dict["protocol"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("address") {
                    self.address = dict["address"] as! String
                }
                if dict.keys.contains("addressIpVersion") {
                    self.addressIpVersion = dict["addressIpVersion"] as! String
                }
                if dict.keys.contains("addressType") {
                    self.addressType = dict["addressType"] as! String
                }
                if dict.keys.contains("gatewayDefault") {
                    self.gatewayDefault = dict["gatewayDefault"] as! Bool
                }
                if dict.keys.contains("loadBalancerId") {
                    self.loadBalancerId = dict["loadBalancerId"] as! String
                }
                if dict.keys.contains("mode") {
                    self.mode = dict["mode"] as! String
                }
                if dict.keys.contains("ports") {
                    var tmp : [GetGatewayResponseBody.Data.LoadBalancers.Ports] = []
                    for v in dict["ports"] as! [Any] {
                        var model = GetGatewayResponseBody.Data.LoadBalancers.Ports()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ports = tmp
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("securityGroupId") {
                    self.securityGroupId = dict["securityGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("vSwitchId") {
                    self.vSwitchId = dict["vSwitchId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("vpcId") {
                    self.vpcId = dict["vpcId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("vSwitchId") {
                        self.vSwitchId = dict["vSwitchId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("vSwitch") {
                    var model = GetGatewayResponseBody.Data.Zones.VSwitch()
                    model.fromMap(dict["vSwitch"] as! [String: Any])
                    self.vSwitch = model
                }
                if dict.keys.contains("zoneId") {
                    self.zoneId = dict["zoneId"] as! String
                }
            }
        }
        public var chargeType: String?

        public var createFrom: String?

        public var createTimestamp: Int64?

        public var environments: [GetGatewayResponseBody.Data.Environments]?

        public var expireTimestamp: Int64?

        public var gatewayId: String?

        public var loadBalancers: [GetGatewayResponseBody.Data.LoadBalancers]?

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
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("createFrom") {
                self.createFrom = dict["createFrom"] as! String
            }
            if dict.keys.contains("createTimestamp") {
                self.createTimestamp = dict["createTimestamp"] as! Int64
            }
            if dict.keys.contains("environments") {
                var tmp : [GetGatewayResponseBody.Data.Environments] = []
                for v in dict["environments"] as! [Any] {
                    var model = GetGatewayResponseBody.Data.Environments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.environments = tmp
            }
            if dict.keys.contains("expireTimestamp") {
                self.expireTimestamp = dict["expireTimestamp"] as! Int64
            }
            if dict.keys.contains("gatewayId") {
                self.gatewayId = dict["gatewayId"] as! String
            }
            if dict.keys.contains("loadBalancers") {
                var tmp : [GetGatewayResponseBody.Data.LoadBalancers] = []
                for v in dict["loadBalancers"] as! [Any] {
                    var model = GetGatewayResponseBody.Data.LoadBalancers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.loadBalancers = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("replicas") {
                self.replicas = dict["replicas"] as! String
            }
            if dict.keys.contains("resourceGroupId") {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("securityGroup") {
                var model = GetGatewayResponseBody.Data.SecurityGroup()
                model.fromMap(dict["securityGroup"] as! [String: Any])
                self.securityGroup = model
            }
            if dict.keys.contains("spec") {
                self.spec = dict["spec"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") {
                var tmp : [GetGatewayResponseBody.Data.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = GetGatewayResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("targetVersion") {
                self.targetVersion = dict["targetVersion"] as! String
            }
            if dict.keys.contains("updateTimestamp") {
                self.updateTimestamp = dict["updateTimestamp"] as! Int64
            }
            if dict.keys.contains("vSwitch") {
                var model = GetGatewayResponseBody.Data.VSwitch()
                model.fromMap(dict["vSwitch"] as! [String: Any])
                self.vSwitch = model
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
            if dict.keys.contains("vpc") {
                var model = GetGatewayResponseBody.Data.Vpc()
                model.fromMap(dict["vpc"] as! [String: Any])
                self.vpc = model
            }
            if dict.keys.contains("zones") {
                var tmp : [GetGatewayResponseBody.Data.Zones] = []
                for v in dict["zones"] as! [Any] {
                    var model = GetGatewayResponseBody.Data.Zones()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetGatewayResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = HttpApiApiInfo()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = HttpApiOperationInfo()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetHttpApiOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = HttpRoute()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetHttpApiRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = PolicyDetailInfo()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("attachResourceId") {
                self.attachResourceId = dict["attachResourceId"] as! String
            }
            if dict.keys.contains("attachResourceType") {
                self.attachResourceType = dict["attachResourceType"] as! String
            }
            if dict.keys.contains("config") {
                self.config = dict["config"] as! String
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("gatewayId") {
                self.gatewayId = dict["gatewayId"] as! String
            }
            if dict.keys.contains("policyAttachmentId") {
                self.policyAttachmentId = dict["policyAttachmentId"] as! String
            }
            if dict.keys.contains("policyId") {
                self.policyId = dict["policyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetPolicyAttachmentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPolicyAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("publishedCount") {
                    self.publishedCount = dict["publishedCount"] as! Int64
                }
                if dict.keys.contains("totalCount") {
                    self.totalCount = dict["totalCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("runningCount") {
                    self.runningCount = dict["runningCount"] as! Int64
                }
                if dict.keys.contains("totalCount") {
                    self.totalCount = dict["totalCount"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("api") {
                var model = GetResourceOverviewResponseBody.Data.Api()
                model.fromMap(dict["api"] as! [String: Any])
                self.api = model
            }
            if dict.keys.contains("gateway") {
                var model = GetResourceOverviewResponseBody.Data.Gateway()
                model.fromMap(dict["gateway"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetResourceOverviewResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = Service()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acceptLanguage") {
            self.acceptLanguage = dict["acceptLanguage"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enable") {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("sampleRatio") {
                self.sampleRatio = dict["sampleRatio"] as! Int32
            }
            if dict.keys.contains("serviceId") {
                self.serviceId = dict["serviceId"] as! String
            }
            if dict.keys.contains("servicePort") {
                self.servicePort = dict["servicePort"] as! String
            }
            if dict.keys.contains("traceType") {
                self.traceType = dict["traceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = GetTraceConfigResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTraceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bucketName") {
                self.bucketName = dict["bucketName"] as! String
            }
            if dict.keys.contains("objectKey") {
                self.objectKey = dict["objectKey"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
        }
    }
    public var description_: String?

    public var dryRun: Bool?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("specContentBase64") {
            self.specContentBase64 = dict["specContentBase64"] as! String
        }
        if dict.keys.contains("specFileUrl") {
            self.specFileUrl = dict["specFileUrl"] as! String
        }
        if dict.keys.contains("specOssConfig") {
            var model = ImportHttpApiRequest.SpecOssConfig()
            model.fromMap(dict["specOssConfig"] as! [String: Any])
            self.specOssConfig = model
        }
        if dict.keys.contains("strategy") {
            self.strategy = dict["strategy"] as! String
        }
        if dict.keys.contains("targetHttpApiId") {
            self.targetHttpApiId = dict["targetHttpApiId"] as! String
        }
        if dict.keys.contains("versionConfig") {
            var model = HttpApiVersionConfig()
            model.fromMap(dict["versionConfig"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("errorMessage") {
                        self.errorMessage = dict["errorMessage"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("errorMessage") {
                        self.errorMessage = dict["errorMessage"] as! String
                    }
                    if dict.keys.contains("method") {
                        self.method = dict["method"] as! String
                    }
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("action") {
                        self.action = dict["action"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("action") {
                        self.action = dict["action"] as! String
                    }
                    if dict.keys.contains("method") {
                        self.method = dict["method"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("errorMessages") {
                    self.errorMessages = dict["errorMessages"] as! [String]
                }
                if dict.keys.contains("existHttpApiInfo") {
                    var model = HttpApiApiInfo()
                    model.fromMap(dict["existHttpApiInfo"] as! [String: Any])
                    self.existHttpApiInfo = model
                }
                if dict.keys.contains("failureComponents") {
                    var tmp : [ImportHttpApiResponseBody.Data.DryRunInfo.FailureComponents] = []
                    for v in dict["failureComponents"] as! [Any] {
                        var model = ImportHttpApiResponseBody.Data.DryRunInfo.FailureComponents()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.failureComponents = tmp
                }
                if dict.keys.contains("failureOperations") {
                    var tmp : [ImportHttpApiResponseBody.Data.DryRunInfo.FailureOperations] = []
                    for v in dict["failureOperations"] as! [Any] {
                        var model = ImportHttpApiResponseBody.Data.DryRunInfo.FailureOperations()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.failureOperations = tmp
                }
                if dict.keys.contains("successComponents") {
                    var tmp : [ImportHttpApiResponseBody.Data.DryRunInfo.SuccessComponents] = []
                    for v in dict["successComponents"] as! [Any] {
                        var model = ImportHttpApiResponseBody.Data.DryRunInfo.SuccessComponents()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.successComponents = tmp
                }
                if dict.keys.contains("successOperations") {
                    var tmp : [ImportHttpApiResponseBody.Data.DryRunInfo.SuccessOperations] = []
                    for v in dict["successOperations"] as! [Any] {
                        var model = ImportHttpApiResponseBody.Data.DryRunInfo.SuccessOperations()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.successOperations = tmp
                }
                if dict.keys.contains("warningMessages") {
                    self.warningMessages = dict["warningMessages"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dryRunInfo") {
                var model = ImportHttpApiResponseBody.Data.DryRunInfo()
                model.fromMap(dict["dryRunInfo"] as! [String: Any])
                self.dryRunInfo = model
            }
            if dict.keys.contains("httpApiId") {
                self.httpApiId = dict["httpApiId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ImportHttpApiResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ImportHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDomainsRequest : Tea.TeaModel {
    public var gatewayId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("nameLike") {
            self.nameLike = dict["nameLike"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [DomainInfo] = []
                for v in dict["items"] as! [Any] {
                    var model = DomainInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListDomainsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentsRequest : Tea.TeaModel {
    public var aliasLike: String?

    public var gatewayId: String?

    public var gatewayNameLike: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aliasLike") {
            self.aliasLike = dict["aliasLike"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("gatewayNameLike") {
            self.gatewayNameLike = dict["gatewayNameLike"] as! String
        }
        if dict.keys.contains("nameLike") {
            self.nameLike = dict["nameLike"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [EnvironmentInfo] = []
                for v in dict["items"] as! [Any] {
                    var model = EnvironmentInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListEnvironmentsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEnvironmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var gatewayId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("tag") {
            var tmp : [ListGatewaysRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = ListGatewaysRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListGatewaysShrinkRequest : Tea.TeaModel {
    public var gatewayId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("tag") {
            self.tagShrink = dict["tag"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("port") {
                            self.port = dict["port"] as! Int32
                        }
                        if dict.keys.contains("protocol") {
                            self.protocol_ = dict["protocol"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("address") {
                        self.address = dict["address"] as! String
                    }
                    if dict.keys.contains("addressIpVersion") {
                        self.addressIpVersion = dict["addressIpVersion"] as! String
                    }
                    if dict.keys.contains("addressType") {
                        self.addressType = dict["addressType"] as! String
                    }
                    if dict.keys.contains("gatewayDefault") {
                        self.gatewayDefault = dict["gatewayDefault"] as! Bool
                    }
                    if dict.keys.contains("loadBalancerId") {
                        self.loadBalancerId = dict["loadBalancerId"] as! String
                    }
                    if dict.keys.contains("mode") {
                        self.mode = dict["mode"] as! String
                    }
                    if dict.keys.contains("ports") {
                        var tmp : [ListGatewaysResponseBody.Data.Items.LoadBalancers.Ports] = []
                        for v in dict["ports"] as! [Any] {
                            var model = ListGatewaysResponseBody.Data.Items.LoadBalancers.Ports()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.ports = tmp
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("securityGroupId") {
                        self.securityGroupId = dict["securityGroupId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("key") {
                        self.key = dict["key"] as! String
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("vSwitchId") {
                        self.vSwitchId = dict["vSwitchId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("vpcId") {
                        self.vpcId = dict["vpcId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("vSwitchId") {
                            self.vSwitchId = dict["vSwitchId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("vSwitch") {
                        var model = ListGatewaysResponseBody.Data.Items.Zones.VSwitch()
                        model.fromMap(dict["vSwitch"] as! [String: Any])
                        self.vSwitch = model
                    }
                    if dict.keys.contains("zoneId") {
                        self.zoneId = dict["zoneId"] as! String
                    }
                }
            }
            public var chargeType: String?

            public var createFrom: String?

            public var createTimestamp: Int64?

            public var expireTimestamp: Int64?

            public var gatewayId: String?

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
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chargeType") {
                    self.chargeType = dict["chargeType"] as! String
                }
                if dict.keys.contains("createFrom") {
                    self.createFrom = dict["createFrom"] as! String
                }
                if dict.keys.contains("createTimestamp") {
                    self.createTimestamp = dict["createTimestamp"] as! Int64
                }
                if dict.keys.contains("expireTimestamp") {
                    self.expireTimestamp = dict["expireTimestamp"] as! Int64
                }
                if dict.keys.contains("gatewayId") {
                    self.gatewayId = dict["gatewayId"] as! String
                }
                if dict.keys.contains("loadBalancers") {
                    var tmp : [ListGatewaysResponseBody.Data.Items.LoadBalancers] = []
                    for v in dict["loadBalancers"] as! [Any] {
                        var model = ListGatewaysResponseBody.Data.Items.LoadBalancers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.loadBalancers = tmp
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("replicas") {
                    self.replicas = dict["replicas"] as! String
                }
                if dict.keys.contains("resourceGroupId") {
                    self.resourceGroupId = dict["resourceGroupId"] as! String
                }
                if dict.keys.contains("securityGroup") {
                    var model = ListGatewaysResponseBody.Data.Items.SecurityGroup()
                    model.fromMap(dict["securityGroup"] as! [String: Any])
                    self.securityGroup = model
                }
                if dict.keys.contains("spec") {
                    self.spec = dict["spec"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("subDomainInfos") {
                    var tmp : [SubDomainInfo] = []
                    for v in dict["subDomainInfos"] as! [Any] {
                        var model = SubDomainInfo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subDomainInfos = tmp
                }
                if dict.keys.contains("tags") {
                    var tmp : [ListGatewaysResponseBody.Data.Items.Tags] = []
                    for v in dict["tags"] as! [Any] {
                        var model = ListGatewaysResponseBody.Data.Items.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("targetVersion") {
                    self.targetVersion = dict["targetVersion"] as! String
                }
                if dict.keys.contains("updateTimestamp") {
                    self.updateTimestamp = dict["updateTimestamp"] as! Int64
                }
                if dict.keys.contains("vSwitch") {
                    var model = ListGatewaysResponseBody.Data.Items.VSwitch()
                    model.fromMap(dict["vSwitch"] as! [String: Any])
                    self.vSwitch = model
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
                if dict.keys.contains("vpc") {
                    var model = ListGatewaysResponseBody.Data.Items.Vpc()
                    model.fromMap(dict["vpc"] as! [String: Any])
                    self.vpc = model
                }
                if dict.keys.contains("zones") {
                    var tmp : [ListGatewaysResponseBody.Data.Items.Zones] = []
                    for v in dict["zones"] as! [Any] {
                        var model = ListGatewaysResponseBody.Data.Items.Zones()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [ListGatewaysResponseBody.Data.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = ListGatewaysResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListGatewaysResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListGatewaysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHttpApiOperationsRequest : Tea.TeaModel {
    public var consumerAuthorizationRuleId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("consumerAuthorizationRuleId") {
            self.consumerAuthorizationRuleId = dict["consumerAuthorizationRuleId"] as! String
        }
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nameLike") {
            self.nameLike = dict["nameLike"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("pathLike") {
            self.pathLike = dict["pathLike"] as! String
        }
        if dict.keys.contains("withConsumerInEnvironmentId") {
            self.withConsumerInEnvironmentId = dict["withConsumerInEnvironmentId"] as! String
        }
        if dict.keys.contains("withConsumerInfoById") {
            self.withConsumerInfoById = dict["withConsumerInfoById"] as! String
        }
        if dict.keys.contains("withPluginAttachmentByPluginId") {
            self.withPluginAttachmentByPluginId = dict["withPluginAttachmentByPluginId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [HttpApiOperationInfo] = []
                for v in dict["items"] as! [Any] {
                    var model = HttpApiOperationInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListHttpApiOperationsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListHttpApiOperationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHttpApiRoutesRequest : Tea.TeaModel {
    public var consumerAuthorizationRuleId: String?

    public var deployStatuses: String?

    public var domainId: String?

    public var environmentId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("consumerAuthorizationRuleId") {
            self.consumerAuthorizationRuleId = dict["consumerAuthorizationRuleId"] as! String
        }
        if dict.keys.contains("deployStatuses") {
            self.deployStatuses = dict["deployStatuses"] as! String
        }
        if dict.keys.contains("domainId") {
            self.domainId = dict["domainId"] as! String
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nameLike") {
            self.nameLike = dict["nameLike"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("pathLike") {
            self.pathLike = dict["pathLike"] as! String
        }
        if dict.keys.contains("withAuthPolicyInfo") {
            self.withAuthPolicyInfo = dict["withAuthPolicyInfo"] as! Bool
        }
        if dict.keys.contains("withConsumerInfoById") {
            self.withConsumerInfoById = dict["withConsumerInfoById"] as! String
        }
        if dict.keys.contains("withPluginAttachmentByPluginId") {
            self.withPluginAttachmentByPluginId = dict["withPluginAttachmentByPluginId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [HttpRoute] = []
                for v in dict["items"] as! [Any] {
                    var model = HttpRoute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListHttpApiRoutesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListHttpApiRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHttpApisRequest : Tea.TeaModel {
    public var gatewayId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("types") {
            self.types = dict["types"] as! String
        }
        if dict.keys.contains("withAPIsPublishedToEnvironment") {
            self.withAPIsPublishedToEnvironment = dict["withAPIsPublishedToEnvironment"] as! Bool
        }
        if dict.keys.contains("withAuthPolicyInEnvironmentId") {
            self.withAuthPolicyInEnvironmentId = dict["withAuthPolicyInEnvironmentId"] as! String
        }
        if dict.keys.contains("withAuthPolicyList") {
            self.withAuthPolicyList = dict["withAuthPolicyList"] as! Bool
        }
        if dict.keys.contains("withConsumerInfoById") {
            self.withConsumerInfoById = dict["withConsumerInfoById"] as! String
        }
        if dict.keys.contains("withEnvironmentInfo") {
            self.withEnvironmentInfo = dict["withEnvironmentInfo"] as! Bool
        }
        if dict.keys.contains("withEnvironmentInfoById") {
            self.withEnvironmentInfoById = dict["withEnvironmentInfoById"] as! String
        }
        if dict.keys.contains("withIngressInfo") {
            self.withIngressInfo = dict["withIngressInfo"] as! Bool
        }
        if dict.keys.contains("withPluginAttachmentByPluginId") {
            self.withPluginAttachmentByPluginId = dict["withPluginAttachmentByPluginId"] as! String
        }
        if dict.keys.contains("withPolicyConfigs") {
            self.withPolicyConfigs = dict["withPolicyConfigs"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [HttpApiInfoByName] = []
                for v in dict["items"] as! [Any] {
                    var model = HttpApiInfoByName()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListHttpApisResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListHttpApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicyClassesRequest : Tea.TeaModel {
    public var attachResourceType: String?

    public var direction: String?

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
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.direction != nil {
            map["direction"] = self.direction!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("attachResourceType") {
            self.attachResourceType = dict["attachResourceType"] as! String
        }
        if dict.keys.contains("direction") {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [PolicyClassInfo] = []
                for v in dict["items"] as! [Any] {
                    var model = PolicyClassInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListPolicyClassesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPolicyClassesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("sourceType") {
            self.sourceType = dict["sourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [Service] = []
                for v in dict["items"] as! [Any] {
                    var model = Service()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListServicesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("certNameLike") {
            self.certNameLike = dict["certNameLike"] as! String
        }
        if dict.keys.contains("domainName") {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [SslCertMetaInfo] = []
                for v in dict["items"] as! [Any] {
                    var model = SslCertMetaInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListSslCertsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSslCertsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListZonesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                    map["zoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("zoneId") {
                    self.zoneId = dict["zoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [ListZonesResponseBody.Data.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = ListZonesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListZonesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RestartGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UndeployHttpApiRequest : Tea.TeaModel {
    public var environmentId: String?

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
        if self.routeId != nil {
            map["routeId"] = self.routeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("routeId") {
            self.routeId = dict["routeId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UndeployHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caCertIdentifier") {
            self.caCertIdentifier = dict["caCertIdentifier"] as! String
        }
        if dict.keys.contains("certIdentifier") {
            self.certIdentifier = dict["certIdentifier"] as! String
        }
        if dict.keys.contains("clientCACert") {
            self.clientCACert = dict["clientCACert"] as! String
        }
        if dict.keys.contains("forceHttps") {
            self.forceHttps = dict["forceHttps"] as! Bool
        }
        if dict.keys.contains("http2Option") {
            self.http2Option = dict["http2Option"] as! String
        }
        if dict.keys.contains("mTLSEnabled") {
            self.mTLSEnabled = dict["mTLSEnabled"] as! Bool
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("tlsCipherSuitesConfig") {
            var model = TlsCipherSuitesConfig()
            model.fromMap(dict["tlsCipherSuitesConfig"] as! [String: Any])
            self.tlsCipherSuitesConfig = model
        }
        if dict.keys.contains("tlsMax") {
            self.tlsMax = dict["tlsMax"] as! String
        }
        if dict.keys.contains("tlsMin") {
            self.tlsMin = dict["tlsMin"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deployRevisionId") {
                self.deployRevisionId = dict["deployRevisionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = UpdateDomainResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateGatewayFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateGatewayNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("ingressClass") {
                self.ingressClass = dict["ingressClass"] as! String
            }
            if dict.keys.contains("overrideIngressIp") {
                self.overrideIngressIp = dict["overrideIngressIp"] as! Bool
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! String
            }
            if dict.keys.contains("watchNamespace") {
                self.watchNamespace = dict["watchNamespace"] as! String
            }
        }
    }
    public var aiProtocols: [String]?

    public var authConfig: AuthConfig?

    public var basePath: String?

    public var deployConfigs: [HttpApiDeployConfig]?

    public var description_: String?

    public var enableAuth: Bool?

    public var ingressConfig: UpdateHttpApiRequest.IngressConfig?

    public var protocols: [String]?

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
        if self.ingressConfig != nil {
            map["ingressConfig"] = self.ingressConfig?.toMap()
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.versionConfig != nil {
            map["versionConfig"] = self.versionConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aiProtocols") {
            self.aiProtocols = dict["aiProtocols"] as! [String]
        }
        if dict.keys.contains("authConfig") {
            var model = AuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("basePath") {
            self.basePath = dict["basePath"] as! String
        }
        if dict.keys.contains("deployConfigs") {
            var tmp : [HttpApiDeployConfig] = []
            for v in dict["deployConfigs"] as! [Any] {
                var model = HttpApiDeployConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deployConfigs = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enableAuth") {
            self.enableAuth = dict["enableAuth"] as! Bool
        }
        if dict.keys.contains("ingressConfig") {
            var model = UpdateHttpApiRequest.IngressConfig()
            model.fromMap(dict["ingressConfig"] as! [String: Any])
            self.ingressConfig = model
        }
        if dict.keys.contains("protocols") {
            self.protocols = dict["protocols"] as! [String]
        }
        if dict.keys.contains("versionConfig") {
            var model = HttpApiVersionConfig()
            model.fromMap(dict["versionConfig"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("operation") {
            var model = HttpApiOperation()
            model.fromMap(dict["operation"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateHttpApiOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! Int32
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
                }
                if dict.keys.contains("serviceId") {
                    self.serviceId = dict["serviceId"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("scene") {
                self.scene = dict["scene"] as! String
            }
            if dict.keys.contains("services") {
                var tmp : [UpdateHttpApiRouteRequest.BackendConfig.Services] = []
                for v in dict["services"] as! [Any] {
                    var model = UpdateHttpApiRouteRequest.BackendConfig.Services()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.services = tmp
            }
        }
    }
    public var backendConfig: UpdateHttpApiRouteRequest.BackendConfig?

    public var description_: String?

    public var domainIds: [String]?

    public var environmentId: String?

    public var match: HttpRouteMatch?

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
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("backendConfig") {
            var model = UpdateHttpApiRouteRequest.BackendConfig()
            model.fromMap(dict["backendConfig"] as! [String: Any])
            self.backendConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domainIds") {
            self.domainIds = dict["domainIds"] as! [String]
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("match") {
            var model = HttpRouteMatch()
            model.fromMap(dict["match"] as! [String: Any])
            self.match = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateHttpApiRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdatePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
