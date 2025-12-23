import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssociateDefaultFilterRequest : Tea.TeaModel {
    public var filterName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterName != nil {
            map["FilterName"] = self.filterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilterName"] as? String {
            self.filterName = value
        }
    }
}

public class AssociateDefaultFilterResponseBody : Tea.TeaModel {
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

public class AssociateDefaultFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateDefaultFilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AssociateDefaultFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeliveryChannelRequest : Tea.TeaModel {
    public class DeliveryChannelFilter : Tea.TeaModel {
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
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceTypes"] as? [String] {
                self.resourceTypes = value
            }
        }
    }
    public class ResourceChangeDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var slsProperties: CreateDeliveryChannelRequest.ResourceChangeDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = CreateDeliveryChannelRequest.ResourceChangeDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public class ResourceSnapshotDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var customExpression: String?

        public var deliveryTime: String?

        public var slsProperties: CreateDeliveryChannelRequest.ResourceSnapshotDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customExpression != nil {
                map["CustomExpression"] = self.customExpression!
            }
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomExpression"] as? String {
                self.customExpression = value
            }
            if let value = dict["DeliveryTime"] as? String {
                self.deliveryTime = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = CreateDeliveryChannelRequest.ResourceSnapshotDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var deliveryChannelDescription: String?

    public var deliveryChannelFilter: CreateDeliveryChannelRequest.DeliveryChannelFilter?

    public var deliveryChannelName: String?

    public var resourceChangeDelivery: CreateDeliveryChannelRequest.ResourceChangeDelivery?

    public var resourceSnapshotDelivery: CreateDeliveryChannelRequest.ResourceSnapshotDelivery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannelFilter?.validate()
        try self.resourceChangeDelivery?.validate()
        try self.resourceSnapshotDelivery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelDescription != nil {
            map["DeliveryChannelDescription"] = self.deliveryChannelDescription!
        }
        if self.deliveryChannelFilter != nil {
            map["DeliveryChannelFilter"] = self.deliveryChannelFilter?.toMap()
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.resourceChangeDelivery != nil {
            map["ResourceChangeDelivery"] = self.resourceChangeDelivery?.toMap()
        }
        if self.resourceSnapshotDelivery != nil {
            map["ResourceSnapshotDelivery"] = self.resourceSnapshotDelivery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelDescription"] as? String {
            self.deliveryChannelDescription = value
        }
        if let value = dict["DeliveryChannelFilter"] as? [String: Any?] {
            var model = CreateDeliveryChannelRequest.DeliveryChannelFilter()
            model.fromMap(value)
            self.deliveryChannelFilter = model
        }
        if let value = dict["DeliveryChannelName"] as? String {
            self.deliveryChannelName = value
        }
        if let value = dict["ResourceChangeDelivery"] as? [String: Any?] {
            var model = CreateDeliveryChannelRequest.ResourceChangeDelivery()
            model.fromMap(value)
            self.resourceChangeDelivery = model
        }
        if let value = dict["ResourceSnapshotDelivery"] as? [String: Any?] {
            var model = CreateDeliveryChannelRequest.ResourceSnapshotDelivery()
            model.fromMap(value)
            self.resourceSnapshotDelivery = model
        }
    }
}

public class CreateDeliveryChannelResponseBody : Tea.TeaModel {
    public var deliveryChannelId: String?

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
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDeliveryChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFilterRequest : Tea.TeaModel {
    public var filterConfiguration: String?

    public var filterName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterConfiguration != nil {
            map["FilterConfiguration"] = self.filterConfiguration!
        }
        if self.filterName != nil {
            map["FilterName"] = self.filterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilterConfiguration"] as? String {
            self.filterConfiguration = value
        }
        if let value = dict["FilterName"] as? String {
            self.filterName = value
        }
    }
}

public class CreateFilterResponseBody : Tea.TeaModel {
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

public class CreateFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMultiAccountDeliveryChannelRequest : Tea.TeaModel {
    public class DeliveryChannelFilter : Tea.TeaModel {
        public var accountScopes: [String]?

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
            if self.accountScopes != nil {
                map["AccountScopes"] = self.accountScopes!
            }
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountScopes"] as? [String] {
                self.accountScopes = value
            }
            if let value = dict["ResourceTypes"] as? [String] {
                self.resourceTypes = value
            }
        }
    }
    public class ResourceChangeDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var slsProperties: CreateMultiAccountDeliveryChannelRequest.ResourceChangeDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = CreateMultiAccountDeliveryChannelRequest.ResourceChangeDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public class ResourceSnapshotDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var customExpression: String?

        public var deliveryTime: String?

        public var slsProperties: CreateMultiAccountDeliveryChannelRequest.ResourceSnapshotDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customExpression != nil {
                map["CustomExpression"] = self.customExpression!
            }
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomExpression"] as? String {
                self.customExpression = value
            }
            if let value = dict["DeliveryTime"] as? String {
                self.deliveryTime = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = CreateMultiAccountDeliveryChannelRequest.ResourceSnapshotDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var deliveryChannelDescription: String?

    public var deliveryChannelFilter: CreateMultiAccountDeliveryChannelRequest.DeliveryChannelFilter?

    public var deliveryChannelName: String?

    public var resourceChangeDelivery: CreateMultiAccountDeliveryChannelRequest.ResourceChangeDelivery?

    public var resourceSnapshotDelivery: CreateMultiAccountDeliveryChannelRequest.ResourceSnapshotDelivery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannelFilter?.validate()
        try self.resourceChangeDelivery?.validate()
        try self.resourceSnapshotDelivery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelDescription != nil {
            map["DeliveryChannelDescription"] = self.deliveryChannelDescription!
        }
        if self.deliveryChannelFilter != nil {
            map["DeliveryChannelFilter"] = self.deliveryChannelFilter?.toMap()
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.resourceChangeDelivery != nil {
            map["ResourceChangeDelivery"] = self.resourceChangeDelivery?.toMap()
        }
        if self.resourceSnapshotDelivery != nil {
            map["ResourceSnapshotDelivery"] = self.resourceSnapshotDelivery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelDescription"] as? String {
            self.deliveryChannelDescription = value
        }
        if let value = dict["DeliveryChannelFilter"] as? [String: Any?] {
            var model = CreateMultiAccountDeliveryChannelRequest.DeliveryChannelFilter()
            model.fromMap(value)
            self.deliveryChannelFilter = model
        }
        if let value = dict["DeliveryChannelName"] as? String {
            self.deliveryChannelName = value
        }
        if let value = dict["ResourceChangeDelivery"] as? [String: Any?] {
            var model = CreateMultiAccountDeliveryChannelRequest.ResourceChangeDelivery()
            model.fromMap(value)
            self.resourceChangeDelivery = model
        }
        if let value = dict["ResourceSnapshotDelivery"] as? [String: Any?] {
            var model = CreateMultiAccountDeliveryChannelRequest.ResourceSnapshotDelivery()
            model.fromMap(value)
            self.resourceSnapshotDelivery = model
        }
    }
}

