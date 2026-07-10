import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GenerateGroupImageRequest : Tea.TeaModel {
    public var callbackSecret: String?

    public var callbackUrl: String?

    public var groupId: String?

    public var groupType: Int32?

    public var platformItemIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackSecret != nil {
            map["CallbackSecret"] = self.callbackSecret!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.platformItemIdList != nil {
            map["PlatformItemIdList"] = self.platformItemIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackSecret"] as? String {
            self.callbackSecret = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["GroupType"] as? Int32 {
            self.groupType = value
        }
        if let value = dict["PlatformItemIdList"] as? [String] {
            self.platformItemIdList = value
        }
    }
}

public class GenerateGroupImageShrinkRequest : Tea.TeaModel {
    public var callbackSecret: String?

    public var callbackUrl: String?

    public var groupId: String?

    public var groupType: Int32?

    public var platformItemIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackSecret != nil {
            map["CallbackSecret"] = self.callbackSecret!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.platformItemIdListShrink != nil {
            map["PlatformItemIdList"] = self.platformItemIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackSecret"] as? String {
            self.callbackSecret = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["GroupType"] as? Int32 {
            self.groupType = value
        }
        if let value = dict["PlatformItemIdList"] as? String {
            self.platformItemIdListShrink = value
        }
    }
}

public class GenerateGroupImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var groupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
        }
    }
    public var code: String?

    public var data: GenerateGroupImageResponseBody.Data?

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
            var model = GenerateGroupImageResponseBody.Data()
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

