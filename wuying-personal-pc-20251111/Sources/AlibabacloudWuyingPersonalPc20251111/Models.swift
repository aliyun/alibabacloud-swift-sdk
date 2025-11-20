import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDesktopImageRequest : Tea.TeaModel {
    public var apiKey: String?

    public var autoCleanUserData: Bool?

    public var description_: String?

    public var desktopId: String?

    public var diskType: String?

    public var enableStartUpConfig: Bool?

    public var imageName: String?

    public var sessionId: String?

    public var startUpFilePathList: [String]?

    public override init() {
        super.init()
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
        if self.autoCleanUserData != nil {
            map["AutoCleanUserData"] = self.autoCleanUserData!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.enableStartUpConfig != nil {
            map["EnableStartUpConfig"] = self.enableStartUpConfig!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.startUpFilePathList != nil {
            map["StartUpFilePathList"] = self.startUpFilePathList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["AutoCleanUserData"] as? Bool {
            self.autoCleanUserData = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["EnableStartUpConfig"] as? Bool {
            self.enableStartUpConfig = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["StartUpFilePathList"] as? [String] {
            self.startUpFilePathList = value
        }
    }
}

public class CreateDesktopImageShrinkRequest : Tea.TeaModel {
    public var apiKey: String?

    public var autoCleanUserData: Bool?

    public var description_: String?

    public var desktopId: String?

    public var diskType: String?

    public var enableStartUpConfig: Bool?

    public var imageName: String?

    public var sessionId: String?

    public var startUpFilePathListShrink: String?

    public override init() {
        super.init()
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
        if self.autoCleanUserData != nil {
            map["AutoCleanUserData"] = self.autoCleanUserData!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.enableStartUpConfig != nil {
            map["EnableStartUpConfig"] = self.enableStartUpConfig!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.startUpFilePathListShrink != nil {
            map["StartUpFilePathList"] = self.startUpFilePathListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["AutoCleanUserData"] as? Bool {
            self.autoCleanUserData = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["EnableStartUpConfig"] as? Bool {
            self.enableStartUpConfig = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["StartUpFilePathList"] as? String {
            self.startUpFilePathListShrink = value
        }
    }
}

public class CreateDesktopImageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class CreateDesktopImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDesktopImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDesktopImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOrderRequest : Tea.TeaModel {
    public class DynamicProductParams : Tea.TeaModel {
        public class InputActivateConfig : Tea.TeaModel {
            public var cityName: String?

            public var desktopName: String?

            public var imageId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cityName != nil {
                    map["CityName"] = self.cityName!
                }
                if self.desktopName != nil {
                    map["DesktopName"] = self.desktopName!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CityName"] as? String {
                    self.cityName = value
                }
                if let value = dict["DesktopName"] as? String {
                    self.desktopName = value
                }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
            }
        }
        public var amount: Int32?

        public var deliveryAddress: String?

        public var dynamicAttributes: [String: String]?

        public var inputActivateConfig: CreateOrderRequest.DynamicProductParams.InputActivateConfig?

        public var instanceIdList: [String]?

        public var linkedResourceId: String?

        public var packageCode: String?

        public var productCode: String?

        public var productSkuCode: String?

        public var resourceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.inputActivateConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.deliveryAddress != nil {
                map["DeliveryAddress"] = self.deliveryAddress!
            }
            if self.dynamicAttributes != nil {
                map["DynamicAttributes"] = self.dynamicAttributes!
            }
            if self.inputActivateConfig != nil {
                map["InputActivateConfig"] = self.inputActivateConfig?.toMap()
            }
            if self.instanceIdList != nil {
                map["InstanceIdList"] = self.instanceIdList!
            }
            if self.linkedResourceId != nil {
                map["LinkedResourceId"] = self.linkedResourceId!
            }
            if self.packageCode != nil {
                map["PackageCode"] = self.packageCode!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productSkuCode != nil {
                map["ProductSkuCode"] = self.productSkuCode!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int32 {
                self.amount = value
            }
            if let value = dict["DeliveryAddress"] as? String {
                self.deliveryAddress = value
            }
            if let value = dict["DynamicAttributes"] as? [String: String] {
                self.dynamicAttributes = value
            }
            if let value = dict["InputActivateConfig"] as? [String: Any?] {
                var model = CreateOrderRequest.DynamicProductParams.InputActivateConfig()
                model.fromMap(value)
                self.inputActivateConfig = model
            }
            if let value = dict["InstanceIdList"] as? [String] {
                self.instanceIdList = value
            }
            if let value = dict["LinkedResourceId"] as? String {
                self.linkedResourceId = value
            }
            if let value = dict["PackageCode"] as? String {
                self.packageCode = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductSkuCode"] as? String {
                self.productSkuCode = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
        }
    }
    public var apiKey: String?

    public var autoPay: Bool?

    public var dynamicProductParams: [CreateOrderRequest.DynamicProductParams]?

    public var operationType: String?

    public var orderFrom: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.dynamicProductParams != nil {
            var tmp : [Any] = []
            for k in self.dynamicProductParams! {
                tmp.append(k.toMap())
            }
            map["DynamicProductParams"] = tmp
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.orderFrom != nil {
            map["OrderFrom"] = self.orderFrom!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["DynamicProductParams"] as? [Any?] {
            var tmp : [CreateOrderRequest.DynamicProductParams] = []
            for v in value {
                if v != nil {
                    var model = CreateOrderRequest.DynamicProductParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dynamicProductParams = tmp
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["OrderFrom"] as? String {
            self.orderFrom = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class CreateOrderShrinkRequest : Tea.TeaModel {
    public var apiKey: String?

    public var autoPay: Bool?

    public var dynamicProductParamsShrink: String?

    public var operationType: String?

    public var orderFrom: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.dynamicProductParamsShrink != nil {
            map["DynamicProductParams"] = self.dynamicProductParamsShrink!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.orderFrom != nil {
            map["OrderFrom"] = self.orderFrom!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["DynamicProductParams"] as? String {
            self.dynamicProductParamsShrink = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["OrderFrom"] as? String {
            self.orderFrom = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class CreateOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OrderDetailList : Tea.TeaModel {
            public var instanceIds: [String]?

            public var orderId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceIds != nil {
                    map["InstanceIds"] = self.instanceIds!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceIds"] as? [String] {
                    self.instanceIds = value
                }
                if let value = dict["OrderId"] as? Int64 {
                    self.orderId = value
                }
            }
        }
        public var orderDetailList: [CreateOrderResponseBody.Data.OrderDetailList]?

        public var orderId: String?

        public var payLink: String?

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
            if self.orderDetailList != nil {
                var tmp : [Any] = []
                for k in self.orderDetailList! {
                    tmp.append(k.toMap())
                }
                map["OrderDetailList"] = tmp
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.payLink != nil {
                map["PayLink"] = self.payLink!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderDetailList"] as? [Any?] {
                var tmp : [CreateOrderResponseBody.Data.OrderDetailList] = []
                for v in value {
                    if v != nil {
                        var model = CreateOrderResponseBody.Data.OrderDetailList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.orderDetailList = tmp
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["PayLink"] as? String {
                self.payLink = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateOrderResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var traceId: String?

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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateOrderResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class CreateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDesktopRequest : Tea.TeaModel {
    public var apiKey: String?

    public var desktopId: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class DeleteDesktopResponseBody : Tea.TeaModel {
    public var code: String?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class DeleteDesktopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDesktopResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDesktopResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDesktopImageRequest : Tea.TeaModel {
    public var apiKey: String?

    public var imageId: String?

    public var isCleanImageCode: Bool?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.isCleanImageCode != nil {
            map["IsCleanImageCode"] = self.isCleanImageCode!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["IsCleanImageCode"] as? Bool {
            self.isCleanImageCode = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class DeleteDesktopImageResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class DeleteDesktopImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDesktopImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDesktopImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccessibleImagesRequest : Tea.TeaModel {
    public var apiKey: String?

    public var bizSource: String?

    public var desktopId: String?

    public var desktopType: String?

    public var imageType: String?

    public var resourceId: String?

    public var scene: String?

    public var searchKey: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.bizSource != nil {
            map["BizSource"] = self.bizSource!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopType != nil {
            map["DesktopType"] = self.desktopType!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["BizSource"] as? String {
            self.bizSource = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["DesktopType"] as? String {
            self.desktopType = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["SearchKey"] as? String {
            self.searchKey = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class DescribeAccessibleImagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CurrentImageCodeInfo : Tea.TeaModel {
            public var currentPassword: String?

            public var expireTime: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var imageCode: String?

            public var imageId: String?

            public var isCopyPassword: Bool?

            public var isEncrypted: Bool?

            public var isFree: Bool?

            public var periodDays: Int32?

            public var redeemCount: Int32?

            public var redeemQuota: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currentPassword != nil {
                    map["CurrentPassword"] = self.currentPassword!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.imageCode != nil {
                    map["ImageCode"] = self.imageCode!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.isCopyPassword != nil {
                    map["IsCopyPassword"] = self.isCopyPassword!
                }
                if self.isEncrypted != nil {
                    map["IsEncrypted"] = self.isEncrypted!
                }
                if self.isFree != nil {
                    map["IsFree"] = self.isFree!
                }
                if self.periodDays != nil {
                    map["PeriodDays"] = self.periodDays!
                }
                if self.redeemCount != nil {
                    map["RedeemCount"] = self.redeemCount!
                }
                if self.redeemQuota != nil {
                    map["RedeemQuota"] = self.redeemQuota!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPassword"] as? String {
                    self.currentPassword = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["GmtCreated"] as? String {
                    self.gmtCreated = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["ImageCode"] as? String {
                    self.imageCode = value
                }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["IsCopyPassword"] as? Bool {
                    self.isCopyPassword = value
                }
                if let value = dict["IsEncrypted"] as? Bool {
                    self.isEncrypted = value
                }
                if let value = dict["IsFree"] as? Bool {
                    self.isFree = value
                }
                if let value = dict["PeriodDays"] as? Int32 {
                    self.periodDays = value
                }
                if let value = dict["RedeemCount"] as? Int32 {
                    self.redeemCount = value
                }
                if let value = dict["RedeemQuota"] as? Int32 {
                    self.redeemQuota = value
                }
            }
        }
        public var activityType: String?

        public var authTime: String?

        public var canUpdate: Bool?

        public var currentImageCodeInfo: DescribeAccessibleImagesResponseBody.Data.CurrentImageCodeInfo?

        public var dataDiskSize: Int32?

        public var deployMode: String?

        public var description_: String?

        public var dockerImageSize: Int32?

        public var enableStartUpConfig: Bool?

        public var gmtCreated: String?

        public var imageId: String?

        public var imageScope: String?

        public var imageSource: String?

        public var imageType: String?

        public var isGpu: Bool?

        public var isLinggou: String?

        public var isWorkstation: Bool?

        public var name: String?

        public var operationSystem: String?

        public var osType: String?

        public var permission: String?

        public var platform: String?

        public var progress: String?

        public var receiverType: String?

        public var shareCodes: [String]?

        public var shareCodesIncludeDisable: [String]?

        public var shared: Bool?

        public var sharedBy: String?

        public var sourceDesktopId: String?

        public var sourceDesktopType: String?

        public var sourceImageId: String?

        public var sourceImageName: String?

        public var startUpFileList: [String]?

        public var status: String?

        public var supportPublish: Bool?

        public var systemDiskSize: Int32?

        public var validationCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.currentImageCodeInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activityType != nil {
                map["ActivityType"] = self.activityType!
            }
            if self.authTime != nil {
                map["AuthTime"] = self.authTime!
            }
            if self.canUpdate != nil {
                map["CanUpdate"] = self.canUpdate!
            }
            if self.currentImageCodeInfo != nil {
                map["CurrentImageCodeInfo"] = self.currentImageCodeInfo?.toMap()
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dockerImageSize != nil {
                map["DockerImageSize"] = self.dockerImageSize!
            }
            if self.enableStartUpConfig != nil {
                map["EnableStartUpConfig"] = self.enableStartUpConfig!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageScope != nil {
                map["ImageScope"] = self.imageScope!
            }
            if self.imageSource != nil {
                map["ImageSource"] = self.imageSource!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.isGpu != nil {
                map["IsGpu"] = self.isGpu!
            }
            if self.isLinggou != nil {
                map["IsLinggou"] = self.isLinggou!
            }
            if self.isWorkstation != nil {
                map["IsWorkstation"] = self.isWorkstation!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.permission != nil {
                map["Permission"] = self.permission!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.receiverType != nil {
                map["ReceiverType"] = self.receiverType!
            }
            if self.shareCodes != nil {
                map["ShareCodes"] = self.shareCodes!
            }
            if self.shareCodesIncludeDisable != nil {
                map["ShareCodesIncludeDisable"] = self.shareCodesIncludeDisable!
            }
            if self.shared != nil {
                map["Shared"] = self.shared!
            }
            if self.sharedBy != nil {
                map["SharedBy"] = self.sharedBy!
            }
            if self.sourceDesktopId != nil {
                map["SourceDesktopId"] = self.sourceDesktopId!
            }
            if self.sourceDesktopType != nil {
                map["SourceDesktopType"] = self.sourceDesktopType!
            }
            if self.sourceImageId != nil {
                map["SourceImageId"] = self.sourceImageId!
            }
            if self.sourceImageName != nil {
                map["SourceImageName"] = self.sourceImageName!
            }
            if self.startUpFileList != nil {
                map["StartUpFileList"] = self.startUpFileList!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportPublish != nil {
                map["SupportPublish"] = self.supportPublish!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            if self.validationCode != nil {
                map["ValidationCode"] = self.validationCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivityType"] as? String {
                self.activityType = value
            }
            if let value = dict["AuthTime"] as? String {
                self.authTime = value
            }
            if let value = dict["CanUpdate"] as? Bool {
                self.canUpdate = value
            }
            if let value = dict["CurrentImageCodeInfo"] as? [String: Any?] {
                var model = DescribeAccessibleImagesResponseBody.Data.CurrentImageCodeInfo()
                model.fromMap(value)
                self.currentImageCodeInfo = model
            }
            if let value = dict["DataDiskSize"] as? Int32 {
                self.dataDiskSize = value
            }
            if let value = dict["DeployMode"] as? String {
                self.deployMode = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DockerImageSize"] as? Int32 {
                self.dockerImageSize = value
            }
            if let value = dict["EnableStartUpConfig"] as? Bool {
                self.enableStartUpConfig = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageScope"] as? String {
                self.imageScope = value
            }
            if let value = dict["ImageSource"] as? String {
                self.imageSource = value
            }
            if let value = dict["ImageType"] as? String {
                self.imageType = value
            }
            if let value = dict["IsGpu"] as? Bool {
                self.isGpu = value
            }
            if let value = dict["IsLinggou"] as? String {
                self.isLinggou = value
            }
            if let value = dict["IsWorkstation"] as? Bool {
                self.isWorkstation = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperationSystem"] as? String {
                self.operationSystem = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["Permission"] as? String {
                self.permission = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["ReceiverType"] as? String {
                self.receiverType = value
            }
            if let value = dict["ShareCodes"] as? [String] {
                self.shareCodes = value
            }
            if let value = dict["ShareCodesIncludeDisable"] as? [String] {
                self.shareCodesIncludeDisable = value
            }
            if let value = dict["Shared"] as? Bool {
                self.shared = value
            }
            if let value = dict["SharedBy"] as? String {
                self.sharedBy = value
            }
            if let value = dict["SourceDesktopId"] as? String {
                self.sourceDesktopId = value
            }
            if let value = dict["SourceDesktopType"] as? String {
                self.sourceDesktopType = value
            }
            if let value = dict["SourceImageId"] as? String {
                self.sourceImageId = value
            }
            if let value = dict["SourceImageName"] as? String {
                self.sourceImageName = value
            }
            if let value = dict["StartUpFileList"] as? [String] {
                self.startUpFileList = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupportPublish"] as? Bool {
                self.supportPublish = value
            }
            if let value = dict["SystemDiskSize"] as? Int32 {
                self.systemDiskSize = value
            }
            if let value = dict["ValidationCode"] as? String {
                self.validationCode = value
            }
        }
    }
    public var code: String?

    public var data: [DescribeAccessibleImagesResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAccessibleImagesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAccessibleImagesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class DescribeAccessibleImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessibleImagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAccessibleImagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCorePackageListRequest : Tea.TeaModel {
    public var apiKey: String?

    public var queryDeductionInstances: Bool?

    public var queryScenario: String?

    public override init() {
        super.init()
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
        if self.queryDeductionInstances != nil {
            map["QueryDeductionInstances"] = self.queryDeductionInstances!
        }
        if self.queryScenario != nil {
            map["QueryScenario"] = self.queryScenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["QueryDeductionInstances"] as? Bool {
            self.queryDeductionInstances = value
        }
        if let value = dict["QueryScenario"] as? String {
            self.queryScenario = value
        }
    }
}

public class DescribeCorePackageListResponseBody : Tea.TeaModel {
    public class CorePackageInfo : Tea.TeaModel {
        public class CorePackageList : Tea.TeaModel {
            public class RemainingPeriods : Tea.TeaModel {
                public var periodEndTime: String?

                public var periodStartTime: String?

                public var remainingCoreHours: Double?

                public var status: String?

                public var totalCoreHours: Double?

                public var usedCoreHours: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.periodEndTime != nil {
                        map["PeriodEndTime"] = self.periodEndTime!
                    }
                    if self.periodStartTime != nil {
                        map["PeriodStartTime"] = self.periodStartTime!
                    }
                    if self.remainingCoreHours != nil {
                        map["RemainingCoreHours"] = self.remainingCoreHours!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.totalCoreHours != nil {
                        map["TotalCoreHours"] = self.totalCoreHours!
                    }
                    if self.usedCoreHours != nil {
                        map["UsedCoreHours"] = self.usedCoreHours!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PeriodEndTime"] as? String {
                        self.periodEndTime = value
                    }
                    if let value = dict["PeriodStartTime"] as? String {
                        self.periodStartTime = value
                    }
                    if let value = dict["RemainingCoreHours"] as? Double {
                        self.remainingCoreHours = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["TotalCoreHours"] as? Double {
                        self.totalCoreHours = value
                    }
                    if let value = dict["UsedCoreHours"] as? Double {
                        self.usedCoreHours = value
                    }
                }
            }
            public var assignedCoreHours: Double?

            public var deductionInstanceList: [Any]?

            public var expireTime: String?

            public var instanceId: String?

            public var periodEndTime: String?

            public var periodStartTime: String?

            public var productType: String?

            public var remainingCoreHours: Double?

            public var remainingPeriods: [DescribeCorePackageListResponseBody.CorePackageInfo.CorePackageList.RemainingPeriods]?

            public var startTime: String?

            public var status: String?

            public var totalCoreHours: Double?

            public var unassignedCoreHours: Double?

            public var usedCoreHours: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assignedCoreHours != nil {
                    map["AssignedCoreHours"] = self.assignedCoreHours!
                }
                if self.deductionInstanceList != nil {
                    map["DeductionInstanceList"] = self.deductionInstanceList!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.periodEndTime != nil {
                    map["PeriodEndTime"] = self.periodEndTime!
                }
                if self.periodStartTime != nil {
                    map["PeriodStartTime"] = self.periodStartTime!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.remainingCoreHours != nil {
                    map["RemainingCoreHours"] = self.remainingCoreHours!
                }
                if self.remainingPeriods != nil {
                    var tmp : [Any] = []
                    for k in self.remainingPeriods! {
                        tmp.append(k.toMap())
                    }
                    map["RemainingPeriods"] = tmp
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.totalCoreHours != nil {
                    map["TotalCoreHours"] = self.totalCoreHours!
                }
                if self.unassignedCoreHours != nil {
                    map["UnassignedCoreHours"] = self.unassignedCoreHours!
                }
                if self.usedCoreHours != nil {
                    map["UsedCoreHours"] = self.usedCoreHours!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssignedCoreHours"] as? Double {
                    self.assignedCoreHours = value
                }
                if let value = dict["DeductionInstanceList"] as? [Any] {
                    self.deductionInstanceList = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["PeriodEndTime"] as? String {
                    self.periodEndTime = value
                }
                if let value = dict["PeriodStartTime"] as? String {
                    self.periodStartTime = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["RemainingCoreHours"] as? Double {
                    self.remainingCoreHours = value
                }
                if let value = dict["RemainingPeriods"] as? [Any?] {
                    var tmp : [DescribeCorePackageListResponseBody.CorePackageInfo.CorePackageList.RemainingPeriods] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeCorePackageListResponseBody.CorePackageInfo.CorePackageList.RemainingPeriods()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.remainingPeriods = tmp
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TotalCoreHours"] as? Double {
                    self.totalCoreHours = value
                }
                if let value = dict["UnassignedCoreHours"] as? Double {
                    self.unassignedCoreHours = value
                }
                if let value = dict["UsedCoreHours"] as? Double {
                    self.usedCoreHours = value
                }
            }
        }
        public var corePackageList: [DescribeCorePackageListResponseBody.CorePackageInfo.CorePackageList]?

        public var summaryRemainingCoreHours: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.corePackageList != nil {
                var tmp : [Any] = []
                for k in self.corePackageList! {
                    tmp.append(k.toMap())
                }
                map["CorePackageList"] = tmp
            }
            if self.summaryRemainingCoreHours != nil {
                map["SummaryRemainingCoreHours"] = self.summaryRemainingCoreHours!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CorePackageList"] as? [Any?] {
                var tmp : [DescribeCorePackageListResponseBody.CorePackageInfo.CorePackageList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCorePackageListResponseBody.CorePackageInfo.CorePackageList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.corePackageList = tmp
            }
            if let value = dict["SummaryRemainingCoreHours"] as? Double {
                self.summaryRemainingCoreHours = value
            }
        }
    }
    public var code: String?

    public var corePackageInfo: DescribeCorePackageListResponseBody.CorePackageInfo?

    public var message: String?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.corePackageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.corePackageInfo != nil {
            map["CorePackageInfo"] = self.corePackageInfo?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CorePackageInfo"] as? [String: Any?] {
            var model = DescribeCorePackageListResponseBody.CorePackageInfo()
            model.fromMap(value)
            self.corePackageInfo = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class DescribeCorePackageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCorePackageListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCorePackageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDesktopsRequest : Tea.TeaModel {
    public var apiKey: String?

    public var displayType: String?

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
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.displayType != nil {
            map["DisplayType"] = self.displayType!
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
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["DisplayType"] as? String {
            self.displayType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class DescribeDesktopsResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var result: Any?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Any {
            self.result = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class DescribeDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDesktopsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDesktopsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeImageDetailRequest : Tea.TeaModel {
    public var apiKey: String?

    public var imageId: String?

    public var sessionId: String?

    public var shareCode: String?

    public override init() {
        super.init()
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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.shareCode != nil {
            map["ShareCode"] = self.shareCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["ShareCode"] as? String {
            self.shareCode = value
        }
    }
}

public class DescribeImageDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CurrentImageCodeInfo : Tea.TeaModel {
            public var currentPassword: String?

            public var expireTime: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var imageCode: String?

            public var isCopyPassword: Bool?

            public var isEncrypted: Bool?

            public var isFree: Bool?

            public var periodDays: Int32?

            public var redeemCount: Int32?

            public var redeemQuota: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currentPassword != nil {
                    map["CurrentPassword"] = self.currentPassword!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.imageCode != nil {
                    map["ImageCode"] = self.imageCode!
                }
                if self.isCopyPassword != nil {
                    map["IsCopyPassword"] = self.isCopyPassword!
                }
                if self.isEncrypted != nil {
                    map["IsEncrypted"] = self.isEncrypted!
                }
                if self.isFree != nil {
                    map["IsFree"] = self.isFree!
                }
                if self.periodDays != nil {
                    map["PeriodDays"] = self.periodDays!
                }
                if self.redeemCount != nil {
                    map["RedeemCount"] = self.redeemCount!
                }
                if self.redeemQuota != nil {
                    map["RedeemQuota"] = self.redeemQuota!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPassword"] as? String {
                    self.currentPassword = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["GmtCreated"] as? String {
                    self.gmtCreated = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["ImageCode"] as? String {
                    self.imageCode = value
                }
                if let value = dict["IsCopyPassword"] as? Bool {
                    self.isCopyPassword = value
                }
                if let value = dict["IsEncrypted"] as? Bool {
                    self.isEncrypted = value
                }
                if let value = dict["IsFree"] as? Bool {
                    self.isFree = value
                }
                if let value = dict["PeriodDays"] as? Int32 {
                    self.periodDays = value
                }
                if let value = dict["RedeemCount"] as? Int32 {
                    self.redeemCount = value
                }
                if let value = dict["RedeemQuota"] as? Int32 {
                    self.redeemQuota = value
                }
            }
        }
        public var currentImageCodeInfo: DescribeImageDetailResponseBody.Data.CurrentImageCodeInfo?

        public var dataDiskSize: Int32?

        public var description_: String?

        public var enableStartUpConfig: Bool?

        public var gmtCreated: String?

        public var imageId: String?

        public var imageScope: String?

        public var isGpu: Bool?

        public var name: String?

        public var osType: String?

        public var permission: String?

        public var platform: String?

        public var progress: String?

        public var shareCodes: [String]?

        public var shareCodesIncludeDisable: [String]?

        public var shared: Bool?

        public var sourceDesktopType: String?

        public var startUpFileList: [String]?

        public var status: String?

        public var systemDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.currentImageCodeInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentImageCodeInfo != nil {
                map["CurrentImageCodeInfo"] = self.currentImageCodeInfo?.toMap()
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enableStartUpConfig != nil {
                map["EnableStartUpConfig"] = self.enableStartUpConfig!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageScope != nil {
                map["ImageScope"] = self.imageScope!
            }
            if self.isGpu != nil {
                map["IsGpu"] = self.isGpu!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.permission != nil {
                map["Permission"] = self.permission!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.shareCodes != nil {
                map["ShareCodes"] = self.shareCodes!
            }
            if self.shareCodesIncludeDisable != nil {
                map["ShareCodesIncludeDisable"] = self.shareCodesIncludeDisable!
            }
            if self.shared != nil {
                map["Shared"] = self.shared!
            }
            if self.sourceDesktopType != nil {
                map["SourceDesktopType"] = self.sourceDesktopType!
            }
            if self.startUpFileList != nil {
                map["StartUpFileList"] = self.startUpFileList!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentImageCodeInfo"] as? [String: Any?] {
                var model = DescribeImageDetailResponseBody.Data.CurrentImageCodeInfo()
                model.fromMap(value)
                self.currentImageCodeInfo = model
            }
            if let value = dict["DataDiskSize"] as? Int32 {
                self.dataDiskSize = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EnableStartUpConfig"] as? Bool {
                self.enableStartUpConfig = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageScope"] as? String {
                self.imageScope = value
            }
            if let value = dict["IsGpu"] as? Bool {
                self.isGpu = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["Permission"] as? String {
                self.permission = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["ShareCodes"] as? [String] {
                self.shareCodes = value
            }
            if let value = dict["ShareCodesIncludeDisable"] as? [String] {
                self.shareCodesIncludeDisable = value
            }
            if let value = dict["Shared"] as? Bool {
                self.shared = value
            }
            if let value = dict["SourceDesktopType"] as? String {
                self.sourceDesktopType = value
            }
            if let value = dict["StartUpFileList"] as? [String] {
                self.startUpFileList = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SystemDiskSize"] as? Int32 {
                self.systemDiskSize = value
            }
        }
    }
    public var code: String?

    public var data: DescribeImageDetailResponseBody.Data?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var traceId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeImageDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class DescribeImageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeImageDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePackageOrdersRequest : Tea.TeaModel {
    public var apiKey: String?

    public var currentPage: Int64?

    public var desktopIdList: [String]?

    public var orderIdList: [String]?

    public var orderStatusList: [String]?

    public var pageSize: Int64?

    public var productTypeList: [String]?

    public var resourceIdList: [String]?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.desktopIdList != nil {
            map["DesktopIdList"] = self.desktopIdList!
        }
        if self.orderIdList != nil {
            map["OrderIdList"] = self.orderIdList!
        }
        if self.orderStatusList != nil {
            map["OrderStatusList"] = self.orderStatusList!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productTypeList != nil {
            map["ProductTypeList"] = self.productTypeList!
        }
        if self.resourceIdList != nil {
            map["ResourceIdList"] = self.resourceIdList!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["DesktopIdList"] as? [String] {
            self.desktopIdList = value
        }
        if let value = dict["OrderIdList"] as? [String] {
            self.orderIdList = value
        }
        if let value = dict["OrderStatusList"] as? [String] {
            self.orderStatusList = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductTypeList"] as? [String] {
            self.productTypeList = value
        }
        if let value = dict["ResourceIdList"] as? [String] {
            self.resourceIdList = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class DescribePackageOrdersShrinkRequest : Tea.TeaModel {
    public var apiKey: String?

    public var currentPage: Int64?

    public var desktopIdListShrink: String?

    public var orderIdListShrink: String?

    public var orderStatusListShrink: String?

    public var pageSize: Int64?

    public var productTypeListShrink: String?

    public var resourceIdListShrink: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.desktopIdListShrink != nil {
            map["DesktopIdList"] = self.desktopIdListShrink!
        }
        if self.orderIdListShrink != nil {
            map["OrderIdList"] = self.orderIdListShrink!
        }
        if self.orderStatusListShrink != nil {
            map["OrderStatusList"] = self.orderStatusListShrink!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productTypeListShrink != nil {
            map["ProductTypeList"] = self.productTypeListShrink!
        }
        if self.resourceIdListShrink != nil {
            map["ResourceIdList"] = self.resourceIdListShrink!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["DesktopIdList"] as? String {
            self.desktopIdListShrink = value
        }
        if let value = dict["OrderIdList"] as? String {
            self.orderIdListShrink = value
        }
        if let value = dict["OrderStatusList"] as? String {
            self.orderStatusListShrink = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductTypeList"] as? String {
            self.productTypeListShrink = value
        }
        if let value = dict["ResourceIdList"] as? String {
            self.resourceIdListShrink = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class DescribePackageOrdersResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public class OrderList : Tea.TeaModel {
            public var amount: Int32?

            public var creatorAliUid: Int64?

            public var deliveryAddress: String?

            public var desktopId: String?

            public var gmtCanceledTime: String?

            public var gmtCreateTime: String?

            public var gmtPaidTime: String?

            public var instanceId: String?

            public var orderId: String?

            public var orderStatus: String?

            public var orderType: String?

            public var productCode: String?

            public var productSkuCode: String?

            public var productType: String?

            public var tradePrice: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.creatorAliUid != nil {
                    map["CreatorAliUid"] = self.creatorAliUid!
                }
                if self.deliveryAddress != nil {
                    map["DeliveryAddress"] = self.deliveryAddress!
                }
                if self.desktopId != nil {
                    map["DesktopId"] = self.desktopId!
                }
                if self.gmtCanceledTime != nil {
                    map["GmtCanceledTime"] = self.gmtCanceledTime!
                }
                if self.gmtCreateTime != nil {
                    map["GmtCreateTime"] = self.gmtCreateTime!
                }
                if self.gmtPaidTime != nil {
                    map["GmtPaidTime"] = self.gmtPaidTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderStatus != nil {
                    map["OrderStatus"] = self.orderStatus!
                }
                if self.orderType != nil {
                    map["OrderType"] = self.orderType!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productSkuCode != nil {
                    map["ProductSkuCode"] = self.productSkuCode!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Int32 {
                    self.amount = value
                }
                if let value = dict["CreatorAliUid"] as? Int64 {
                    self.creatorAliUid = value
                }
                if let value = dict["DeliveryAddress"] as? String {
                    self.deliveryAddress = value
                }
                if let value = dict["DesktopId"] as? String {
                    self.desktopId = value
                }
                if let value = dict["GmtCanceledTime"] as? String {
                    self.gmtCanceledTime = value
                }
                if let value = dict["GmtCreateTime"] as? String {
                    self.gmtCreateTime = value
                }
                if let value = dict["GmtPaidTime"] as? String {
                    self.gmtPaidTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["OrderStatus"] as? String {
                    self.orderStatus = value
                }
                if let value = dict["OrderType"] as? String {
                    self.orderType = value
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
                if let value = dict["ProductSkuCode"] as? String {
                    self.productSkuCode = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["TradePrice"] as? String {
                    self.tradePrice = value
                }
            }
        }
        public var currentPage: Int64?

        public var orderList: [DescribePackageOrdersResponseBody.Page.OrderList]?

        public var pageSize: Int64?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.orderList != nil {
                var tmp : [Any] = []
                for k in self.orderList! {
                    tmp.append(k.toMap())
                }
                map["OrderList"] = tmp
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
            if let value = dict["CurrentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["OrderList"] as? [Any?] {
                var tmp : [DescribePackageOrdersResponseBody.Page.OrderList] = []
                for v in value {
                    if v != nil {
                        var model = DescribePackageOrdersResponseBody.Page.OrderList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.orderList = tmp
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var page: DescribePackageOrdersResponseBody.Page?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
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
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribePackageOrdersResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class DescribePackageOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePackageOrdersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePackageOrdersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateWuyingServerSceneUrlRequest : Tea.TeaModel {
    public var apiKey: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientType: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var productType: String?

    public var scene: String?

    public var sessionId: String?

    public var uuid: String?

    public var wuyingServerId: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        if self.wuyingServerId != nil {
            map["WuyingServerId"] = self.wuyingServerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
        if let value = dict["WuyingServerId"] as? String {
            self.wuyingServerId = value
        }
    }
}

public class GenerateWuyingServerSceneUrlResponseBody : Tea.TeaModel {
    public var expireDurationHours: Int32?

    public var expireTime: String?

    public var requestId: String?

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
        if self.expireDurationHours != nil {
            map["ExpireDurationHours"] = self.expireDurationHours!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireDurationHours"] as? Int32 {
            self.expireDurationHours = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class GenerateWuyingServerSceneUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateWuyingServerSceneUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateWuyingServerSceneUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProductListRequest : Tea.TeaModel {
    public var apiKey: String?

    public var configVersion: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var sessionId: String?

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
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.configVersion != nil {
            map["ConfigVersion"] = self.configVersion!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["ConfigVersion"] as? String {
            self.configVersion = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetProductListResponseBody : Tea.TeaModel {
    public class DisplayInfo : Tea.TeaModel {
        public class ProductList : Tea.TeaModel {
            public class SkuList : Tea.TeaModel {
                public var appleSkuCode: String?

                public var attribute: String?

                public var purchaseMode: String?

                public var skuCode: String?

                public var skuDesc: String?

                public var skuName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appleSkuCode != nil {
                        map["AppleSkuCode"] = self.appleSkuCode!
                    }
                    if self.attribute != nil {
                        map["Attribute"] = self.attribute!
                    }
                    if self.purchaseMode != nil {
                        map["PurchaseMode"] = self.purchaseMode!
                    }
                    if self.skuCode != nil {
                        map["SkuCode"] = self.skuCode!
                    }
                    if self.skuDesc != nil {
                        map["SkuDesc"] = self.skuDesc!
                    }
                    if self.skuName != nil {
                        map["SkuName"] = self.skuName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AppleSkuCode"] as? String {
                        self.appleSkuCode = value
                    }
                    if let value = dict["Attribute"] as? String {
                        self.attribute = value
                    }
                    if let value = dict["PurchaseMode"] as? String {
                        self.purchaseMode = value
                    }
                    if let value = dict["SkuCode"] as? String {
                        self.skuCode = value
                    }
                    if let value = dict["SkuDesc"] as? String {
                        self.skuDesc = value
                    }
                    if let value = dict["SkuName"] as? String {
                        self.skuName = value
                    }
                }
            }
            public var displayAttribute: String?

            public var displayConfig: String?

            public var dynamicAttribute: String?

            public var isEnable: Bool?

            public var modificationLevel: Int32?

            public var productCode: String?

            public var productDesc: String?

            public var productGroup: String?

            public var productName: String?

            public var productType: String?

            public var skuList: [GetProductListResponseBody.DisplayInfo.ProductList.SkuList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayAttribute != nil {
                    map["DisplayAttribute"] = self.displayAttribute!
                }
                if self.displayConfig != nil {
                    map["DisplayConfig"] = self.displayConfig!
                }
                if self.dynamicAttribute != nil {
                    map["DynamicAttribute"] = self.dynamicAttribute!
                }
                if self.isEnable != nil {
                    map["IsEnable"] = self.isEnable!
                }
                if self.modificationLevel != nil {
                    map["ModificationLevel"] = self.modificationLevel!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productDesc != nil {
                    map["ProductDesc"] = self.productDesc!
                }
                if self.productGroup != nil {
                    map["ProductGroup"] = self.productGroup!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.skuList != nil {
                    var tmp : [Any] = []
                    for k in self.skuList! {
                        tmp.append(k.toMap())
                    }
                    map["SkuList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DisplayAttribute"] as? String {
                    self.displayAttribute = value
                }
                if let value = dict["DisplayConfig"] as? String {
                    self.displayConfig = value
                }
                if let value = dict["DynamicAttribute"] as? String {
                    self.dynamicAttribute = value
                }
                if let value = dict["IsEnable"] as? Bool {
                    self.isEnable = value
                }
                if let value = dict["ModificationLevel"] as? Int32 {
                    self.modificationLevel = value
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
                if let value = dict["ProductDesc"] as? String {
                    self.productDesc = value
                }
                if let value = dict["ProductGroup"] as? String {
                    self.productGroup = value
                }
                if let value = dict["ProductName"] as? String {
                    self.productName = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["SkuList"] as? [Any?] {
                    var tmp : [GetProductListResponseBody.DisplayInfo.ProductList.SkuList] = []
                    for v in value {
                        if v != nil {
                            var model = GetProductListResponseBody.DisplayInfo.ProductList.SkuList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.skuList = tmp
                }
            }
        }
        public var productList: [GetProductListResponseBody.DisplayInfo.ProductList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productList != nil {
                var tmp : [Any] = []
                for k in self.productList! {
                    tmp.append(k.toMap())
                }
                map["ProductList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductList"] as? [Any?] {
                var tmp : [GetProductListResponseBody.DisplayInfo.ProductList] = []
                for v in value {
                    if v != nil {
                        var model = GetProductListResponseBody.DisplayInfo.ProductList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.productList = tmp
            }
        }
    }
    public var code: String?

    public var displayInfo: GetProductListResponseBody.DisplayInfo?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.displayInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.displayInfo != nil {
            map["DisplayInfo"] = self.displayInfo?.toMap()
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DisplayInfo"] as? [String: Any?] {
            var model = GetProductListResponseBody.DisplayInfo()
            model.fromMap(value)
            self.displayInfo = model
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
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class GetProductListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetProductListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserInfoRequest : Tea.TeaModel {
    public var apiKey: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
    }
}

public class GetUserInfoResponseBody : Tea.TeaModel {
    public var aliyunId: String?

    public var nickName: String?

    public var phone: String?

    public var requestId: String?

    public var unionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunId != nil {
            map["AliyunId"] = self.aliyunId!
        }
        if self.nickName != nil {
            map["NickName"] = self.nickName!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.unionId != nil {
            map["UnionId"] = self.unionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunId"] as? String {
            self.aliyunId = value
        }
        if let value = dict["NickName"] as? String {
            self.nickName = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UnionId"] as? String {
            self.unionId = value
        }
    }
}

public class GetUserInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDesktopRequest : Tea.TeaModel {
    public var apiKey: String?

    public var desktopId: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class StartDesktopResponseBody : Tea.TeaModel {
    public var code: String?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class StartDesktopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDesktopResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartDesktopResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopDesktopRequest : Tea.TeaModel {
    public var apiKey: String?

    public var desktopId: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class StopDesktopResponseBody : Tea.TeaModel {
    public var code: String?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class StopDesktopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDesktopResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopDesktopResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