public class CreateMultiAccountDeliveryChannelResponseBody : Tea.TeaModel {
    public var deliveryChannelId: String?

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
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMultiAccountDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMultiAccountDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMultiAccountDeliveryChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSavedQueryRequest : Tea.TeaModel {
    public var description_: String?

    public var expression: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateSavedQueryResponseBody : Tea.TeaModel {
    public var queryId: String?

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
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSavedQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSavedQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSavedQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDeliveryChannelRequest : Tea.TeaModel {
    public var deliveryChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
    }
}

public class DeleteDeliveryChannelResponseBody : Tea.TeaModel {
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

public class DeleteDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDeliveryChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFilterRequest : Tea.TeaModel {
    public var filterName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterName != nil {
            map["FilterName"] = self.filterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilterName"] as? String {
            self.filterName = value
        }
    }
}

public class DeleteFilterResponseBody : Tea.TeaModel {
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

public class DeleteFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMultiAccountDeliveryChannelRequest : Tea.TeaModel {
    public var deliveryChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
    }
}

public class DeleteMultiAccountDeliveryChannelResponseBody : Tea.TeaModel {
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

public class DeleteMultiAccountDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMultiAccountDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMultiAccountDeliveryChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSavedQueryRequest : Tea.TeaModel {
    public var queryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
    }
}

public class DeleteSavedQueryResponseBody : Tea.TeaModel {
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

public class DeleteSavedQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSavedQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSavedQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableMultiAccountResourceCenterResponseBody : Tea.TeaModel {
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

public class DisableMultiAccountResourceCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableMultiAccountResourceCenterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableMultiAccountResourceCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableResourceCenterResponseBody : Tea.TeaModel {
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

public class DisableResourceCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableResourceCenterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableResourceCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisassociateDefaultFilterResponseBody : Tea.TeaModel {
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

public class DisassociateDefaultFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociateDefaultFilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisassociateDefaultFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableMultiAccountResourceCenterResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class EnableMultiAccountResourceCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableMultiAccountResourceCenterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableMultiAccountResourceCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableResourceCenterResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class EnableResourceCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableResourceCenterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableResourceCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteMultiAccountSQLQueryRequest : Tea.TeaModel {
    public var expression: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var scope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class ExecuteMultiAccountSQLQueryResponseBody : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var columns: [ExecuteMultiAccountSQLQueryResponseBody.Columns]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var rows: [Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["Columns"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rows != nil {
            map["Rows"] = self.rows!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Columns"] as? [Any?] {
            var tmp : [ExecuteMultiAccountSQLQueryResponseBody.Columns] = []
            for v in value {
                if v != nil {
                    var model = ExecuteMultiAccountSQLQueryResponseBody.Columns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columns = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rows"] as? [Any] {
            self.rows = value
        }
    }
}

public class ExecuteMultiAccountSQLQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteMultiAccountSQLQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecuteMultiAccountSQLQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteSQLQueryRequest : Tea.TeaModel {
    public var expression: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var scope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class ExecuteSQLQueryResponseBody : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var columns: [ExecuteSQLQueryResponseBody.Columns]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var rows: [Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["Columns"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rows != nil {
            map["Rows"] = self.rows!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Columns"] as? [Any?] {
            var tmp : [ExecuteSQLQueryResponseBody.Columns] = []
            for v in value {
                if v != nil {
                    var model = ExecuteSQLQueryResponseBody.Columns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columns = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rows"] as? [Any] {
            self.rows = value
        }
    }
}

public class ExecuteSQLQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteSQLQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecuteSQLQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeliveryChannelRequest : Tea.TeaModel {
    public var deliveryChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
    }
}

public class GetDeliveryChannelResponseBody : Tea.TeaModel {
    public class DeliveryChannelFilter : Tea.TeaModel {
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
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceTypes"] as? [String] {
                self.resourceTypes = value
            }
        }
    }
    public class ResourceChangeDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var enabled: String?

        public var slsProperties: GetDeliveryChannelResponseBody.ResourceChangeDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = GetDeliveryChannelResponseBody.ResourceChangeDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public class ResourceSnapshotDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var customExpression: String?

        public var deliveryTime: String?

        public var enabled: String?

        public var slsProperties: GetDeliveryChannelResponseBody.ResourceSnapshotDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customExpression != nil {
                map["CustomExpression"] = self.customExpression!
            }
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomExpression"] as? String {
                self.customExpression = value
            }
            if let value = dict["DeliveryTime"] as? String {
                self.deliveryTime = value
            }
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = GetDeliveryChannelResponseBody.ResourceSnapshotDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var deliveryChannelDescription: String?

    public var deliveryChannelFilter: GetDeliveryChannelResponseBody.DeliveryChannelFilter?

    public var deliveryChannelId: String?

    public var deliveryChannelName: String?

    public var requestId: String?

    public var resourceChangeDelivery: GetDeliveryChannelResponseBody.ResourceChangeDelivery?

    public var resourceSnapshotDelivery: GetDeliveryChannelResponseBody.ResourceSnapshotDelivery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannelFilter?.validate()
        try self.resourceChangeDelivery?.validate()
        try self.resourceSnapshotDelivery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelDescription != nil {
            map["DeliveryChannelDescription"] = self.deliveryChannelDescription!
        }
        if self.deliveryChannelFilter != nil {
            map["DeliveryChannelFilter"] = self.deliveryChannelFilter?.toMap()
        }
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceChangeDelivery != nil {
            map["ResourceChangeDelivery"] = self.resourceChangeDelivery?.toMap()
        }
        if self.resourceSnapshotDelivery != nil {
            map["ResourceSnapshotDelivery"] = self.resourceSnapshotDelivery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelDescription"] as? String {
            self.deliveryChannelDescription = value
        }
        if let value = dict["DeliveryChannelFilter"] as? [String: Any?] {
            var model = GetDeliveryChannelResponseBody.DeliveryChannelFilter()
            model.fromMap(value)
            self.deliveryChannelFilter = model
        }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
        if let value = dict["DeliveryChannelName"] as? String {
            self.deliveryChannelName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceChangeDelivery"] as? [String: Any?] {
            var model = GetDeliveryChannelResponseBody.ResourceChangeDelivery()
            model.fromMap(value)
            self.resourceChangeDelivery = model
        }
        if let value = dict["ResourceSnapshotDelivery"] as? [String: Any?] {
            var model = GetDeliveryChannelResponseBody.ResourceSnapshotDelivery()
            model.fromMap(value)
            self.resourceSnapshotDelivery = model
        }
    }
}

public class GetDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeliveryChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeliveryChannelStatisticsRequest : Tea.TeaModel {
    public var deliveryChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
    }
}

public class GetDeliveryChannelStatisticsResponseBody : Tea.TeaModel {
    public class DeliveryChannelStatistics : Tea.TeaModel {
        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public var latestChangeDeliveryTime: String?

        public var latestSnapshotDeliveryTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            if self.latestChangeDeliveryTime != nil {
                map["LatestChangeDeliveryTime"] = self.latestChangeDeliveryTime!
            }
            if self.latestSnapshotDeliveryTime != nil {
                map["LatestSnapshotDeliveryTime"] = self.latestSnapshotDeliveryTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveryChannelId"] as? String {
                self.deliveryChannelId = value
            }
            if let value = dict["DeliveryChannelName"] as? String {
                self.deliveryChannelName = value
            }
            if let value = dict["LatestChangeDeliveryTime"] as? String {
                self.latestChangeDeliveryTime = value
            }
            if let value = dict["LatestSnapshotDeliveryTime"] as? String {
                self.latestSnapshotDeliveryTime = value
            }
        }
    }
    public var deliveryChannelStatistics: GetDeliveryChannelStatisticsResponseBody.DeliveryChannelStatistics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannelStatistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelStatistics != nil {
            map["DeliveryChannelStatistics"] = self.deliveryChannelStatistics?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelStatistics"] as? [String: Any?] {
            var model = GetDeliveryChannelStatisticsResponseBody.DeliveryChannelStatistics()
            model.fromMap(value)
            self.deliveryChannelStatistics = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDeliveryChannelStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeliveryChannelStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeliveryChannelStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExampleQueryRequest : Tea.TeaModel {
    public var queryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
    }
}

public class GetExampleQueryResponseBody : Tea.TeaModel {
    public class ExampleQuery : Tea.TeaModel {
        public var description_: String?

        public var expression: String?

        public var name: String?

        public var queryId: String?

        public override init() {
            super.init()
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
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.queryId != nil {
                map["QueryId"] = self.queryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["QueryId"] as? String {
                self.queryId = value
            }
        }
    }
    public var exampleQuery: GetExampleQueryResponseBody.ExampleQuery?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.exampleQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exampleQuery != nil {
            map["ExampleQuery"] = self.exampleQuery?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExampleQuery"] as? [String: Any?] {
            var model = GetExampleQueryResponseBody.ExampleQuery()
            model.fromMap(value)
            self.exampleQuery = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetExampleQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExampleQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetExampleQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMultiAccountDeliveryChannelRequest : Tea.TeaModel {
    public var deliveryChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
    }
}

public class GetMultiAccountDeliveryChannelResponseBody : Tea.TeaModel {
    public class DeliveryChannelFilter : Tea.TeaModel {
        public var accountScopes: [String]?

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
            if self.accountScopes != nil {
                map["AccountScopes"] = self.accountScopes!
            }
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountScopes"] as? [String] {
                self.accountScopes = value
            }
            if let value = dict["ResourceTypes"] as? [String] {
                self.resourceTypes = value
            }
        }
    }
    public class ResourceChangeDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var enabled: String?

        public var slsProperties: GetMultiAccountDeliveryChannelResponseBody.ResourceChangeDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = GetMultiAccountDeliveryChannelResponseBody.ResourceChangeDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public class ResourceSnapshotDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var customExpression: String?

        public var deliveryTime: String?

        public var enabled: String?

        public var slsProperties: GetMultiAccountDeliveryChannelResponseBody.ResourceSnapshotDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customExpression != nil {
                map["CustomExpression"] = self.customExpression!
            }
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomExpression"] as? String {
                self.customExpression = value
            }
            if let value = dict["DeliveryTime"] as? String {
                self.deliveryTime = value
            }
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = GetMultiAccountDeliveryChannelResponseBody.ResourceSnapshotDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var deliveryChannelDescription: String?

    public var deliveryChannelFilter: GetMultiAccountDeliveryChannelResponseBody.DeliveryChannelFilter?

    public var deliveryChannelId: String?

    public var deliveryChannelName: String?

    public var requestId: String?

    public var resourceChangeDelivery: GetMultiAccountDeliveryChannelResponseBody.ResourceChangeDelivery?

    public var resourceSnapshotDelivery: GetMultiAccountDeliveryChannelResponseBody.ResourceSnapshotDelivery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannelFilter?.validate()
        try self.resourceChangeDelivery?.validate()
        try self.resourceSnapshotDelivery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelDescription != nil {
            map["DeliveryChannelDescription"] = self.deliveryChannelDescription!
        }
        if self.deliveryChannelFilter != nil {
            map["DeliveryChannelFilter"] = self.deliveryChannelFilter?.toMap()
        }
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceChangeDelivery != nil {
            map["ResourceChangeDelivery"] = self.resourceChangeDelivery?.toMap()
        }
        if self.resourceSnapshotDelivery != nil {
            map["ResourceSnapshotDelivery"] = self.resourceSnapshotDelivery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelDescription"] as? String {
            self.deliveryChannelDescription = value
        }
        if let value = dict["DeliveryChannelFilter"] as? [String: Any?] {
            var model = GetMultiAccountDeliveryChannelResponseBody.DeliveryChannelFilter()
            model.fromMap(value)
            self.deliveryChannelFilter = model
        }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
        if let value = dict["DeliveryChannelName"] as? String {
            self.deliveryChannelName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceChangeDelivery"] as? [String: Any?] {
            var model = GetMultiAccountDeliveryChannelResponseBody.ResourceChangeDelivery()
            model.fromMap(value)
            self.resourceChangeDelivery = model
        }
        if let value = dict["ResourceSnapshotDelivery"] as? [String: Any?] {
            var model = GetMultiAccountDeliveryChannelResponseBody.ResourceSnapshotDelivery()
            model.fromMap(value)
            self.resourceSnapshotDelivery = model
        }
    }
}

public class GetMultiAccountDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultiAccountDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMultiAccountDeliveryChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMultiAccountDeliveryChannelStatisticsRequest : Tea.TeaModel {
    public var deliveryChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
    }
}

public class GetMultiAccountDeliveryChannelStatisticsResponseBody : Tea.TeaModel {
    public class DeliveryChannelStatistics : Tea.TeaModel {
        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public var latestChangeDeliveryTime: String?

        public var latestSnapshotDeliveryTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            if self.latestChangeDeliveryTime != nil {
                map["LatestChangeDeliveryTime"] = self.latestChangeDeliveryTime!
            }
            if self.latestSnapshotDeliveryTime != nil {
                map["LatestSnapshotDeliveryTime"] = self.latestSnapshotDeliveryTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveryChannelId"] as? String {
                self.deliveryChannelId = value
            }
            if let value = dict["DeliveryChannelName"] as? String {
                self.deliveryChannelName = value
            }
            if let value = dict["LatestChangeDeliveryTime"] as? String {
                self.latestChangeDeliveryTime = value
            }
            if let value = dict["LatestSnapshotDeliveryTime"] as? String {
                self.latestSnapshotDeliveryTime = value
            }
        }
    }
    public var deliveryChannelStatistics: GetMultiAccountDeliveryChannelStatisticsResponseBody.DeliveryChannelStatistics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannelStatistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelStatistics != nil {
            map["DeliveryChannelStatistics"] = self.deliveryChannelStatistics?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelStatistics"] as? [String: Any?] {
            var model = GetMultiAccountDeliveryChannelStatisticsResponseBody.DeliveryChannelStatistics()
            model.fromMap(value)
            self.deliveryChannelStatistics = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMultiAccountDeliveryChannelStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultiAccountDeliveryChannelStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMultiAccountDeliveryChannelStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMultiAccountResourceCenterServiceStatusResponseBody : Tea.TeaModel {
    public var initialStatus: String?

    public var requestId: String?

    public var serviceStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.initialStatus != nil {
            map["InitialStatus"] = self.initialStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InitialStatus"] as? String {
            self.initialStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
    }
}

public class GetMultiAccountResourceCenterServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultiAccountResourceCenterServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMultiAccountResourceCenterServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMultiAccountResourceConfigurationRequest : Tea.TeaModel {
    public var accountId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class GetMultiAccountResourceConfigurationResponseBody : Tea.TeaModel {
    public class IpAddressAttributes : Tea.TeaModel {
        public var ipAddress: String?

        public var networkType: String?

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
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpAddress"] as? String {
                self.ipAddress = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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
    public var accountId: String?

    public var configuration: [String: Any]?

    public var createTime: String?

    public var expireTime: String?

    public var ipAddressAttributes: [GetMultiAccountResourceConfigurationResponseBody.IpAddressAttributes]?

    public var ipAddresses: [String]?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var tags: [GetMultiAccountResourceConfigurationResponseBody.Tags]?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.configuration != nil {
            map["Configuration"] = self.configuration!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.ipAddressAttributes != nil {
            var tmp : [Any] = []
            for k in self.ipAddressAttributes! {
                tmp.append(k.toMap())
            }
            map["IpAddressAttributes"] = tmp
        }
        if self.ipAddresses != nil {
            map["IpAddresses"] = self.ipAddresses!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["Configuration"] as? [String: Any] {
            self.configuration = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["IpAddressAttributes"] as? [Any?] {
            var tmp : [GetMultiAccountResourceConfigurationResponseBody.IpAddressAttributes] = []
            for v in value {
                if v != nil {
                    var model = GetMultiAccountResourceConfigurationResponseBody.IpAddressAttributes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipAddressAttributes = tmp
        }
        if let value = dict["IpAddresses"] as? [String] {
            self.ipAddresses = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetMultiAccountResourceConfigurationResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetMultiAccountResourceConfigurationResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class GetMultiAccountResourceConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultiAccountResourceConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMultiAccountResourceConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMultiAccountResourceCountsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
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
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [GetMultiAccountResourceCountsRequest.Filter]?

    public var groupByKey: String?

    public var scope: String?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.groupByKey != nil {
            map["GroupByKey"] = self.groupByKey!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [GetMultiAccountResourceCountsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = GetMultiAccountResourceCountsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["GroupByKey"] as? String {
            self.groupByKey = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class GetMultiAccountResourceCountsResponseBody : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public class ResourceCounts : Tea.TeaModel {
        public var count: Int64?

        public var groupName: String?

        public override init() {
            super.init()
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
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
        }
    }
    public var filters: [GetMultiAccountResourceCountsResponseBody.Filters]?

    public var groupByKey: String?

    public var requestId: String?

    public var resourceCounts: [GetMultiAccountResourceCountsResponseBody.ResourceCounts]?

    public var scope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.groupByKey != nil {
            map["GroupByKey"] = self.groupByKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceCounts != nil {
            var tmp : [Any] = []
            for k in self.resourceCounts! {
                tmp.append(k.toMap())
            }
            map["ResourceCounts"] = tmp
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [GetMultiAccountResourceCountsResponseBody.Filters] = []
            for v in value {
                if v != nil {
                    var model = GetMultiAccountResourceCountsResponseBody.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["GroupByKey"] as? String {
            self.groupByKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceCounts"] as? [Any?] {
            var tmp : [GetMultiAccountResourceCountsResponseBody.ResourceCounts] = []
            for v in value {
                if v != nil {
                    var model = GetMultiAccountResourceCountsResponseBody.ResourceCounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceCounts = tmp
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class GetMultiAccountResourceCountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultiAccountResourceCountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMultiAccountResourceCountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceCenterServiceStatusResponseBody : Tea.TeaModel {
    public var initialStatus: String?

    public var requestId: String?

    public var serviceStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.initialStatus != nil {
            map["InitialStatus"] = self.initialStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InitialStatus"] as? String {
            self.initialStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
    }
}

public class GetResourceCenterServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceCenterServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceCenterServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceConfigurationRequest : Tea.TeaModel {
    public var resourceId: String?

    public var resourceRegionId: String?

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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class GetResourceConfigurationResponseBody : Tea.TeaModel {
    public class IpAddressAttributes : Tea.TeaModel {
        public var ipAddress: String?

        public var networkType: String?

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
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpAddress"] as? String {
                self.ipAddress = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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
    public var accountId: String?

    public var configuration: [String: Any]?

    public var createTime: String?

    public var expireTime: String?

    public var ipAddressAttributes: [GetResourceConfigurationResponseBody.IpAddressAttributes]?

    public var ipAddresses: [String]?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var tags: [GetResourceConfigurationResponseBody.Tags]?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.configuration != nil {
            map["Configuration"] = self.configuration!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.ipAddressAttributes != nil {
            var tmp : [Any] = []
            for k in self.ipAddressAttributes! {
                tmp.append(k.toMap())
            }
            map["IpAddressAttributes"] = tmp
        }
        if self.ipAddresses != nil {
            map["IpAddresses"] = self.ipAddresses!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["Configuration"] as? [String: Any] {
            self.configuration = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["IpAddressAttributes"] as? [Any?] {
            var tmp : [GetResourceConfigurationResponseBody.IpAddressAttributes] = []
            for v in value {
                if v != nil {
                    var model = GetResourceConfigurationResponseBody.IpAddressAttributes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipAddressAttributes = tmp
        }
        if let value = dict["IpAddresses"] as? [String] {
            self.ipAddresses = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetResourceConfigurationResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetResourceConfigurationResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class GetResourceConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceCountsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
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
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [GetResourceCountsRequest.Filter]?

    public var groupByKey: String?

    public var includeDeletedResources: Bool?

    public var searchExpression: String?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.groupByKey != nil {
            map["GroupByKey"] = self.groupByKey!
        }
        if self.includeDeletedResources != nil {
            map["IncludeDeletedResources"] = self.includeDeletedResources!
        }
        if self.searchExpression != nil {
            map["SearchExpression"] = self.searchExpression!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [GetResourceCountsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = GetResourceCountsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["GroupByKey"] as? String {
            self.groupByKey = value
        }
        if let value = dict["IncludeDeletedResources"] as? Bool {
            self.includeDeletedResources = value
        }
        if let value = dict["SearchExpression"] as? String {
            self.searchExpression = value
        }
    }
}

public class GetResourceCountsResponseBody : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public class ResourceCounts : Tea.TeaModel {
        public var count: Int64?

        public var groupName: String?

        public override init() {
            super.init()
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
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
        }
    }
    public var filters: [GetResourceCountsResponseBody.Filters]?

    public var groupByKey: String?

    public var requestId: String?

    public var resourceCounts: [GetResourceCountsResponseBody.ResourceCounts]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.groupByKey != nil {
            map["GroupByKey"] = self.groupByKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceCounts != nil {
            var tmp : [Any] = []
            for k in self.resourceCounts! {
                tmp.append(k.toMap())
            }
            map["ResourceCounts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [GetResourceCountsResponseBody.Filters] = []
            for v in value {
                if v != nil {
                    var model = GetResourceCountsResponseBody.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["GroupByKey"] as? String {
            self.groupByKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceCounts"] as? [Any?] {
            var tmp : [GetResourceCountsResponseBody.ResourceCounts] = []
            for v in value {
                if v != nil {
                    var model = GetResourceCountsResponseBody.ResourceCounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceCounts = tmp
        }
    }
}

public class GetResourceCountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceCountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceCountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSavedQueryRequest : Tea.TeaModel {
    public var queryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
    }
}

public class GetSavedQueryResponseBody : Tea.TeaModel {
    public class SavedQuery : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var expression: String?

        public var name: String?

        public var queryId: String?

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
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.queryId != nil {
                map["QueryId"] = self.queryId!
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
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["QueryId"] as? String {
                self.queryId = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var savedQuery: GetSavedQueryResponseBody.SavedQuery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.savedQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.savedQuery != nil {
            map["SavedQuery"] = self.savedQuery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SavedQuery"] as? [String: Any?] {
            var model = GetSavedQueryResponseBody.SavedQuery()
            model.fromMap(value)
            self.savedQuery = model
        }
    }
}

public class GetSavedQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSavedQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSavedQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeliveryChannelsRequest : Tea.TeaModel {
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

public class ListDeliveryChannelsResponseBody : Tea.TeaModel {
    public class DeliveryChannels : Tea.TeaModel {
        public var createTime: String?

        public var deliveryChannelDescription: String?

        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public override init() {
            super.init()
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
            if self.deliveryChannelDescription != nil {
                map["DeliveryChannelDescription"] = self.deliveryChannelDescription!
            }
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeliveryChannelDescription"] as? String {
                self.deliveryChannelDescription = value
            }
            if let value = dict["DeliveryChannelId"] as? String {
                self.deliveryChannelId = value
            }
            if let value = dict["DeliveryChannelName"] as? String {
                self.deliveryChannelName = value
            }
        }
    }
    public var deliveryChannels: [ListDeliveryChannelsResponseBody.DeliveryChannels]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.deliveryChannels != nil {
            var tmp : [Any] = []
            for k in self.deliveryChannels! {
                tmp.append(k.toMap())
            }
            map["DeliveryChannels"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannels"] as? [Any?] {
            var tmp : [ListDeliveryChannelsResponseBody.DeliveryChannels] = []
            for v in value {
                if v != nil {
                    var model = ListDeliveryChannelsResponseBody.DeliveryChannels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deliveryChannels = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDeliveryChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeliveryChannelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDeliveryChannelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExampleQueriesRequest : Tea.TeaModel {
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
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListExampleQueriesResponseBody : Tea.TeaModel {
    public class ExampleQueries : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var queryId: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.queryId != nil {
                map["QueryId"] = self.queryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["QueryId"] as? String {
                self.queryId = value
            }
        }
    }
    public var exampleQueries: [ListExampleQueriesResponseBody.ExampleQueries]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.exampleQueries != nil {
            var tmp : [Any] = []
            for k in self.exampleQueries! {
                tmp.append(k.toMap())
            }
            map["ExampleQueries"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExampleQueries"] as? [Any?] {
            var tmp : [ListExampleQueriesResponseBody.ExampleQueries] = []
            for v in value {
                if v != nil {
                    var model = ListExampleQueriesResponseBody.ExampleQueries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.exampleQueries = tmp
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListExampleQueriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExampleQueriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExampleQueriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFiltersResponseBody : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var filterConfiguration: String?

        public var filterName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filterConfiguration != nil {
                map["FilterConfiguration"] = self.filterConfiguration!
            }
            if self.filterName != nil {
                map["FilterName"] = self.filterName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FilterConfiguration"] as? String {
                self.filterConfiguration = value
            }
            if let value = dict["FilterName"] as? String {
                self.filterName = value
            }
        }
    }
    public var defaultFilterName: String?

    public var filters: [ListFiltersResponseBody.Filters]?

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
        if self.defaultFilterName != nil {
            map["DefaultFilterName"] = self.defaultFilterName!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultFilterName"] as? String {
            self.defaultFilterName = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [ListFiltersResponseBody.Filters] = []
            for v in value {
                if v != nil {
                    var model = ListFiltersResponseBody.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFiltersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFiltersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFiltersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultiAccountDeliveryChannelsRequest : Tea.TeaModel {
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

public class ListMultiAccountDeliveryChannelsResponseBody : Tea.TeaModel {
    public class DeliveryChannels : Tea.TeaModel {
        public var createTime: String?

        public var deliveryChannelDescription: String?

        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public override init() {
            super.init()
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
            if self.deliveryChannelDescription != nil {
                map["DeliveryChannelDescription"] = self.deliveryChannelDescription!
            }
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeliveryChannelDescription"] as? String {
                self.deliveryChannelDescription = value
            }
            if let value = dict["DeliveryChannelId"] as? String {
                self.deliveryChannelId = value
            }
            if let value = dict["DeliveryChannelName"] as? String {
                self.deliveryChannelName = value
            }
        }
    }
    public var deliveryChannels: [ListMultiAccountDeliveryChannelsResponseBody.DeliveryChannels]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.deliveryChannels != nil {
            var tmp : [Any] = []
            for k in self.deliveryChannels! {
                tmp.append(k.toMap())
            }
            map["DeliveryChannels"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannels"] as? [Any?] {
            var tmp : [ListMultiAccountDeliveryChannelsResponseBody.DeliveryChannels] = []
            for v in value {
                if v != nil {
                    var model = ListMultiAccountDeliveryChannelsResponseBody.DeliveryChannels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deliveryChannels = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMultiAccountDeliveryChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiAccountDeliveryChannelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMultiAccountDeliveryChannelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultiAccountResourceGroupsRequest : Tea.TeaModel {
    public var accountId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
    }
}

public class ListMultiAccountResourceGroupsResponseBody : Tea.TeaModel {
    public class ResourceGroups : Tea.TeaModel {
        public var accountId: String?

        public var createDate: String?

        public var displayName: String?

        public var id: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resourceGroups: [ListMultiAccountResourceGroupsResponseBody.ResourceGroups]?

    public override init() {
        super.init()
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
        if self.resourceGroups != nil {
            var tmp : [Any] = []
            for k in self.resourceGroups! {
                tmp.append(k.toMap())
            }
            map["ResourceGroups"] = tmp
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
        if let value = dict["ResourceGroups"] as? [Any?] {
            var tmp : [ListMultiAccountResourceGroupsResponseBody.ResourceGroups] = []
            for v in value {
                if v != nil {
                    var model = ListMultiAccountResourceGroupsResponseBody.ResourceGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceGroups = tmp
        }
    }
}

public class ListMultiAccountResourceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiAccountResourceGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMultiAccountResourceGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultiAccountResourceRelationshipsRequest : Tea.TeaModel {
    public class RelatedResourceFilter : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
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
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var relatedResourceFilter: [ListMultiAccountResourceRelationshipsRequest.RelatedResourceFilter]?

    public var resourceId: String?

    public var resourceType: String?

    public var scope: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.relatedResourceFilter != nil {
            var tmp : [Any] = []
            for k in self.relatedResourceFilter! {
                tmp.append(k.toMap())
            }
            map["RelatedResourceFilter"] = tmp
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RelatedResourceFilter"] as? [Any?] {
            var tmp : [ListMultiAccountResourceRelationshipsRequest.RelatedResourceFilter] = []
            for v in value {
                if v != nil {
                    var model = ListMultiAccountResourceRelationshipsRequest.RelatedResourceFilter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedResourceFilter = tmp
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class ListMultiAccountResourceRelationshipsResponseBody : Tea.TeaModel {
    public class ResourceRelationships : Tea.TeaModel {
        public var accountId: String?

        public var regionId: String?

        public var relatedResourceId: String?

        public var relatedResourceRegionId: String?

        public var relatedResourceType: String?

        public var resourceId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relatedResourceId != nil {
                map["RelatedResourceId"] = self.relatedResourceId!
            }
            if self.relatedResourceRegionId != nil {
                map["RelatedResourceRegionId"] = self.relatedResourceRegionId!
            }
            if self.relatedResourceType != nil {
                map["RelatedResourceType"] = self.relatedResourceType!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RelatedResourceId"] as? String {
                self.relatedResourceId = value
            }
            if let value = dict["RelatedResourceRegionId"] as? String {
                self.relatedResourceRegionId = value
            }
            if let value = dict["RelatedResourceType"] as? String {
                self.relatedResourceType = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resourceRelationships: [ListMultiAccountResourceRelationshipsResponseBody.ResourceRelationships]?

    public var scope: String?

    public override init() {
        super.init()
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
        if self.resourceRelationships != nil {
            var tmp : [Any] = []
            for k in self.resourceRelationships! {
                tmp.append(k.toMap())
            }
            map["ResourceRelationships"] = tmp
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
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
        if let value = dict["ResourceRelationships"] as? [Any?] {
            var tmp : [ListMultiAccountResourceRelationshipsResponseBody.ResourceRelationships] = []
            for v in value {
                if v != nil {
                    var model = ListMultiAccountResourceRelationshipsResponseBody.ResourceRelationships()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceRelationships = tmp
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class ListMultiAccountResourceRelationshipsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiAccountResourceRelationshipsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMultiAccountResourceRelationshipsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultiAccountTagKeysRequest : Tea.TeaModel {
    public var matchType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var scope: String?

    public var tagKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MatchType"] as? String {
            self.matchType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKey = value
        }
    }
}

public class ListMultiAccountTagKeysResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var tagKeys: [String]?

    public override init() {
        super.init()
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
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
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
        if let value = dict["TagKeys"] as? [String] {
            self.tagKeys = value
        }
    }
}

public class ListMultiAccountTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiAccountTagKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMultiAccountTagKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultiAccountTagValuesRequest : Tea.TeaModel {
    public var matchType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var scope: String?

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
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
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
        if let value = dict["MatchType"] as? String {
            self.matchType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKey = value
        }
        if let value = dict["TagValue"] as? String {
            self.tagValue = value
        }
    }
}

public class ListMultiAccountTagValuesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var tagValues: [String]?

    public override init() {
        super.init()
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
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues!
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
        if let value = dict["TagValues"] as? [String] {
            self.tagValues = value
        }
    }
}

public class ListMultiAccountTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiAccountTagValuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMultiAccountTagValuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceRelationshipsRequest : Tea.TeaModel {
    public class RelatedResourceFilter : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
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
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var relatedResourceFilter: [ListResourceRelationshipsRequest.RelatedResourceFilter]?

    public var resourceId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.relatedResourceFilter != nil {
            var tmp : [Any] = []
            for k in self.relatedResourceFilter! {
                tmp.append(k.toMap())
            }
            map["RelatedResourceFilter"] = tmp
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RelatedResourceFilter"] as? [Any?] {
            var tmp : [ListResourceRelationshipsRequest.RelatedResourceFilter] = []
            for v in value {
                if v != nil {
                    var model = ListResourceRelationshipsRequest.RelatedResourceFilter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedResourceFilter = tmp
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListResourceRelationshipsResponseBody : Tea.TeaModel {
    public class ResourceRelationships : Tea.TeaModel {
        public var regionId: String?

        public var relatedResourceId: String?

        public var relatedResourceRegionId: String?

        public var relatedResourceType: String?

        public var resourceId: String?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relatedResourceId != nil {
                map["RelatedResourceId"] = self.relatedResourceId!
            }
            if self.relatedResourceRegionId != nil {
                map["RelatedResourceRegionId"] = self.relatedResourceRegionId!
            }
            if self.relatedResourceType != nil {
                map["RelatedResourceType"] = self.relatedResourceType!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RelatedResourceId"] as? String {
                self.relatedResourceId = value
            }
            if let value = dict["RelatedResourceRegionId"] as? String {
                self.relatedResourceRegionId = value
            }
            if let value = dict["RelatedResourceType"] as? String {
                self.relatedResourceType = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resourceRelationships: [ListResourceRelationshipsResponseBody.ResourceRelationships]?

    public override init() {
        super.init()
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
        if self.resourceRelationships != nil {
            var tmp : [Any] = []
            for k in self.resourceRelationships! {
                tmp.append(k.toMap())
            }
            map["ResourceRelationships"] = tmp
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
        if let value = dict["ResourceRelationships"] as? [Any?] {
            var tmp : [ListResourceRelationshipsResponseBody.ResourceRelationships] = []
            for v in value {
                if v != nil {
                    var model = ListResourceRelationshipsResponseBody.ResourceRelationships()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceRelationships = tmp
        }
    }
}

public class ListResourceRelationshipsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceRelationshipsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResourceRelationshipsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceTypesRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var query: [String]?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["Query"] as? [String] {
            self.query = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListResourceTypesResponseBody : Tea.TeaModel {
    public class ResourceTypes : Tea.TeaModel {
        public class CodeMapping : Tea.TeaModel {
            public var resourceGroup: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceGroup != nil {
                    map["ResourceGroup"] = self.resourceGroup!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceGroup"] as? String {
                    self.resourceGroup = value
                }
                if let value = dict["Tag"] as? String {
                    self.tag = value
                }
            }
        }
        public var codeMapping: ListResourceTypesResponseBody.ResourceTypes.CodeMapping?

        public var filterKeys: [String]?

        public var productName: String?

        public var relatedResourceTypes: [String]?

        public var resourceType: String?

        public var resourceTypeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.codeMapping?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeMapping != nil {
                map["CodeMapping"] = self.codeMapping?.toMap()
            }
            if self.filterKeys != nil {
                map["FilterKeys"] = self.filterKeys!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.relatedResourceTypes != nil {
                map["RelatedResourceTypes"] = self.relatedResourceTypes!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.resourceTypeName != nil {
                map["ResourceTypeName"] = self.resourceTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CodeMapping"] as? [String: Any?] {
                var model = ListResourceTypesResponseBody.ResourceTypes.CodeMapping()
                model.fromMap(value)
                self.codeMapping = model
            }
            if let value = dict["FilterKeys"] as? [String] {
                self.filterKeys = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["RelatedResourceTypes"] as? [String] {
                self.relatedResourceTypes = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["ResourceTypeName"] as? String {
                self.resourceTypeName = value
            }
        }
    }
    public var requestId: String?

    public var resourceTypes: [ListResourceTypesResponseBody.ResourceTypes]?

    public override init() {
        super.init()
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
        if self.resourceTypes != nil {
            var tmp : [Any] = []
            for k in self.resourceTypes! {
                tmp.append(k.toMap())
            }
            map["ResourceTypes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceTypes"] as? [Any?] {
            var tmp : [ListResourceTypesResponseBody.ResourceTypes] = []
            for v in value {
                if v != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTypes = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResourceTypesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSavedQueriesRequest : Tea.TeaModel {
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
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListSavedQueriesResponseBody : Tea.TeaModel {
    public class SavedQueries : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var queryId: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.queryId != nil {
                map["QueryId"] = self.queryId!
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
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["QueryId"] as? String {
                self.queryId = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: String?

    public var nextToken: String?

    public var requestId: String?

    public var savedQueries: [ListSavedQueriesResponseBody.SavedQueries]?

    public override init() {
        super.init()
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
        if self.savedQueries != nil {
            var tmp : [Any] = []
            for k in self.savedQueries! {
                tmp.append(k.toMap())
            }
            map["SavedQueries"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SavedQueries"] as? [Any?] {
            var tmp : [ListSavedQueriesResponseBody.SavedQueries] = []
            for v in value {
                if v != nil {
                    var model = ListSavedQueriesResponseBody.SavedQueries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.savedQueries = tmp
        }
    }
}

public class ListSavedQueriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSavedQueriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSavedQueriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var matchType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tagKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MatchType"] as? String {
            self.matchType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKey = value
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var tagKeys: [String]?

    public override init() {
        super.init()
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
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
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
        if let value = dict["TagKeys"] as? [String] {
            self.tagKeys = value
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagValuesRequest : Tea.TeaModel {
    public var matchType: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["MatchType"] as? String {
            self.matchType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKey = value
        }
        if let value = dict["TagValue"] as? String {
            self.tagValue = value
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var tagValues: [String]?

    public override init() {
        super.init()
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
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues!
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
        if let value = dict["TagValues"] as? [String] {
            self.tagValues = value
        }
    }
}

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagValuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchMultiAccountResourcesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
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
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public class SortCriterion : Tea.TeaModel {
        public var key: String?

        public var order: String?

        public override init() {
            super.init()
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
            if self.order != nil {
                map["Order"] = self.order!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Order"] as? String {
                self.order = value
            }
        }
    }
    public var filter: [SearchMultiAccountResourcesRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var scope: String?

    public var sortCriterion: SearchMultiAccountResourcesRequest.SortCriterion?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sortCriterion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.sortCriterion != nil {
            map["SortCriterion"] = self.sortCriterion?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [SearchMultiAccountResourcesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = SearchMultiAccountResourcesRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["SortCriterion"] as? [String: Any?] {
            var model = SearchMultiAccountResourcesRequest.SortCriterion()
            model.fromMap(value)
            self.sortCriterion = model
        }
    }
}

public class SearchMultiAccountResourcesResponseBody : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

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
                map["Key"] = self.key!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public class Resources : Tea.TeaModel {
        public class IpAddressAttributes : Tea.TeaModel {
            public var ipAddress: String?

            public var networkType: String?

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
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IpAddress"] as? String {
                    self.ipAddress = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
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
        public var accountId: String?

        public var createTime: String?

        public var expireTime: String?

        public var ipAddressAttributes: [SearchMultiAccountResourcesResponseBody.Resources.IpAddressAttributes]?

        public var ipAddresses: [String]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var tags: [SearchMultiAccountResourcesResponseBody.Resources.Tags]?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.ipAddressAttributes != nil {
                var tmp : [Any] = []
                for k in self.ipAddressAttributes! {
                    tmp.append(k.toMap())
                }
                map["IpAddressAttributes"] = tmp
            }
            if self.ipAddresses != nil {
                map["IpAddresses"] = self.ipAddresses!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["IpAddressAttributes"] as? [Any?] {
                var tmp : [SearchMultiAccountResourcesResponseBody.Resources.IpAddressAttributes] = []
                for v in value {
                    if v != nil {
                        var model = SearchMultiAccountResourcesResponseBody.Resources.IpAddressAttributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipAddressAttributes = tmp
            }
            if let value = dict["IpAddresses"] as? [String] {
                self.ipAddresses = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [SearchMultiAccountResourcesResponseBody.Resources.Tags] = []
                for v in value {
                    if v != nil {
                        var model = SearchMultiAccountResourcesResponseBody.Resources.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var filters: [SearchMultiAccountResourcesResponseBody.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resources: [SearchMultiAccountResourcesResponseBody.Resources]?

    public var scope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [SearchMultiAccountResourcesResponseBody.Filters] = []
            for v in value {
                if v != nil {
                    var model = SearchMultiAccountResourcesResponseBody.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [SearchMultiAccountResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = SearchMultiAccountResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class SearchMultiAccountResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchMultiAccountResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchMultiAccountResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchResourcesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
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
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public class SortCriterion : Tea.TeaModel {
        public var key: String?

        public var order: String?

        public override init() {
            super.init()
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
            if self.order != nil {
                map["Order"] = self.order!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Order"] as? String {
                self.order = value
            }
        }
    }
    public var filter: [SearchResourcesRequest.Filter]?

    public var includeDeletedResources: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var searchExpression: String?

    public var sortCriterion: SearchResourcesRequest.SortCriterion?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sortCriterion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.includeDeletedResources != nil {
            map["IncludeDeletedResources"] = self.includeDeletedResources!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.searchExpression != nil {
            map["SearchExpression"] = self.searchExpression!
        }
        if self.sortCriterion != nil {
            map["SortCriterion"] = self.sortCriterion?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [SearchResourcesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = SearchResourcesRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["IncludeDeletedResources"] as? Bool {
            self.includeDeletedResources = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SearchExpression"] as? String {
            self.searchExpression = value
        }
        if let value = dict["SortCriterion"] as? [String: Any?] {
            var model = SearchResourcesRequest.SortCriterion()
            model.fromMap(value)
            self.sortCriterion = model
        }
    }
}

public class SearchResourcesResponseBody : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

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
                map["Key"] = self.key!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public class Resources : Tea.TeaModel {
        public class IpAddressAttributes : Tea.TeaModel {
            public var ipAddress: String?

            public var networkType: String?

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
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IpAddress"] as? String {
                    self.ipAddress = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
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
        public var accountId: String?

        public var createTime: String?

        public var deleted: Bool?

        public var expireTime: String?

        public var ipAddressAttributes: [SearchResourcesResponseBody.Resources.IpAddressAttributes]?

        public var ipAddresses: [String]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var tags: [SearchResourcesResponseBody.Resources.Tags]?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.ipAddressAttributes != nil {
                var tmp : [Any] = []
                for k in self.ipAddressAttributes! {
                    tmp.append(k.toMap())
                }
                map["IpAddressAttributes"] = tmp
            }
            if self.ipAddresses != nil {
                map["IpAddresses"] = self.ipAddresses!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Deleted"] as? Bool {
                self.deleted = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["IpAddressAttributes"] as? [Any?] {
                var tmp : [SearchResourcesResponseBody.Resources.IpAddressAttributes] = []
                for v in value {
                    if v != nil {
                        var model = SearchResourcesResponseBody.Resources.IpAddressAttributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipAddressAttributes = tmp
            }
            if let value = dict["IpAddresses"] as? [String] {
                self.ipAddresses = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [SearchResourcesResponseBody.Resources.Tags] = []
                for v in value {
                    if v != nil {
                        var model = SearchResourcesResponseBody.Resources.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var filters: [SearchResourcesResponseBody.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resources: [SearchResourcesResponseBody.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [SearchResourcesResponseBody.Filters] = []
            for v in value {
                if v != nil {
                    var model = SearchResourcesResponseBody.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [SearchResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = SearchResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
    }
}

public class SearchResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeliveryChannelRequest : Tea.TeaModel {
    public class DeliveryChannelFilter : Tea.TeaModel {
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
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceTypes"] as? [String] {
                self.resourceTypes = value
            }
        }
    }
    public class ResourceChangeDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var enabled: String?

        public var slsProperties: UpdateDeliveryChannelRequest.ResourceChangeDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = UpdateDeliveryChannelRequest.ResourceChangeDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public class ResourceSnapshotDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var customExpression: String?

        public var deliveryTime: String?

        public var enabled: String?

        public var slsProperties: UpdateDeliveryChannelRequest.ResourceSnapshotDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customExpression != nil {
                map["CustomExpression"] = self.customExpression!
            }
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomExpression"] as? String {
                self.customExpression = value
            }
            if let value = dict["DeliveryTime"] as? String {
                self.deliveryTime = value
            }
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = UpdateDeliveryChannelRequest.ResourceSnapshotDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var deliveryChannelDescription: String?

    public var deliveryChannelFilter: UpdateDeliveryChannelRequest.DeliveryChannelFilter?

    public var deliveryChannelId: String?

    public var deliveryChannelName: String?

    public var resourceChangeDelivery: UpdateDeliveryChannelRequest.ResourceChangeDelivery?

    public var resourceSnapshotDelivery: UpdateDeliveryChannelRequest.ResourceSnapshotDelivery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannelFilter?.validate()
        try self.resourceChangeDelivery?.validate()
        try self.resourceSnapshotDelivery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelDescription != nil {
            map["DeliveryChannelDescription"] = self.deliveryChannelDescription!
        }
        if self.deliveryChannelFilter != nil {
            map["DeliveryChannelFilter"] = self.deliveryChannelFilter?.toMap()
        }
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.resourceChangeDelivery != nil {
            map["ResourceChangeDelivery"] = self.resourceChangeDelivery?.toMap()
        }
        if self.resourceSnapshotDelivery != nil {
            map["ResourceSnapshotDelivery"] = self.resourceSnapshotDelivery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelDescription"] as? String {
            self.deliveryChannelDescription = value
        }
        if let value = dict["DeliveryChannelFilter"] as? [String: Any?] {
            var model = UpdateDeliveryChannelRequest.DeliveryChannelFilter()
            model.fromMap(value)
            self.deliveryChannelFilter = model
        }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
        if let value = dict["DeliveryChannelName"] as? String {
            self.deliveryChannelName = value
        }
        if let value = dict["ResourceChangeDelivery"] as? [String: Any?] {
            var model = UpdateDeliveryChannelRequest.ResourceChangeDelivery()
            model.fromMap(value)
            self.resourceChangeDelivery = model
        }
        if let value = dict["ResourceSnapshotDelivery"] as? [String: Any?] {
            var model = UpdateDeliveryChannelRequest.ResourceSnapshotDelivery()
            model.fromMap(value)
            self.resourceSnapshotDelivery = model
        }
    }
}

public class UpdateDeliveryChannelResponseBody : Tea.TeaModel {
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

public class UpdateDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDeliveryChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFilterRequest : Tea.TeaModel {
    public var filterConfiguration: String?

    public var filterName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterConfiguration != nil {
            map["FilterConfiguration"] = self.filterConfiguration!
        }
        if self.filterName != nil {
            map["FilterName"] = self.filterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilterConfiguration"] as? String {
            self.filterConfiguration = value
        }
        if let value = dict["FilterName"] as? String {
            self.filterName = value
        }
    }
}

public class UpdateFilterResponseBody : Tea.TeaModel {
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

public class UpdateFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMultiAccountDeliveryChannelRequest : Tea.TeaModel {
    public class DeliveryChannelFilter : Tea.TeaModel {
        public var accountScopes: [String]?

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
            if self.accountScopes != nil {
                map["AccountScopes"] = self.accountScopes!
            }
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountScopes"] as? [String] {
                self.accountScopes = value
            }
            if let value = dict["ResourceTypes"] as? [String] {
                self.resourceTypes = value
            }
        }
    }
    public class ResourceChangeDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var enabled: String?

        public var slsProperties: UpdateMultiAccountDeliveryChannelRequest.ResourceChangeDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = UpdateMultiAccountDeliveryChannelRequest.ResourceChangeDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public class ResourceSnapshotDelivery : Tea.TeaModel {
        public class SlsProperties : Tea.TeaModel {
            public var oversizedDataOssTargetArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oversizedDataOssTargetArn != nil {
                    map["OversizedDataOssTargetArn"] = self.oversizedDataOssTargetArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OversizedDataOssTargetArn"] as? String {
                    self.oversizedDataOssTargetArn = value
                }
            }
        }
        public var customExpression: String?

        public var deliveryTime: String?

        public var enabled: String?

        public var slsProperties: UpdateMultiAccountDeliveryChannelRequest.ResourceSnapshotDelivery.SlsProperties?

        public var targetArn: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.slsProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customExpression != nil {
                map["CustomExpression"] = self.customExpression!
            }
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.slsProperties != nil {
                map["SlsProperties"] = self.slsProperties?.toMap()
            }
            if self.targetArn != nil {
                map["TargetArn"] = self.targetArn!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomExpression"] as? String {
                self.customExpression = value
            }
            if let value = dict["DeliveryTime"] as? String {
                self.deliveryTime = value
            }
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["SlsProperties"] as? [String: Any?] {
                var model = UpdateMultiAccountDeliveryChannelRequest.ResourceSnapshotDelivery.SlsProperties()
                model.fromMap(value)
                self.slsProperties = model
            }
            if let value = dict["TargetArn"] as? String {
                self.targetArn = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var deliveryChannelDescription: String?

    public var deliveryChannelFilter: UpdateMultiAccountDeliveryChannelRequest.DeliveryChannelFilter?

    public var deliveryChannelId: String?

    public var deliveryChannelName: String?

    public var resourceChangeDelivery: UpdateMultiAccountDeliveryChannelRequest.ResourceChangeDelivery?

    public var resourceSnapshotDelivery: UpdateMultiAccountDeliveryChannelRequest.ResourceSnapshotDelivery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannelFilter?.validate()
        try self.resourceChangeDelivery?.validate()
        try self.resourceSnapshotDelivery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelDescription != nil {
            map["DeliveryChannelDescription"] = self.deliveryChannelDescription!
        }
        if self.deliveryChannelFilter != nil {
            map["DeliveryChannelFilter"] = self.deliveryChannelFilter?.toMap()
        }
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.resourceChangeDelivery != nil {
            map["ResourceChangeDelivery"] = self.resourceChangeDelivery?.toMap()
        }
        if self.resourceSnapshotDelivery != nil {
            map["ResourceSnapshotDelivery"] = self.resourceSnapshotDelivery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryChannelDescription"] as? String {
            self.deliveryChannelDescription = value
        }
        if let value = dict["DeliveryChannelFilter"] as? [String: Any?] {
            var model = UpdateMultiAccountDeliveryChannelRequest.DeliveryChannelFilter()
            model.fromMap(value)
            self.deliveryChannelFilter = model
        }
        if let value = dict["DeliveryChannelId"] as? String {
            self.deliveryChannelId = value
        }
        if let value = dict["DeliveryChannelName"] as? String {
            self.deliveryChannelName = value
        }
        if let value = dict["ResourceChangeDelivery"] as? [String: Any?] {
            var model = UpdateMultiAccountDeliveryChannelRequest.ResourceChangeDelivery()
            model.fromMap(value)
            self.resourceChangeDelivery = model
        }
        if let value = dict["ResourceSnapshotDelivery"] as? [String: Any?] {
            var model = UpdateMultiAccountDeliveryChannelRequest.ResourceSnapshotDelivery()
            model.fromMap(value)
            self.resourceSnapshotDelivery = model
        }
    }
}

public class UpdateMultiAccountDeliveryChannelResponseBody : Tea.TeaModel {
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

public class UpdateMultiAccountDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMultiAccountDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMultiAccountDeliveryChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSavedQueryRequest : Tea.TeaModel {
    public var description_: String?

    public var expression: String?

    public var name: String?

    public var queryId: String?

    public override init() {
        super.init()
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
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
    }
}

public class UpdateSavedQueryResponseBody : Tea.TeaModel {
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

public class UpdateSavedQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSavedQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSavedQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