public class GenerateGroupImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateGroupImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateGroupImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportProductsRequest : Tea.TeaModel {
    public class MultiViewImages : Tea.TeaModel {
        public var angle: String?

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
            if self.angle != nil {
                map["Angle"] = self.angle!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Angle"] as? String {
                self.angle = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var deviceId: String?

    public var extraImages: [String]?

    public var imageTitle: String?

    public var itemUniqueId: String?

    public var mainImage: [String]?

    public var multiViewImages: [ImportProductsRequest.MultiViewImages]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.extraImages != nil {
            map["ExtraImages"] = self.extraImages!
        }
        if self.imageTitle != nil {
            map["ImageTitle"] = self.imageTitle!
        }
        if self.itemUniqueId != nil {
            map["ItemUniqueId"] = self.itemUniqueId!
        }
        if self.mainImage != nil {
            map["MainImage"] = self.mainImage!
        }
        if self.multiViewImages != nil {
            var tmp : [Any] = []
            for k in self.multiViewImages! {
                tmp.append(k.toMap())
            }
            map["MultiViewImages"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["ExtraImages"] as? [String] {
            self.extraImages = value
        }
        if let value = dict["ImageTitle"] as? String {
            self.imageTitle = value
        }
        if let value = dict["ItemUniqueId"] as? String {
            self.itemUniqueId = value
        }
        if let value = dict["MainImage"] as? [String] {
            self.mainImage = value
        }
        if let value = dict["MultiViewImages"] as? [Any?] {
            var tmp : [ImportProductsRequest.MultiViewImages] = []
            for v in value {
                if v != nil {
                    var model = ImportProductsRequest.MultiViewImages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.multiViewImages = tmp
        }
    }
}

public class ImportProductsShrinkRequest : Tea.TeaModel {
    public var deviceId: String?

    public var extraImagesShrink: String?

    public var imageTitle: String?

    public var itemUniqueId: String?

    public var mainImageShrink: String?

    public var multiViewImagesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.extraImagesShrink != nil {
            map["ExtraImages"] = self.extraImagesShrink!
        }
        if self.imageTitle != nil {
            map["ImageTitle"] = self.imageTitle!
        }
        if self.itemUniqueId != nil {
            map["ItemUniqueId"] = self.itemUniqueId!
        }
        if self.mainImageShrink != nil {
            map["MainImage"] = self.mainImageShrink!
        }
        if self.multiViewImagesShrink != nil {
            map["MultiViewImages"] = self.multiViewImagesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["ExtraImages"] as? String {
            self.extraImagesShrink = value
        }
        if let value = dict["ImageTitle"] as? String {
            self.imageTitle = value
        }
        if let value = dict["ItemUniqueId"] as? String {
            self.itemUniqueId = value
        }
        if let value = dict["MainImage"] as? String {
            self.mainImageShrink = value
        }
        if let value = dict["MultiViewImages"] as? String {
            self.multiViewImagesShrink = value
        }
    }
}

public class ImportProductsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var itemUniqueId: String?

        public var platformItemId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.itemUniqueId != nil {
                map["ItemUniqueId"] = self.itemUniqueId!
            }
            if self.platformItemId != nil {
                map["PlatformItemId"] = self.platformItemId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ItemUniqueId"] as? String {
                self.itemUniqueId = value
            }
            if let value = dict["PlatformItemId"] as? String {
                self.platformItemId = value
            }
        }
    }
    public var code: String?

    public var data: ImportProductsResponseBody.Data?

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
            var model = ImportProductsResponseBody.Data()
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

public class ImportProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportProductsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ImportProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecognitionResultRequest : Tea.TeaModel {
    public var orderUniqueId: String?

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
        if self.orderUniqueId != nil {
            map["OrderUniqueId"] = self.orderUniqueId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderUniqueId"] as? String {
            self.orderUniqueId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class QueryRecognitionResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class CheckoutInfo : Tea.TeaModel {
                public var checkoutStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkoutStatus != nil {
                        map["CheckoutStatus"] = self.checkoutStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CheckoutStatus"] as? String {
                        self.checkoutStatus = value
                    }
                }
            }
            public class Items : Tea.TeaModel {
                public var itemUniqueId: String?

                public var platformItemId: String?

                public var quantity: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.itemUniqueId != nil {
                        map["ItemUniqueId"] = self.itemUniqueId!
                    }
                    if self.platformItemId != nil {
                        map["PlatformItemId"] = self.platformItemId!
                    }
                    if self.quantity != nil {
                        map["Quantity"] = self.quantity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ItemUniqueId"] as? String {
                        self.itemUniqueId = value
                    }
                    if let value = dict["PlatformItemId"] as? String {
                        self.platformItemId = value
                    }
                    if let value = dict["Quantity"] as? Int32 {
                        self.quantity = value
                    }
                }
            }
            public var checkoutInfo: QueryRecognitionResultResponseBody.Data.Result.CheckoutInfo?

            public var items: [QueryRecognitionResultResponseBody.Data.Result.Items]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.checkoutInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkoutInfo != nil {
                    map["CheckoutInfo"] = self.checkoutInfo?.toMap()
                }
                if self.items != nil {
                    var tmp : [Any] = []
                    for k in self.items! {
                        tmp.append(k.toMap())
                    }
                    map["Items"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckoutInfo"] as? [String: Any?] {
                    var model = QueryRecognitionResultResponseBody.Data.Result.CheckoutInfo()
                    model.fromMap(value)
                    self.checkoutInfo = model
                }
                if let value = dict["Items"] as? [Any?] {
                    var tmp : [QueryRecognitionResultResponseBody.Data.Result.Items] = []
                    for v in value {
                        if v != nil {
                            var model = QueryRecognitionResultResponseBody.Data.Result.Items()
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
        public var orderUniqueId: String?

        public var result: QueryRecognitionResultResponseBody.Data.Result?

        public var taskId: String?

        public var taskStatus: String?

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
            if self.orderUniqueId != nil {
                map["OrderUniqueId"] = self.orderUniqueId!
            }
            if self.result != nil {
                map["Result"] = self.result?.toMap()
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderUniqueId"] as? String {
                self.orderUniqueId = value
            }
            if let value = dict["Result"] as? [String: Any?] {
                var model = QueryRecognitionResultResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: QueryRecognitionResultResponseBody.Data?

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
            var model = QueryRecognitionResultResponseBody.Data()
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

public class QueryRecognitionResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecognitionResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecognitionResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeOrderRequest : Tea.TeaModel {
    public var callbackUrl: String?

    public var candidateItems: [String]?

    public var deviceId: String?

    public var orderUniqueId: String?

    public var videoUrls: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.candidateItems != nil {
            map["CandidateItems"] = self.candidateItems!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.orderUniqueId != nil {
            map["OrderUniqueId"] = self.orderUniqueId!
        }
        if self.videoUrls != nil {
            map["VideoUrls"] = self.videoUrls!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["CandidateItems"] as? [String] {
            self.candidateItems = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["OrderUniqueId"] as? String {
            self.orderUniqueId = value
        }
        if let value = dict["VideoUrls"] as? [String] {
            self.videoUrls = value
        }
    }
}

public class RecognizeOrderShrinkRequest : Tea.TeaModel {
    public var callbackUrl: String?

    public var candidateItemsShrink: String?

    public var deviceId: String?

    public var orderUniqueId: String?

    public var videoUrlsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.candidateItemsShrink != nil {
            map["CandidateItems"] = self.candidateItemsShrink!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.orderUniqueId != nil {
            map["OrderUniqueId"] = self.orderUniqueId!
        }
        if self.videoUrlsShrink != nil {
            map["VideoUrls"] = self.videoUrlsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["CandidateItems"] as? String {
            self.candidateItemsShrink = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["OrderUniqueId"] as? String {
            self.orderUniqueId = value
        }
        if let value = dict["VideoUrls"] as? String {
            self.videoUrlsShrink = value
        }
    }
}

public class RecognizeOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderUniqueId: String?

        public var taskId: String?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderUniqueId != nil {
                map["OrderUniqueId"] = self.orderUniqueId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderUniqueId"] as? String {
                self.orderUniqueId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: RecognizeOrderResponseBody.Data?

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
            var model = RecognizeOrderResponseBody.Data()
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

public class RecognizeOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RecognizeOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterWebhookRequest : Tea.TeaModel {
    public var callbackSecret: String?

    public var callbackUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackSecret != nil {
            map["CallbackSecret"] = self.callbackSecret!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackSecret"] as? String {
            self.callbackSecret = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
    }
}

public class RegisterWebhookResponseBody : Tea.TeaModel {
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

public class RegisterWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterWebhookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RegisterWebhookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProductRequest : Tea.TeaModel {
    public class MultiViewImages : Tea.TeaModel {
        public var angle: String?

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
            if self.angle != nil {
                map["Angle"] = self.angle!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Angle"] as? String {
                self.angle = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var deviceId: String?

    public var extraImages: [String]?

    public var imageTitle: String?

    public var itemUniqueId: String?

    public var mainImage: [String]?

    public var multiViewImages: [UpdateProductRequest.MultiViewImages]?

    public var platformItemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.extraImages != nil {
            map["ExtraImages"] = self.extraImages!
        }
        if self.imageTitle != nil {
            map["ImageTitle"] = self.imageTitle!
        }
        if self.itemUniqueId != nil {
            map["ItemUniqueId"] = self.itemUniqueId!
        }
        if self.mainImage != nil {
            map["MainImage"] = self.mainImage!
        }
        if self.multiViewImages != nil {
            var tmp : [Any] = []
            for k in self.multiViewImages! {
                tmp.append(k.toMap())
            }
            map["MultiViewImages"] = tmp
        }
        if self.platformItemId != nil {
            map["PlatformItemId"] = self.platformItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["ExtraImages"] as? [String] {
            self.extraImages = value
        }
        if let value = dict["ImageTitle"] as? String {
            self.imageTitle = value
        }
        if let value = dict["ItemUniqueId"] as? String {
            self.itemUniqueId = value
        }
        if let value = dict["MainImage"] as? [String] {
            self.mainImage = value
        }
        if let value = dict["MultiViewImages"] as? [Any?] {
            var tmp : [UpdateProductRequest.MultiViewImages] = []
            for v in value {
                if v != nil {
                    var model = UpdateProductRequest.MultiViewImages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.multiViewImages = tmp
        }
        if let value = dict["PlatformItemId"] as? String {
            self.platformItemId = value
        }
    }
}

public class UpdateProductShrinkRequest : Tea.TeaModel {
    public var deviceId: String?

    public var extraImagesShrink: String?

    public var imageTitle: String?

    public var itemUniqueId: String?

    public var mainImageShrink: String?

    public var multiViewImagesShrink: String?

    public var platformItemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.extraImagesShrink != nil {
            map["ExtraImages"] = self.extraImagesShrink!
        }
        if self.imageTitle != nil {
            map["ImageTitle"] = self.imageTitle!
        }
        if self.itemUniqueId != nil {
            map["ItemUniqueId"] = self.itemUniqueId!
        }
        if self.mainImageShrink != nil {
            map["MainImage"] = self.mainImageShrink!
        }
        if self.multiViewImagesShrink != nil {
            map["MultiViewImages"] = self.multiViewImagesShrink!
        }
        if self.platformItemId != nil {
            map["PlatformItemId"] = self.platformItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["ExtraImages"] as? String {
            self.extraImagesShrink = value
        }
        if let value = dict["ImageTitle"] as? String {
            self.imageTitle = value
        }
        if let value = dict["ItemUniqueId"] as? String {
            self.itemUniqueId = value
        }
        if let value = dict["MainImage"] as? String {
            self.mainImageShrink = value
        }
        if let value = dict["MultiViewImages"] as? String {
            self.multiViewImagesShrink = value
        }
        if let value = dict["PlatformItemId"] as? String {
            self.platformItemId = value
        }
    }
}

public class UpdateProductResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var itemUniqueId: String?

        public var platformItemId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.itemUniqueId != nil {
                map["ItemUniqueId"] = self.itemUniqueId!
            }
            if self.platformItemId != nil {
                map["PlatformItemId"] = self.platformItemId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ItemUniqueId"] as? String {
                self.itemUniqueId = value
            }
            if let value = dict["PlatformItemId"] as? String {
                self.platformItemId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateProductResponseBody.Data?

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
            var model = UpdateProductResponseBody.Data()
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

public class UpdateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
