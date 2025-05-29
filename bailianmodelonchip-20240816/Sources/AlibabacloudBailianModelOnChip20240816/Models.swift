import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateChannelSignRequest : Tea.TeaModel {
    public var channelName: String?

    public var contact: String?

    public var description_: String?

    public var phone: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelName != nil {
            map["channelName"] = self.channelName!
        }
        if self.contact != nil {
            map["contact"] = self.contact!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.phone != nil {
            map["phone"] = self.phone!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelName"] as? String {
            self.channelName = value
        }
        if let value = dict["contact"] as? String {
            self.contact = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["phone"] as? String {
            self.phone = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class CreateChannelSignResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var channelName: String?

        public var contact: String?

        public var createTime: String?

        public var description_: String?

        public var modifyTime: String?

        public var phone: String?

        public var remark: String?

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
            if self.channelName != nil {
                map["channelName"] = self.channelName!
            }
            if self.contact != nil {
                map["contact"] = self.contact!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.modifyTime != nil {
                map["modifyTime"] = self.modifyTime!
            }
            if self.phone != nil {
                map["phone"] = self.phone!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["channelName"] as? String {
                self.channelName = value
            }
            if let value = dict["contact"] as? String {
                self.contact = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["modifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["phone"] as? String {
                self.phone = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: CreateChannelSignResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateChannelSignResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class CreateChannelSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChannelSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateChannelSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProductRequest : Tea.TeaModel {
    public var description_: String?

    public var euid: String?

    public var productName: String?

    public var tenantId: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.euid != nil {
            map["euid"] = self.euid!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["euid"] as? String {
            self.euid = value
        }
        if let value = dict["productName"] as? String {
            self.productName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class CreateProductResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiKey: String?

        public var description_: String?

        public var productKey: String?

        public var productName: String?

        public var productSecret: String?

        public var tenantId: String?

        public var userId: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.productKey != nil {
                map["productKey"] = self.productKey!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productSecret != nil {
                map["productSecret"] = self.productSecret!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["productKey"] as? String {
                self.productKey = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["productSecret"] as? String {
                self.productSecret = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: CreateProductResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateProductResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class CreateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProductRequest : Tea.TeaModel {
    public var productKey: String?

    public var tenantId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class DeleteProductResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var productKey: String?

        public var productName: String?

        public var tenantId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productKey != nil {
                map["productKey"] = self.productKey!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["productKey"] as? String {
                self.productKey = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteProductResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteProductResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class DeleteProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeviceRegisterRequest : Tea.TeaModel {
    public var nonce: String?

    public var productKey: String?

    public var requestTime: String?

    public var signature: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nonce != nil {
            map["nonce"] = self.nonce!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.requestTime != nil {
            map["requestTime"] = self.requestTime!
        }
        if self.signature != nil {
            map["signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nonce"] as? String {
            self.nonce = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["requestTime"] as? String {
            self.requestTime = value
        }
        if let value = dict["signature"] as? String {
            self.signature = value
        }
    }
}

public class DeviceRegisterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceName: String?

        public var nonce: String?

        public var productKey: String?

        public var responseTime: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceName != nil {
                map["deviceName"] = self.deviceName!
            }
            if self.nonce != nil {
                map["nonce"] = self.nonce!
            }
            if self.productKey != nil {
                map["productKey"] = self.productKey!
            }
            if self.responseTime != nil {
                map["responseTime"] = self.responseTime!
            }
            if self.signature != nil {
                map["signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["nonce"] as? String {
                self.nonce = value
            }
            if let value = dict["productKey"] as? String {
                self.productKey = value
            }
            if let value = dict["responseTime"] as? String {
                self.responseTime = value
            }
            if let value = dict["signature"] as? String {
                self.signature = value
            }
        }
    }
    public var code: String?

    public var data: DeviceRegisterResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeviceRegisterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class DeviceRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeviceRegisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeviceRegisterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChannelSignResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var channelName: String?

        public var contact: String?

        public var createTime: String?

        public var description_: String?

        public var modifyTime: String?

        public var phone: String?

        public var remark: String?

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
            if self.channelName != nil {
                map["channelName"] = self.channelName!
            }
            if self.contact != nil {
                map["contact"] = self.contact!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.modifyTime != nil {
                map["modifyTime"] = self.modifyTime!
            }
            if self.phone != nil {
                map["phone"] = self.phone!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["channelName"] as? String {
                self.channelName = value
            }
            if let value = dict["contact"] as? String {
                self.contact = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["modifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["phone"] as? String {
                self.phone = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetChannelSignResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetChannelSignResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetChannelSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChannelSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChannelSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQuotaInfoRequest : Tea.TeaModel {
    public var recordId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["recordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["recordId"] as? Int64 {
            self.recordId = value
        }
    }
}

public class GetQuotaInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activeLicenseCount: Int64?

        public var duration: Int32?

        public var durationType: Int32?

        public var licenseCount: Int64?

        public var maxQps: Int32?

        public var productKey: String?

        public var purchaseModel: Int32?

        public var tenantId: String?

        public var tokenNumber: Int64?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeLicenseCount != nil {
                map["activeLicenseCount"] = self.activeLicenseCount!
            }
            if self.duration != nil {
                map["duration"] = self.duration!
            }
            if self.durationType != nil {
                map["durationType"] = self.durationType!
            }
            if self.licenseCount != nil {
                map["licenseCount"] = self.licenseCount!
            }
            if self.maxQps != nil {
                map["maxQps"] = self.maxQps!
            }
            if self.productKey != nil {
                map["productKey"] = self.productKey!
            }
            if self.purchaseModel != nil {
                map["purchaseModel"] = self.purchaseModel!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.tokenNumber != nil {
                map["tokenNumber"] = self.tokenNumber!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["activeLicenseCount"] as? Int64 {
                self.activeLicenseCount = value
            }
            if let value = dict["duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["durationType"] as? Int32 {
                self.durationType = value
            }
            if let value = dict["licenseCount"] as? Int64 {
                self.licenseCount = value
            }
            if let value = dict["maxQps"] as? Int32 {
                self.maxQps = value
            }
            if let value = dict["productKey"] as? String {
                self.productKey = value
            }
            if let value = dict["purchaseModel"] as? Int32 {
                self.purchaseModel = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["tokenNumber"] as? Int64 {
                self.tokenNumber = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: GetQuotaInfoResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetQuotaInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetQuotaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQuotaInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenRequest : Tea.TeaModel {
    public var deviceName: String?

    public var nonce: String?

    public var productKey: String?

    public var requestTime: String?

    public var signature: String?

    public var tokenKey: String?

    public var tokenType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.nonce != nil {
            map["nonce"] = self.nonce!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.requestTime != nil {
            map["requestTime"] = self.requestTime!
        }
        if self.signature != nil {
            map["signature"] = self.signature!
        }
        if self.tokenKey != nil {
            map["tokenKey"] = self.tokenKey!
        }
        if self.tokenType != nil {
            map["tokenType"] = self.tokenType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["nonce"] as? String {
            self.nonce = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["requestTime"] as? String {
            self.requestTime = value
        }
        if let value = dict["signature"] as? String {
            self.signature = value
        }
        if let value = dict["tokenKey"] as? String {
            self.tokenKey = value
        }
        if let value = dict["tokenType"] as? String {
            self.tokenType = value
        }
    }
}

public class GetTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceName: String?

        public var nonce: String?

        public var productKey: String?

        public var requestIp: String?

        public var responseTime: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceName != nil {
                map["deviceName"] = self.deviceName!
            }
            if self.nonce != nil {
                map["nonce"] = self.nonce!
            }
            if self.productKey != nil {
                map["productKey"] = self.productKey!
            }
            if self.requestIp != nil {
                map["requestIp"] = self.requestIp!
            }
            if self.responseTime != nil {
                map["responseTime"] = self.responseTime!
            }
            if self.signature != nil {
                map["signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["nonce"] as? String {
                self.nonce = value
            }
            if let value = dict["productKey"] as? String {
                self.productKey = value
            }
            if let value = dict["requestIp"] as? String {
                self.requestIp = value
            }
            if let value = dict["responseTime"] as? String {
                self.responseTime = value
            }
            if let value = dict["signature"] as? String {
                self.signature = value
            }
        }
    }
    public var code: String?

    public var data: GetTokenResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HalfLLMAppCallRequest : Tea.TeaModel {
    public var appId: String?

    public var bizParam: [String: String]?

    public var deviceName: String?

    public var modelTypeList: [String]?

    public var productKey: String?

    public var sessionId: String?

    public var tenantId: String?

    public var text: String?

    public override init() {
        super.init()
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
        if self.bizParam != nil {
            map["bizParam"] = self.bizParam!
        }
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.modelTypeList != nil {
            map["modelTypeList"] = self.modelTypeList!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["bizParam"] as? [String: String] {
            self.bizParam = value
        }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["modelTypeList"] as? [String] {
            self.modelTypeList = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
    }
}

public class HalfLLMAppCallShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var bizParamShrink: String?

    public var deviceName: String?

    public var modelTypeListShrink: String?

    public var productKey: String?

    public var sessionId: String?

    public var tenantId: String?

    public var text: String?

    public override init() {
        super.init()
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
        if self.bizParamShrink != nil {
            map["bizParam"] = self.bizParamShrink!
        }
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.modelTypeListShrink != nil {
            map["modelTypeList"] = self.modelTypeListShrink!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["bizParam"] as? String {
            self.bizParamShrink = value
        }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["modelTypeList"] as? String {
            self.modelTypeListShrink = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
    }
}

public class HalfLLMAppCallResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Choices : Tea.TeaModel {
                public class Message : Tea.TeaModel {
                    public var content: String?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.content != nil {
                            map["content"] = self.content!
                        }
                        if self.role != nil {
                            map["role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["content"] as? String {
                            self.content = value
                        }
                        if let value = dict["role"] as? String {
                            self.role = value
                        }
                    }
                }
                public var finishReason: String?

                public var message: HalfLLMAppCallResponseBody.Data.Output.Choices.Message?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.message?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.finishReason != nil {
                        map["finishReason"] = self.finishReason!
                    }
                    if self.message != nil {
                        map["message"] = self.message?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["finishReason"] as? String {
                        self.finishReason = value
                    }
                    if let value = dict["message"] as? [String: Any?] {
                        var model = HalfLLMAppCallResponseBody.Data.Output.Choices.Message()
                        model.fromMap(value)
                        self.message = model
                    }
                }
            }
            public var choices: [HalfLLMAppCallResponseBody.Data.Output.Choices]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.choices != nil {
                    var tmp : [Any] = []
                    for k in self.choices! {
                        tmp.append(k.toMap())
                    }
                    map["choices"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["choices"] as? [Any?] {
                    var tmp : [HalfLLMAppCallResponseBody.Data.Output.Choices] = []
                    for v in value {
                        if v != nil {
                            var model = HalfLLMAppCallResponseBody.Data.Output.Choices()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.choices = tmp
                }
            }
        }
        public class Rt : Tea.TeaModel {
            public var firstRt: Int64?

            public var totalRt: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.firstRt != nil {
                    map["firstRt"] = self.firstRt!
                }
                if self.totalRt != nil {
                    map["totalRt"] = self.totalRt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["firstRt"] as? Int64 {
                    self.firstRt = value
                }
                if let value = dict["totalRt"] as? Int64 {
                    self.totalRt = value
                }
            }
        }
        public class Usages : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
            }
        }
        public var code: String?

        public var message: String?

        public var output: HalfLLMAppCallResponseBody.Data.Output?

        public var requestId: String?

        public var rt: HalfLLMAppCallResponseBody.Data.Rt?

        public var sessionId: String?

        public var usages: HalfLLMAppCallResponseBody.Data.Usages?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.rt?.validate()
            try self.usages?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.rt != nil {
                map["rt"] = self.rt?.toMap()
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.usages != nil {
                map["usages"] = self.usages?.toMap()
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
            if let value = dict["output"] as? [String: Any?] {
                var model = HalfLLMAppCallResponseBody.Data.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["rt"] as? [String: Any?] {
                var model = HalfLLMAppCallResponseBody.Data.Rt()
                model.fromMap(value)
                self.rt = model
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["usages"] as? [String: Any?] {
                var model = HalfLLMAppCallResponseBody.Data.Usages()
                model.fromMap(value)
                self.usages = model
            }
        }
    }
    public var code: String?

    public var data: HalfLLMAppCallResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HalfLLMAppCallResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class HalfLLMAppCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HalfLLMAppCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = HalfLLMAppCallResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HalfLLMChatRequest : Tea.TeaModel {
    public var deviceName: String?

    public var enableSearch: Bool?

    public var inputText: String?

    public var model: String?

    public var productKey: String?

    public var prompt: String?

    public var sessionId: String?

    public var stream: Bool?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.enableSearch != nil {
            map["enableSearch"] = self.enableSearch!
        }
        if self.inputText != nil {
            map["inputText"] = self.inputText!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["enableSearch"] as? Bool {
            self.enableSearch = value
        }
        if let value = dict["inputText"] as? String {
            self.inputText = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class HalfLLMChatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Choices : Tea.TeaModel {
                public class Message : Tea.TeaModel {
                    public var content: String?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.content != nil {
                            map["content"] = self.content!
                        }
                        if self.role != nil {
                            map["role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["content"] as? String {
                            self.content = value
                        }
                        if let value = dict["role"] as? String {
                            self.role = value
                        }
                    }
                }
                public var finishReason: String?

                public var message: HalfLLMChatResponseBody.Data.Output.Choices.Message?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.message?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.finishReason != nil {
                        map["finishReason"] = self.finishReason!
                    }
                    if self.message != nil {
                        map["message"] = self.message?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["finishReason"] as? String {
                        self.finishReason = value
                    }
                    if let value = dict["message"] as? [String: Any?] {
                        var model = HalfLLMChatResponseBody.Data.Output.Choices.Message()
                        model.fromMap(value)
                        self.message = model
                    }
                }
            }
            public var choices: [HalfLLMChatResponseBody.Data.Output.Choices]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.choices != nil {
                    var tmp : [Any] = []
                    for k in self.choices! {
                        tmp.append(k.toMap())
                    }
                    map["choices"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["choices"] as? [Any?] {
                    var tmp : [HalfLLMChatResponseBody.Data.Output.Choices] = []
                    for v in value {
                        if v != nil {
                            var model = HalfLLMChatResponseBody.Data.Output.Choices()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.choices = tmp
                }
            }
        }
        public var code: String?

        public var message: String?

        public var output: HalfLLMChatResponseBody.Data.Output?

        public var requestId: String?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
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
            if let value = dict["output"] as? [String: Any?] {
                var model = HalfLLMChatResponseBody.Data.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var code: String?

    public var data: HalfLLMChatResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HalfLLMChatResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class HalfLLMChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HalfLLMChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = HalfLLMChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HalfLLMImageChatRequest : Tea.TeaModel {
    public var deviceName: String?

    public var enableSearch: Bool?

    public var imageUrl: String?

    public var inputText: String?

    public var model: String?

    public var productKey: String?

    public var prompt: String?

    public var sessionId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.enableSearch != nil {
            map["enableSearch"] = self.enableSearch!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.inputText != nil {
            map["inputText"] = self.inputText!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["enableSearch"] as? Bool {
            self.enableSearch = value
        }
        if let value = dict["imageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["inputText"] as? String {
            self.inputText = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class HalfLLMImageChatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Choices : Tea.TeaModel {
                public class Message : Tea.TeaModel {
                    public var content: String?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.content != nil {
                            map["content"] = self.content!
                        }
                        if self.role != nil {
                            map["role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["content"] as? String {
                            self.content = value
                        }
                        if let value = dict["role"] as? String {
                            self.role = value
                        }
                    }
                }
                public var finishReason: String?

                public var message: HalfLLMImageChatResponseBody.Data.Output.Choices.Message?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.message?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.finishReason != nil {
                        map["finishReason"] = self.finishReason!
                    }
                    if self.message != nil {
                        map["message"] = self.message?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["finishReason"] as? String {
                        self.finishReason = value
                    }
                    if let value = dict["message"] as? [String: Any?] {
                        var model = HalfLLMImageChatResponseBody.Data.Output.Choices.Message()
                        model.fromMap(value)
                        self.message = model
                    }
                }
            }
            public var choices: [HalfLLMImageChatResponseBody.Data.Output.Choices]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.choices != nil {
                    var tmp : [Any] = []
                    for k in self.choices! {
                        tmp.append(k.toMap())
                    }
                    map["choices"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["choices"] as? [Any?] {
                    var tmp : [HalfLLMImageChatResponseBody.Data.Output.Choices] = []
                    for v in value {
                        if v != nil {
                            var model = HalfLLMImageChatResponseBody.Data.Output.Choices()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.choices = tmp
                }
            }
        }
        public class Rt : Tea.TeaModel {
            public var firstRt: Int64?

            public var totalRt: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.firstRt != nil {
                    map["firstRt"] = self.firstRt!
                }
                if self.totalRt != nil {
                    map["totalRt"] = self.totalRt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["firstRt"] as? Int64 {
                    self.firstRt = value
                }
                if let value = dict["totalRt"] as? Int64 {
                    self.totalRt = value
                }
            }
        }
        public class Usages : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
            }
        }
        public var code: String?

        public var message: String?

        public var output: HalfLLMImageChatResponseBody.Data.Output?

        public var requestId: String?

        public var rt: HalfLLMImageChatResponseBody.Data.Rt?

        public var sessionId: String?

        public var usages: HalfLLMImageChatResponseBody.Data.Usages?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.rt?.validate()
            try self.usages?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.rt != nil {
                map["rt"] = self.rt?.toMap()
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.usages != nil {
                map["usages"] = self.usages?.toMap()
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
            if let value = dict["output"] as? [String: Any?] {
                var model = HalfLLMImageChatResponseBody.Data.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["rt"] as? [String: Any?] {
                var model = HalfLLMImageChatResponseBody.Data.Rt()
                model.fromMap(value)
                self.rt = model
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["usages"] as? [String: Any?] {
                var model = HalfLLMImageChatResponseBody.Data.Usages()
                model.fromMap(value)
                self.usages = model
            }
        }
    }
    public var code: String?

    public var data: HalfLLMImageChatResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HalfLLMImageChatResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class HalfLLMImageChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HalfLLMImageChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = HalfLLMImageChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HalfLLMImageOcrRequest : Tea.TeaModel {
    public var deviceName: String?

    public var imageUrl: String?

    public var model: String?

    public var productKey: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["imageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class HalfLLMImageOcrResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Choices : Tea.TeaModel {
                public class Message : Tea.TeaModel {
                    public var content: String?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.content != nil {
                            map["content"] = self.content!
                        }
                        if self.role != nil {
                            map["role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["content"] as? String {
                            self.content = value
                        }
                        if let value = dict["role"] as? String {
                            self.role = value
                        }
                    }
                }
                public var finishReason: String?

                public var message: HalfLLMImageOcrResponseBody.Data.Output.Choices.Message?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.message?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.finishReason != nil {
                        map["finishReason"] = self.finishReason!
                    }
                    if self.message != nil {
                        map["message"] = self.message?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["finishReason"] as? String {
                        self.finishReason = value
                    }
                    if let value = dict["message"] as? [String: Any?] {
                        var model = HalfLLMImageOcrResponseBody.Data.Output.Choices.Message()
                        model.fromMap(value)
                        self.message = model
                    }
                }
            }
            public var choices: [HalfLLMImageOcrResponseBody.Data.Output.Choices]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.choices != nil {
                    var tmp : [Any] = []
                    for k in self.choices! {
                        tmp.append(k.toMap())
                    }
                    map["choices"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["choices"] as? [Any?] {
                    var tmp : [HalfLLMImageOcrResponseBody.Data.Output.Choices] = []
                    for v in value {
                        if v != nil {
                            var model = HalfLLMImageOcrResponseBody.Data.Output.Choices()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.choices = tmp
                }
            }
        }
        public class Rt : Tea.TeaModel {
            public var firstRt: Int64?

            public var totalRt: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.firstRt != nil {
                    map["firstRt"] = self.firstRt!
                }
                if self.totalRt != nil {
                    map["totalRt"] = self.totalRt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["firstRt"] as? Int64 {
                    self.firstRt = value
                }
                if let value = dict["totalRt"] as? Int64 {
                    self.totalRt = value
                }
            }
        }
        public class Usages : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
            }
        }
        public var code: String?

        public var message: String?

        public var output: HalfLLMImageOcrResponseBody.Data.Output?

        public var requestId: String?

        public var rt: HalfLLMImageOcrResponseBody.Data.Rt?

        public var sessionId: String?

        public var usages: HalfLLMImageOcrResponseBody.Data.Usages?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.rt?.validate()
            try self.usages?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.rt != nil {
                map["rt"] = self.rt?.toMap()
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.usages != nil {
                map["usages"] = self.usages?.toMap()
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
            if let value = dict["output"] as? [String: Any?] {
                var model = HalfLLMImageOcrResponseBody.Data.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["rt"] as? [String: Any?] {
                var model = HalfLLMImageOcrResponseBody.Data.Rt()
                model.fromMap(value)
                self.rt = model
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["usages"] as? [String: Any?] {
                var model = HalfLLMImageOcrResponseBody.Data.Usages()
                model.fromMap(value)
                self.usages = model
            }
        }
    }
    public var code: String?

    public var data: HalfLLMImageOcrResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HalfLLMImageOcrResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class HalfLLMImageOcrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HalfLLMImageOcrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = HalfLLMImageOcrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HalfLLMTTSChatRequest : Tea.TeaModel {
    public var deviceName: String?

    public var enableSearch: Bool?

    public var format: String?

    public var model: String?

    public var pitchRate: Int32?

    public var productKey: String?

    public var prompt: String?

    public var sampleRate: Int32?

    public var sessionId: String?

    public var speechRate: Int32?

    public var stream: Bool?

    public var tenantId: String?

    public var text: String?

    public var url: String?

    public var voice: String?

    public var volume: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.enableSearch != nil {
            map["enableSearch"] = self.enableSearch!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.pitchRate != nil {
            map["pitchRate"] = self.pitchRate!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.sampleRate != nil {
            map["sampleRate"] = self.sampleRate!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.speechRate != nil {
            map["speechRate"] = self.speechRate!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        if self.voice != nil {
            map["voice"] = self.voice!
        }
        if self.volume != nil {
            map["volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["enableSearch"] as? Bool {
            self.enableSearch = value
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["pitchRate"] as? Int32 {
            self.pitchRate = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["sampleRate"] as? Int32 {
            self.sampleRate = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["speechRate"] as? Int32 {
            self.speechRate = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
        if let value = dict["voice"] as? String {
            self.voice = value
        }
        if let value = dict["volume"] as? Int32 {
            self.volume = value
        }
    }
}

public class HalfLLMTTSChatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var data: [UInt8]?

        public var message: String?

        public var requestId: String?

        public var sessionId: String?

        public var text: String?

        public override init() {
            super.init()
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
            if self.data != nil {
                map["data"] = self.data!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["data"] as? [UInt8] {
                self.data = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["text"] as? String {
                self.text = value
            }
        }
    }
    public var code: String?

    public var data: HalfLLMTTSChatResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HalfLLMTTSChatResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class HalfLLMTTSChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HalfLLMTTSChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = HalfLLMTTSChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDevicePageRequest : Tea.TeaModel {
    public var deviceName: String?

    public var disableStatus: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var productKey: String?

    public var productName: String?

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
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.disableStatus != nil {
            map["disableStatus"] = self.disableStatus!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["disableStatus"] as? Int32 {
            self.disableStatus = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["productName"] as? String {
            self.productName = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class QueryDevicePageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var activeTime: String?

            public var aliyunUid: String?

            public var batchNo: String?

            public var deviceName: String?

            public var disableStatus: Int32?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var id: Int64?

            public var productKey: String?

            public var productName: String?

            public var remark: String?

            public var status: Int32?

            public var tenantId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeTime != nil {
                    map["activeTime"] = self.activeTime!
                }
                if self.aliyunUid != nil {
                    map["aliyunUid"] = self.aliyunUid!
                }
                if self.batchNo != nil {
                    map["batchNo"] = self.batchNo!
                }
                if self.deviceName != nil {
                    map["deviceName"] = self.deviceName!
                }
                if self.disableStatus != nil {
                    map["disableStatus"] = self.disableStatus!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmtModify"] = self.gmtModify!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.productKey != nil {
                    map["productKey"] = self.productKey!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["activeTime"] as? String {
                    self.activeTime = value
                }
                if let value = dict["aliyunUid"] as? String {
                    self.aliyunUid = value
                }
                if let value = dict["batchNo"] as? String {
                    self.batchNo = value
                }
                if let value = dict["deviceName"] as? String {
                    self.deviceName = value
                }
                if let value = dict["disableStatus"] as? Int32 {
                    self.disableStatus = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModify"] as? String {
                    self.gmtModify = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["productKey"] as? String {
                    self.productKey = value
                }
                if let value = dict["productName"] as? String {
                    self.productName = value
                }
                if let value = dict["remark"] as? String {
                    self.remark = value
                }
                if let value = dict["status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["tenantId"] as? String {
                    self.tenantId = value
                }
            }
        }
        public var data: [QueryDevicePageResponseBody.Data.Data]?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var total: Int64?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            if self.pageIndex != nil {
                map["pageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [QueryDevicePageResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryDevicePageResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["pageIndex"] as? Int32 {
                self.pageIndex = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryDevicePageResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryDevicePageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class QueryDevicePageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDevicePageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDevicePageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryProductPageRequest : Tea.TeaModel {
    public var modelType: [UInt8]?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var productName: String?

    public var tenantId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelType"] as? [UInt8] {
            self.modelType = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["productName"] as? String {
            self.productName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class QueryProductPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var activeLicenseCount: Int64?

            public var apiKey: String?

            public var createTime: String?

            public var description_: String?

            public var licenseCount: Int64?

            public var maxQps: Int32?

            public var productKey: String?

            public var productName: String?

            public var productSecret: String?

            public var tenantId: String?

            public var tokenCount: Int64?

            public var updateTime: String?

            public var usedToken: Int64?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeLicenseCount != nil {
                    map["activeLicenseCount"] = self.activeLicenseCount!
                }
                if self.apiKey != nil {
                    map["apiKey"] = self.apiKey!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.licenseCount != nil {
                    map["licenseCount"] = self.licenseCount!
                }
                if self.maxQps != nil {
                    map["maxQps"] = self.maxQps!
                }
                if self.productKey != nil {
                    map["productKey"] = self.productKey!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.productSecret != nil {
                    map["productSecret"] = self.productSecret!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.tokenCount != nil {
                    map["tokenCount"] = self.tokenCount!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.usedToken != nil {
                    map["usedToken"] = self.usedToken!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["activeLicenseCount"] as? Int64 {
                    self.activeLicenseCount = value
                }
                if let value = dict["apiKey"] as? String {
                    self.apiKey = value
                }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["licenseCount"] as? Int64 {
                    self.licenseCount = value
                }
                if let value = dict["maxQps"] as? Int32 {
                    self.maxQps = value
                }
                if let value = dict["productKey"] as? String {
                    self.productKey = value
                }
                if let value = dict["productName"] as? String {
                    self.productName = value
                }
                if let value = dict["productSecret"] as? String {
                    self.productSecret = value
                }
                if let value = dict["tenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["tokenCount"] as? Int64 {
                    self.tokenCount = value
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["usedToken"] as? Int64 {
                    self.usedToken = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var data: [QueryProductPageResponseBody.Data.Data]?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var total: Int64?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            if self.pageIndex != nil {
                map["pageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [QueryProductPageResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryProductPageResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["pageIndex"] as? Int32 {
                self.pageIndex = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryProductPageResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryProductPageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class QueryProductPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProductPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryProductPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryProductQuotaPageRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var productKey: String?

    public var productName: String?

    public var purchaseTimeEnd: String?

    public var purchaseTimeStart: String?

    public var purchaseType: Int32?

    public var tenantId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.purchaseTimeEnd != nil {
            map["purchaseTimeEnd"] = self.purchaseTimeEnd!
        }
        if self.purchaseTimeStart != nil {
            map["purchaseTimeStart"] = self.purchaseTimeStart!
        }
        if self.purchaseType != nil {
            map["purchaseType"] = self.purchaseType!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["productName"] as? String {
            self.productName = value
        }
        if let value = dict["purchaseTimeEnd"] as? String {
            self.purchaseTimeEnd = value
        }
        if let value = dict["purchaseTimeStart"] as? String {
            self.purchaseTimeStart = value
        }
        if let value = dict["purchaseType"] as? Int32 {
            self.purchaseType = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class QueryProductQuotaPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var createTime: String?

            public var duration: Int32?

            public var durationType: Int32?

            public var expireTime: String?

            public var id: Int64?

            public var ifUnsubscribe: Int32?

            public var ifUsed: Int32?

            public var licenseCount: Int64?

            public var maxQps: Int32?

            public var orderId: String?

            public var productKey: String?

            public var productName: String?

            public var purchaseModel: Int32?

            public var purchaseType: Int32?

            public var settlementFee: Double?

            public var tenantId: String?

            public var tokenNumber: Int64?

            public var unitPrice: Double?

            public var updateTime: String?

            public var userId: String?

            public override init() {
                super.init()
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
                    map["createTime"] = self.createTime!
                }
                if self.duration != nil {
                    map["duration"] = self.duration!
                }
                if self.durationType != nil {
                    map["durationType"] = self.durationType!
                }
                if self.expireTime != nil {
                    map["expireTime"] = self.expireTime!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.ifUnsubscribe != nil {
                    map["ifUnsubscribe"] = self.ifUnsubscribe!
                }
                if self.ifUsed != nil {
                    map["ifUsed"] = self.ifUsed!
                }
                if self.licenseCount != nil {
                    map["licenseCount"] = self.licenseCount!
                }
                if self.maxQps != nil {
                    map["maxQps"] = self.maxQps!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                if self.productKey != nil {
                    map["productKey"] = self.productKey!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.purchaseModel != nil {
                    map["purchaseModel"] = self.purchaseModel!
                }
                if self.purchaseType != nil {
                    map["purchaseType"] = self.purchaseType!
                }
                if self.settlementFee != nil {
                    map["settlementFee"] = self.settlementFee!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.tokenNumber != nil {
                    map["tokenNumber"] = self.tokenNumber!
                }
                if self.unitPrice != nil {
                    map["unitPrice"] = self.unitPrice!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["duration"] as? Int32 {
                    self.duration = value
                }
                if let value = dict["durationType"] as? Int32 {
                    self.durationType = value
                }
                if let value = dict["expireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["ifUnsubscribe"] as? Int32 {
                    self.ifUnsubscribe = value
                }
                if let value = dict["ifUsed"] as? Int32 {
                    self.ifUsed = value
                }
                if let value = dict["licenseCount"] as? Int64 {
                    self.licenseCount = value
                }
                if let value = dict["maxQps"] as? Int32 {
                    self.maxQps = value
                }
                if let value = dict["orderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["productKey"] as? String {
                    self.productKey = value
                }
                if let value = dict["productName"] as? String {
                    self.productName = value
                }
                if let value = dict["purchaseModel"] as? Int32 {
                    self.purchaseModel = value
                }
                if let value = dict["purchaseType"] as? Int32 {
                    self.purchaseType = value
                }
                if let value = dict["settlementFee"] as? Double {
                    self.settlementFee = value
                }
                if let value = dict["tenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["tokenNumber"] as? Int64 {
                    self.tokenNumber = value
                }
                if let value = dict["unitPrice"] as? Double {
                    self.unitPrice = value
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var data: [QueryProductQuotaPageResponseBody.Data.Data]?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var total: Int64?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            if self.pageIndex != nil {
                map["pageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [QueryProductQuotaPageResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryProductQuotaPageResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["pageIndex"] as? Int32 {
                self.pageIndex = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryProductQuotaPageResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryProductQuotaPageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class QueryProductQuotaPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProductQuotaPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryProductQuotaPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTokenUsageRequest : Tea.TeaModel {
    public var endDate: String?

    public var productKey: String?

    public var startDate: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endDate"] as? String {
            self.endDate = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["startDate"] as? String {
            self.startDate = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class QueryTokenUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiKey: String?

        public var inputToken: Int64?

        public var outputToken: Int64?

        public var productKey: String?

        public var productName: String?

        public var tenantId: String?

        public var usageTime: String?

        public override init() {
            super.init()
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
            if self.inputToken != nil {
                map["inputToken"] = self.inputToken!
            }
            if self.outputToken != nil {
                map["outputToken"] = self.outputToken!
            }
            if self.productKey != nil {
                map["productKey"] = self.productKey!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.usageTime != nil {
                map["usageTime"] = self.usageTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["inputToken"] as? Int64 {
                self.inputToken = value
            }
            if let value = dict["outputToken"] as? Int64 {
                self.outputToken = value
            }
            if let value = dict["productKey"] as? String {
                self.productKey = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["usageTime"] as? String {
                self.usageTime = value
            }
        }
    }
    public var code: String?

    public var data: [QueryTokenUsageResponseBody.Data]?

    public var httpStatusCode: String?

    public var message: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [QueryTokenUsageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryTokenUsageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class QueryTokenUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTokenUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryTokenUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeChannelSignResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var channelName: String?

        public var contact: String?

        public var createTime: String?

        public var description_: String?

        public var modifyTime: String?

        public var phone: String?

        public var remark: String?

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
            if self.channelName != nil {
                map["channelName"] = self.channelName!
            }
            if self.contact != nil {
                map["contact"] = self.contact!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.modifyTime != nil {
                map["modifyTime"] = self.modifyTime!
            }
            if self.phone != nil {
                map["phone"] = self.phone!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["channelName"] as? String {
                self.channelName = value
            }
            if let value = dict["contact"] as? String {
                self.contact = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["modifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["phone"] as? String {
                self.phone = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: RevokeChannelSignResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = RevokeChannelSignResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class RevokeChannelSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeChannelSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokeChannelSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeviceStatusRequest : Tea.TeaModel {
    public var deviceName: String?

    public var productKey: String?

    public var remark: String?

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
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class UpdateDeviceStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var message: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class UpdateDeviceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeviceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDeviceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateImageQuotaRequest : Tea.TeaModel {
    public var duration: Int32?

    public var durationType: Int32?

    public var imageCount: Int32?

    public var licenseCount: Int64?

    public var packageType: Int32?

    public var productKey: String?

    public var purchaseType: Int32?

    public var recordId: Int32?

    public var settlementAmount: Double?

    public var tenantId: String?

    public var unitPrice: Double?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.durationType != nil {
            map["durationType"] = self.durationType!
        }
        if self.imageCount != nil {
            map["imageCount"] = self.imageCount!
        }
        if self.licenseCount != nil {
            map["licenseCount"] = self.licenseCount!
        }
        if self.packageType != nil {
            map["packageType"] = self.packageType!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.purchaseType != nil {
            map["purchaseType"] = self.purchaseType!
        }
        if self.recordId != nil {
            map["recordId"] = self.recordId!
        }
        if self.settlementAmount != nil {
            map["settlementAmount"] = self.settlementAmount!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.unitPrice != nil {
            map["unitPrice"] = self.unitPrice!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["durationType"] as? Int32 {
            self.durationType = value
        }
        if let value = dict["imageCount"] as? Int32 {
            self.imageCount = value
        }
        if let value = dict["licenseCount"] as? Int64 {
            self.licenseCount = value
        }
        if let value = dict["packageType"] as? Int32 {
            self.packageType = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["purchaseType"] as? Int32 {
            self.purchaseType = value
        }
        if let value = dict["recordId"] as? Int32 {
            self.recordId = value
        }
        if let value = dict["settlementAmount"] as? Double {
            self.settlementAmount = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["unitPrice"] as? Double {
            self.unitPrice = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class UpdateImageQuotaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: String?

        public var productKey: String?

        public var productName: String?

        public var tenantId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["orderId"] = self.orderId!
            }
            if self.productKey != nil {
                map["productKey"] = self.productKey!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["orderId"] as? String {
                self.orderId = value
            }
            if let value = dict["productKey"] as? String {
                self.productKey = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateImageQuotaResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateImageQuotaResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class UpdateImageQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateImageQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateImageQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateQuotaRequest : Tea.TeaModel {
    public var duration: Int32?

    public var durationType: Int32?

    public var licenseCount: Int64?

    public var maxQps: Int32?

    public var packageType: Int32?

    public var productKey: String?

    public var purchaseType: Int32?

    public var recordId: Int32?

    public var settlementAmount: Double?

    public var tenantId: String?

    public var tokenNumber: Int64?

    public var unitPrice: Double?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.durationType != nil {
            map["durationType"] = self.durationType!
        }
        if self.licenseCount != nil {
            map["licenseCount"] = self.licenseCount!
        }
        if self.maxQps != nil {
            map["maxQps"] = self.maxQps!
        }
        if self.packageType != nil {
            map["packageType"] = self.packageType!
        }
        if self.productKey != nil {
            map["productKey"] = self.productKey!
        }
        if self.purchaseType != nil {
            map["purchaseType"] = self.purchaseType!
        }
        if self.recordId != nil {
            map["recordId"] = self.recordId!
        }
        if self.settlementAmount != nil {
            map["settlementAmount"] = self.settlementAmount!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.tokenNumber != nil {
            map["tokenNumber"] = self.tokenNumber!
        }
        if self.unitPrice != nil {
            map["unitPrice"] = self.unitPrice!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["durationType"] as? Int32 {
            self.durationType = value
        }
        if let value = dict["licenseCount"] as? Int64 {
            self.licenseCount = value
        }
        if let value = dict["maxQps"] as? Int32 {
            self.maxQps = value
        }
        if let value = dict["packageType"] as? Int32 {
            self.packageType = value
        }
        if let value = dict["productKey"] as? String {
            self.productKey = value
        }
        if let value = dict["purchaseType"] as? Int32 {
            self.purchaseType = value
        }
        if let value = dict["recordId"] as? Int32 {
            self.recordId = value
        }
        if let value = dict["settlementAmount"] as? Double {
            self.settlementAmount = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["tokenNumber"] as? Int64 {
            self.tokenNumber = value
        }
        if let value = dict["unitPrice"] as? Double {
            self.unitPrice = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class UpdateQuotaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: String?

        public var productKey: String?

        public var productName: String?

        public var tenantId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["orderId"] = self.orderId!
            }
            if self.productKey != nil {
                map["productKey"] = self.productKey!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["orderId"] as? String {
                self.orderId = value
            }
            if let value = dict["productKey"] as? String {
                self.productKey = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateQuotaResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateQuotaResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class UpdateQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
