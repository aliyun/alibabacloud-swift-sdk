import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelTaskResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CancelTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelTaskResponseBody?

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
            var model = CancelTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResourceRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public var clientToken: String?

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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
        }
        if dict.keys.contains("clientToken") && dict["clientToken"] != nil {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class CreateResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceId: String?

    public var resourcePath: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourcePath != nil {
            map["resourcePath"] = self.resourcePath!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourcePath") && dict["resourcePath"] != nil {
            self.resourcePath = dict["resourcePath"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class CreateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceResponseBody?

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
            var model = CreateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteResourceRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") && dict["clientToken"] != nil {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class DeleteResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class DeleteResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceResponseBody?

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
            var model = DeleteResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceTypeHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAcceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xAcsAcceptLanguage != nil {
            map["x-acs-accept-language"] = self.xAcsAcceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-accept-language") && dict["x-acs-accept-language"] != nil {
            self.xAcsAcceptLanguage = dict["x-acs-accept-language"] as! String
        }
    }
}

public class GetResourceTypeResponseBody : Tea.TeaModel {
    public class ResourceType : Tea.TeaModel {
        public class Handlers : Tea.TeaModel {
            public class Create : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public class Delete : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public class Get_ : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public class List : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public class Update : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public var create: GetResourceTypeResponseBody.ResourceType.Handlers.Create?

            public var delete: GetResourceTypeResponseBody.ResourceType.Handlers.Delete?

            public var get_: GetResourceTypeResponseBody.ResourceType.Handlers.Get_?

            public var list: GetResourceTypeResponseBody.ResourceType.Handlers.List?

            public var update: GetResourceTypeResponseBody.ResourceType.Handlers.Update?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.create?.validate()
                try self.delete?.validate()
                try self.get_?.validate()
                try self.list?.validate()
                try self.update?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.create != nil {
                    map["create"] = self.create?.toMap()
                }
                if self.delete != nil {
                    map["delete"] = self.delete?.toMap()
                }
                if self.get_ != nil {
                    map["get"] = self.get_?.toMap()
                }
                if self.list != nil {
                    map["list"] = self.list?.toMap()
                }
                if self.update != nil {
                    map["update"] = self.update?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("create") && dict["create"] != nil {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.Create()
                    model.fromMap(dict["create"] as! [String: Any])
                    self.create = model
                }
                if dict.keys.contains("delete") && dict["delete"] != nil {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.Delete()
                    model.fromMap(dict["delete"] as! [String: Any])
                    self.delete = model
                }
                if dict.keys.contains("get") && dict["get"] != nil {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.Get_()
                    model.fromMap(dict["get"] as! [String: Any])
                    self.get_ = model
                }
                if dict.keys.contains("list") && dict["list"] != nil {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.List()
                    model.fromMap(dict["list"] as! [String: Any])
                    self.list = model
                }
                if dict.keys.contains("update") && dict["update"] != nil {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.Update()
                    model.fromMap(dict["update"] as! [String: Any])
                    self.update = model
                }
            }
        }
        public class Info : Tea.TeaModel {
            public var chargeType: String?

            public var deliveryScope: String?

            public var description_: String?

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
                if self.chargeType != nil {
                    map["chargeType"] = self.chargeType!
                }
                if self.deliveryScope != nil {
                    map["deliveryScope"] = self.deliveryScope!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                    self.chargeType = dict["chargeType"] as! String
                }
                if dict.keys.contains("deliveryScope") && dict["deliveryScope"] != nil {
                    self.deliveryScope = dict["deliveryScope"] as! String
                }
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("title") && dict["title"] != nil {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var createOnlyProperties: [String]?

        public var deleteOnlyProperties: [String]?

        public var filterProperties: [String]?

        public var getOnlyProperties: [String]?

        public var getResponseProperties: [String]?

        public var handlers: GetResourceTypeResponseBody.ResourceType.Handlers?

        public var info: GetResourceTypeResponseBody.ResourceType.Info?

        public var listOnlyProperties: [String]?

        public var listResponseProperties: [String]?

        public var primaryIdentifier: String?

        public var product: String?

        public var properties: [String: Any]?

        public var publicProperties: [String]?

        public var readOnlyProperties: [String]?

        public var required_: [String]?

        public var resourceType: String?

        public var sensitiveInfoProperties: [String]?

        public var updateOnlyProperties: [String]?

        public var updateTypeProperties: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.handlers?.validate()
            try self.info?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createOnlyProperties != nil {
                map["createOnlyProperties"] = self.createOnlyProperties!
            }
            if self.deleteOnlyProperties != nil {
                map["deleteOnlyProperties"] = self.deleteOnlyProperties!
            }
            if self.filterProperties != nil {
                map["filterProperties"] = self.filterProperties!
            }
            if self.getOnlyProperties != nil {
                map["getOnlyProperties"] = self.getOnlyProperties!
            }
            if self.getResponseProperties != nil {
                map["getResponseProperties"] = self.getResponseProperties!
            }
            if self.handlers != nil {
                map["handlers"] = self.handlers?.toMap()
            }
            if self.info != nil {
                map["info"] = self.info?.toMap()
            }
            if self.listOnlyProperties != nil {
                map["listOnlyProperties"] = self.listOnlyProperties!
            }
            if self.listResponseProperties != nil {
                map["listResponseProperties"] = self.listResponseProperties!
            }
            if self.primaryIdentifier != nil {
                map["primaryIdentifier"] = self.primaryIdentifier!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.publicProperties != nil {
                map["publicProperties"] = self.publicProperties!
            }
            if self.readOnlyProperties != nil {
                map["readOnlyProperties"] = self.readOnlyProperties!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.sensitiveInfoProperties != nil {
                map["sensitiveInfoProperties"] = self.sensitiveInfoProperties!
            }
            if self.updateOnlyProperties != nil {
                map["updateOnlyProperties"] = self.updateOnlyProperties!
            }
            if self.updateTypeProperties != nil {
                map["updateTypeProperties"] = self.updateTypeProperties!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createOnlyProperties") && dict["createOnlyProperties"] != nil {
                self.createOnlyProperties = dict["createOnlyProperties"] as! [String]
            }
            if dict.keys.contains("deleteOnlyProperties") && dict["deleteOnlyProperties"] != nil {
                self.deleteOnlyProperties = dict["deleteOnlyProperties"] as! [String]
            }
            if dict.keys.contains("filterProperties") && dict["filterProperties"] != nil {
                self.filterProperties = dict["filterProperties"] as! [String]
            }
            if dict.keys.contains("getOnlyProperties") && dict["getOnlyProperties"] != nil {
                self.getOnlyProperties = dict["getOnlyProperties"] as! [String]
            }
            if dict.keys.contains("getResponseProperties") && dict["getResponseProperties"] != nil {
                self.getResponseProperties = dict["getResponseProperties"] as! [String]
            }
            if dict.keys.contains("handlers") && dict["handlers"] != nil {
                var model = GetResourceTypeResponseBody.ResourceType.Handlers()
                model.fromMap(dict["handlers"] as! [String: Any])
                self.handlers = model
            }
            if dict.keys.contains("info") && dict["info"] != nil {
                var model = GetResourceTypeResponseBody.ResourceType.Info()
                model.fromMap(dict["info"] as! [String: Any])
                self.info = model
            }
            if dict.keys.contains("listOnlyProperties") && dict["listOnlyProperties"] != nil {
                self.listOnlyProperties = dict["listOnlyProperties"] as! [String]
            }
            if dict.keys.contains("listResponseProperties") && dict["listResponseProperties"] != nil {
                self.listResponseProperties = dict["listResponseProperties"] as! [String]
            }
            if dict.keys.contains("primaryIdentifier") && dict["primaryIdentifier"] != nil {
                self.primaryIdentifier = dict["primaryIdentifier"] as! String
            }
            if dict.keys.contains("product") && dict["product"] != nil {
                self.product = dict["product"] as! String
            }
            if dict.keys.contains("properties") && dict["properties"] != nil {
                self.properties = dict["properties"] as! [String: Any]
            }
            if dict.keys.contains("publicProperties") && dict["publicProperties"] != nil {
                self.publicProperties = dict["publicProperties"] as! [String]
            }
            if dict.keys.contains("readOnlyProperties") && dict["readOnlyProperties"] != nil {
                self.readOnlyProperties = dict["readOnlyProperties"] as! [String]
            }
            if dict.keys.contains("required") && dict["required"] != nil {
                self.required_ = dict["required"] as! [String]
            }
            if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("sensitiveInfoProperties") && dict["sensitiveInfoProperties"] != nil {
                self.sensitiveInfoProperties = dict["sensitiveInfoProperties"] as! [String]
            }
            if dict.keys.contains("updateOnlyProperties") && dict["updateOnlyProperties"] != nil {
                self.updateOnlyProperties = dict["updateOnlyProperties"] as! [String]
            }
            if dict.keys.contains("updateTypeProperties") && dict["updateTypeProperties"] != nil {
                self.updateTypeProperties = dict["updateTypeProperties"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var resourceType: GetResourceTypeResponseBody.ResourceType?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceType?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            var model = GetResourceTypeResponseBody.ResourceType()
            model.fromMap(dict["resourceType"] as! [String: Any])
            self.resourceType = model
        }
    }
}

public class GetResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceTypeResponseBody?

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
            var model = GetResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourcesRequest : Tea.TeaModel {
    public var filter: [String: Any]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filter") && dict["filter"] != nil {
            self.filter = dict["filter"] as! [String: Any]
        }
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class GetResourcesShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.filterShrink != nil {
            map["filter"] = self.filterShrink!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filter") && dict["filter"] != nil {
            self.filterShrink = dict["filter"] as! String
        }
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class GetResourcesResponseBody : Tea.TeaModel {
    public class Resource : Tea.TeaModel {
        public var resourceAttributes: [String: Any]?

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
            if self.resourceAttributes != nil {
                map["resourceAttributes"] = self.resourceAttributes!
            }
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("resourceAttributes") && dict["resourceAttributes"] != nil {
                self.resourceAttributes = dict["resourceAttributes"] as! [String: Any]
            }
            if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
                self.resourceId = dict["resourceId"] as! String
            }
        }
    }
    public class Resources : Tea.TeaModel {
        public var resourceAttributes: [String: Any]?

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
            if self.resourceAttributes != nil {
                map["resourceAttributes"] = self.resourceAttributes!
            }
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("resourceAttributes") && dict["resourceAttributes"] != nil {
                self.resourceAttributes = dict["resourceAttributes"] as! [String: Any]
            }
            if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
                self.resourceId = dict["resourceId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resource: GetResourcesResponseBody.Resource?

    public var resources: [GetResourcesResponseBody.Resources]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resource != nil {
            map["resource"] = self.resource?.toMap()
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["resources"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resource") && dict["resource"] != nil {
            var model = GetResourcesResponseBody.Resource()
            model.fromMap(dict["resource"] as! [String: Any])
            self.resource = model
        }
        if dict.keys.contains("resources") && dict["resources"] != nil {
            var tmp : [GetResourcesResponseBody.Resources] = []
            for v in dict["resources"] as! [Any] {
                var model = GetResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class GetResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcesResponseBody?

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
            var model = GetResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class Error : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") && dict["code"] != nil {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("message") && dict["message"] != nil {
                    self.message = dict["message"] as! String
                }
            }
        }
        public var createTime: String?

        public var error: GetTaskResponseBody.Task.Error?

        public var product: String?

        public var regionId: String?

        public var resourceId: String?

        public var resourcePath: String?

        public var resourceType: String?

        public var status: String?

        public var taskAction: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.error?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.error != nil {
                map["error"] = self.error?.toMap()
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            if self.resourcePath != nil {
                map["resourcePath"] = self.resourcePath!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskAction != nil {
                map["taskAction"] = self.taskAction!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("error") && dict["error"] != nil {
                var model = GetTaskResponseBody.Task.Error()
                model.fromMap(dict["error"] as! [String: Any])
                self.error = model
            }
            if dict.keys.contains("product") && dict["product"] != nil {
                self.product = dict["product"] as! String
            }
            if dict.keys.contains("regionId") && dict["regionId"] != nil {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
                self.resourceId = dict["resourceId"] as! String
            }
            if dict.keys.contains("resourcePath") && dict["resourcePath"] != nil {
                self.resourcePath = dict["resourcePath"] as! String
            }
            if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskAction") && dict["taskAction"] != nil {
                self.taskAction = dict["taskAction"] as! String
            }
            if dict.keys.contains("taskId") && dict["taskId"] != nil {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var requestId: String?

    public var task: GetTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.task != nil {
            map["task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("task") && dict["task"] != nil {
            var model = GetTaskResponseBody.Task()
            model.fromMap(dict["task"] as! [String: Any])
            self.task = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

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
            var model = GetTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourcesRequest : Tea.TeaModel {
    public var attributeName: String?

    public var filter: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributeName != nil {
            map["attributeName"] = self.attributeName!
        }
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("attributeName") && dict["attributeName"] != nil {
            self.attributeName = dict["attributeName"] as! String
        }
        if dict.keys.contains("filter") && dict["filter"] != nil {
            self.filter = dict["filter"] as! [String: Any]
        }
    }
}

public class ListDataSourcesShrinkRequest : Tea.TeaModel {
    public var attributeName: String?

    public var filterShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributeName != nil {
            map["attributeName"] = self.attributeName!
        }
        if self.filterShrink != nil {
            map["filter"] = self.filterShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("attributeName") && dict["attributeName"] != nil {
            self.attributeName = dict["attributeName"] as! String
        }
        if dict.keys.contains("filter") && dict["filter"] != nil {
            self.filterShrink = dict["filter"] as! String
        }
    }
}

public class ListDataSourcesResponseBody : Tea.TeaModel {
    public class DataSources : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
        }
    }
    public var dataSources: [ListDataSourcesResponseBody.DataSources]?

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
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["dataSources"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSources") && dict["dataSources"] != nil {
            var tmp : [ListDataSourcesResponseBody.DataSources] = []
            for v in dict["dataSources"] as! [Any] {
                var model = ListDataSourcesResponseBody.DataSources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSources = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourcesResponseBody?

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
            var model = ListDataSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAcceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xAcsAcceptLanguage != nil {
            map["x-acs-accept-language"] = self.xAcsAcceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-accept-language") && dict["x-acs-accept-language"] != nil {
            self.xAcsAcceptLanguage = dict["x-acs-accept-language"] as! String
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public var productCode: String?

        public var productName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["productCode"] = self.productCode!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("productCode") && dict["productCode"] != nil {
                self.productCode = dict["productCode"] as! String
            }
            if dict.keys.contains("productName") && dict["productName"] != nil {
                self.productName = dict["productName"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var products: [ListProductsResponseBody.Products]?

    public var requestId: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["products"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("products") && dict["products"] != nil {
            var tmp : [ListProductsResponseBody.Products] = []
            for v in dict["products"] as! [Any] {
                var model = ListProductsResponseBody.Products()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsResponseBody?

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
            var model = ListProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceTypesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAcceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xAcsAcceptLanguage != nil {
            map["x-acs-accept-language"] = self.xAcsAcceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-accept-language") && dict["x-acs-accept-language"] != nil {
            self.xAcsAcceptLanguage = dict["x-acs-accept-language"] as! String
        }
    }
}

public class ListResourceTypesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceTypes: [String]?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceTypes != nil {
            map["resourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("resourceTypes") && dict["resourceTypes"] != nil {
            self.resourceTypes = dict["resourceTypes"] as! [String]
        }
    }
}

public class ListResourceTypesShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceTypesShrink: String?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceTypesShrink != nil {
            map["resourceTypes"] = self.resourceTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("resourceTypes") && dict["resourceTypes"] != nil {
            self.resourceTypesShrink = dict["resourceTypes"] as! String
        }
    }
}

public class ListResourceTypesResponseBody : Tea.TeaModel {
    public class ResourceTypes : Tea.TeaModel {
        public class Handlers : Tea.TeaModel {
            public class Create : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public class Delete : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public class Get_ : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public class List : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public class Update : Tea.TeaModel {
                public var permissions: [String]?

                public override init() {
                    super.init()
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
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("permissions") && dict["permissions"] != nil {
                        self.permissions = dict["permissions"] as! [String]
                    }
                }
            }
            public var create: ListResourceTypesResponseBody.ResourceTypes.Handlers.Create?

            public var delete: ListResourceTypesResponseBody.ResourceTypes.Handlers.Delete?

            public var get_: ListResourceTypesResponseBody.ResourceTypes.Handlers.Get_?

            public var list: ListResourceTypesResponseBody.ResourceTypes.Handlers.List?

            public var update: ListResourceTypesResponseBody.ResourceTypes.Handlers.Update?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.create?.validate()
                try self.delete?.validate()
                try self.get_?.validate()
                try self.list?.validate()
                try self.update?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.create != nil {
                    map["create"] = self.create?.toMap()
                }
                if self.delete != nil {
                    map["delete"] = self.delete?.toMap()
                }
                if self.get_ != nil {
                    map["get"] = self.get_?.toMap()
                }
                if self.list != nil {
                    map["list"] = self.list?.toMap()
                }
                if self.update != nil {
                    map["update"] = self.update?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("create") && dict["create"] != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.Create()
                    model.fromMap(dict["create"] as! [String: Any])
                    self.create = model
                }
                if dict.keys.contains("delete") && dict["delete"] != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.Delete()
                    model.fromMap(dict["delete"] as! [String: Any])
                    self.delete = model
                }
                if dict.keys.contains("get") && dict["get"] != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.Get_()
                    model.fromMap(dict["get"] as! [String: Any])
                    self.get_ = model
                }
                if dict.keys.contains("list") && dict["list"] != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.List()
                    model.fromMap(dict["list"] as! [String: Any])
                    self.list = model
                }
                if dict.keys.contains("update") && dict["update"] != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.Update()
                    model.fromMap(dict["update"] as! [String: Any])
                    self.update = model
                }
            }
        }
        public class Info : Tea.TeaModel {
            public var chargeType: String?

            public var deliveryScope: String?

            public var description_: String?

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
                if self.chargeType != nil {
                    map["chargeType"] = self.chargeType!
                }
                if self.deliveryScope != nil {
                    map["deliveryScope"] = self.deliveryScope!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                    self.chargeType = dict["chargeType"] as! String
                }
                if dict.keys.contains("deliveryScope") && dict["deliveryScope"] != nil {
                    self.deliveryScope = dict["deliveryScope"] as! String
                }
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("title") && dict["title"] != nil {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var createOnlyProperties: [String]?

        public var deleteOnlyProperties: [String]?

        public var filterProperties: [String]?

        public var getOnlyProperties: [String]?

        public var getResponseProperties: [String]?

        public var handlers: ListResourceTypesResponseBody.ResourceTypes.Handlers?

        public var info: ListResourceTypesResponseBody.ResourceTypes.Info?

        public var listOnlyProperties: [String]?

        public var listResponseProperties: [String]?

        public var primaryIdentifier: String?

        public var product: String?

        public var properties: [String: Any]?

        public var publicProperties: [String]?

        public var readOnlyProperties: [String]?

        public var required_: [String]?

        public var resourceType: String?

        public var sensitiveInfoProperties: [String]?

        public var updateOnlyProperties: [String]?

        public var updateTypeProperties: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.handlers?.validate()
            try self.info?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createOnlyProperties != nil {
                map["createOnlyProperties"] = self.createOnlyProperties!
            }
            if self.deleteOnlyProperties != nil {
                map["deleteOnlyProperties"] = self.deleteOnlyProperties!
            }
            if self.filterProperties != nil {
                map["filterProperties"] = self.filterProperties!
            }
            if self.getOnlyProperties != nil {
                map["getOnlyProperties"] = self.getOnlyProperties!
            }
            if self.getResponseProperties != nil {
                map["getResponseProperties"] = self.getResponseProperties!
            }
            if self.handlers != nil {
                map["handlers"] = self.handlers?.toMap()
            }
            if self.info != nil {
                map["info"] = self.info?.toMap()
            }
            if self.listOnlyProperties != nil {
                map["listOnlyProperties"] = self.listOnlyProperties!
            }
            if self.listResponseProperties != nil {
                map["listResponseProperties"] = self.listResponseProperties!
            }
            if self.primaryIdentifier != nil {
                map["primaryIdentifier"] = self.primaryIdentifier!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.publicProperties != nil {
                map["publicProperties"] = self.publicProperties!
            }
            if self.readOnlyProperties != nil {
                map["readOnlyProperties"] = self.readOnlyProperties!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.sensitiveInfoProperties != nil {
                map["sensitiveInfoProperties"] = self.sensitiveInfoProperties!
            }
            if self.updateOnlyProperties != nil {
                map["updateOnlyProperties"] = self.updateOnlyProperties!
            }
            if self.updateTypeProperties != nil {
                map["updateTypeProperties"] = self.updateTypeProperties!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createOnlyProperties") && dict["createOnlyProperties"] != nil {
                self.createOnlyProperties = dict["createOnlyProperties"] as! [String]
            }
            if dict.keys.contains("deleteOnlyProperties") && dict["deleteOnlyProperties"] != nil {
                self.deleteOnlyProperties = dict["deleteOnlyProperties"] as! [String]
            }
            if dict.keys.contains("filterProperties") && dict["filterProperties"] != nil {
                self.filterProperties = dict["filterProperties"] as! [String]
            }
            if dict.keys.contains("getOnlyProperties") && dict["getOnlyProperties"] != nil {
                self.getOnlyProperties = dict["getOnlyProperties"] as! [String]
            }
            if dict.keys.contains("getResponseProperties") && dict["getResponseProperties"] != nil {
                self.getResponseProperties = dict["getResponseProperties"] as! [String]
            }
            if dict.keys.contains("handlers") && dict["handlers"] != nil {
                var model = ListResourceTypesResponseBody.ResourceTypes.Handlers()
                model.fromMap(dict["handlers"] as! [String: Any])
                self.handlers = model
            }
            if dict.keys.contains("info") && dict["info"] != nil {
                var model = ListResourceTypesResponseBody.ResourceTypes.Info()
                model.fromMap(dict["info"] as! [String: Any])
                self.info = model
            }
            if dict.keys.contains("listOnlyProperties") && dict["listOnlyProperties"] != nil {
                self.listOnlyProperties = dict["listOnlyProperties"] as! [String]
            }
            if dict.keys.contains("listResponseProperties") && dict["listResponseProperties"] != nil {
                self.listResponseProperties = dict["listResponseProperties"] as! [String]
            }
            if dict.keys.contains("primaryIdentifier") && dict["primaryIdentifier"] != nil {
                self.primaryIdentifier = dict["primaryIdentifier"] as! String
            }
            if dict.keys.contains("product") && dict["product"] != nil {
                self.product = dict["product"] as! String
            }
            if dict.keys.contains("properties") && dict["properties"] != nil {
                self.properties = dict["properties"] as! [String: Any]
            }
            if dict.keys.contains("publicProperties") && dict["publicProperties"] != nil {
                self.publicProperties = dict["publicProperties"] as! [String]
            }
            if dict.keys.contains("readOnlyProperties") && dict["readOnlyProperties"] != nil {
                self.readOnlyProperties = dict["readOnlyProperties"] as! [String]
            }
            if dict.keys.contains("required") && dict["required"] != nil {
                self.required_ = dict["required"] as! [String]
            }
            if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("sensitiveInfoProperties") && dict["sensitiveInfoProperties"] != nil {
                self.sensitiveInfoProperties = dict["sensitiveInfoProperties"] as! [String]
            }
            if dict.keys.contains("updateOnlyProperties") && dict["updateOnlyProperties"] != nil {
                self.updateOnlyProperties = dict["updateOnlyProperties"] as! [String]
            }
            if dict.keys.contains("updateTypeProperties") && dict["updateTypeProperties"] != nil {
                self.updateTypeProperties = dict["updateTypeProperties"] as! [String]
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resourceTypes: [ListResourceTypesResponseBody.ResourceTypes]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceTypes != nil {
            var tmp : [Any] = []
            for k in self.resourceTypes! {
                tmp.append(k.toMap())
            }
            map["resourceTypes"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resourceTypes") && dict["resourceTypes"] != nil {
            var tmp : [ListResourceTypesResponseBody.ResourceTypes] = []
            for v in dict["resourceTypes"] as! [Any] {
                var model = ListResourceTypesResponseBody.ResourceTypes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceTypes = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListResourceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceTypesResponseBody?

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
            var model = ListResourceTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourceRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public var clientToken: String?

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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
        }
        if dict.keys.contains("clientToken") && dict["clientToken"] != nil {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class UpdateResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class UpdateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceResponseBody?

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
            var model = UpdateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
