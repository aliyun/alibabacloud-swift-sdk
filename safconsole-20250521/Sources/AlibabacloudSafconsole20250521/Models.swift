import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateCustomerModuleBasicInfoRequest : Tea.TeaModel {
    public var customerModuleName: String?

    public var description_: String?

    public var moduleType: String?

    public var storePath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerModuleName != nil {
            map["CustomerModuleName"] = self.customerModuleName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.moduleType != nil {
            map["ModuleType"] = self.moduleType!
        }
        if self.storePath != nil {
            map["StorePath"] = self.storePath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerModuleName"] as? String {
            self.customerModuleName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ModuleType"] as? String {
            self.moduleType = value
        }
        if let value = dict["StorePath"] as? String {
            self.storePath = value
        }
    }
}

public class CreateCustomerModuleBasicInfoResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var requestId: String?

    public var resultObject: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? String {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateCustomerModuleBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomerModuleBasicInfoResponseBody?

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
            var model = CreateCustomerModuleBasicInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomerModuleMetaInfoRequest : Tea.TeaModel {
    public var customerModuleId: Int32?

    public var featureString: String?

    public var featureTemplate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerModuleId != nil {
            map["CustomerModuleId"] = self.customerModuleId!
        }
        if self.featureString != nil {
            map["FeatureString"] = self.featureString!
        }
        if self.featureTemplate != nil {
            map["FeatureTemplate"] = self.featureTemplate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerModuleId"] as? Int32 {
            self.customerModuleId = value
        }
        if let value = dict["FeatureString"] as? String {
            self.featureString = value
        }
        if let value = dict["FeatureTemplate"] as? String {
            self.featureTemplate = value
        }
    }
}

public class CreateCustomerModuleMetaInfoResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateCustomerModuleMetaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomerModuleMetaInfoResponseBody?

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
            var model = CreateCustomerModuleMetaInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomerModuleOutputInfoRequest : Tea.TeaModel {
    public var customerModuleId: Int32?

    public var finalScoreFormat: String?

    public var processExpression: String?

    public var testFileUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerModuleId != nil {
            map["CustomerModuleId"] = self.customerModuleId!
        }
        if self.finalScoreFormat != nil {
            map["FinalScoreFormat"] = self.finalScoreFormat!
        }
        if self.processExpression != nil {
            map["ProcessExpression"] = self.processExpression!
        }
        if self.testFileUrl != nil {
            map["TestFileUrl"] = self.testFileUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerModuleId"] as? Int32 {
            self.customerModuleId = value
        }
        if let value = dict["FinalScoreFormat"] as? String {
            self.finalScoreFormat = value
        }
        if let value = dict["ProcessExpression"] as? String {
            self.processExpression = value
        }
        if let value = dict["TestFileUrl"] as? String {
            self.testFileUrl = value
        }
    }
}

public class CreateCustomerModuleOutputInfoResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateCustomerModuleOutputInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomerModuleOutputInfoResponseBody?

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
            var model = CreateCustomerModuleOutputInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModelRequest : Tea.TeaModel {
    public var customerModuleId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerModuleId != nil {
            map["CustomerModuleId"] = self.customerModuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerModuleId"] as? Int32 {
            self.customerModuleId = value
        }
    }
}

public class DeleteModelResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelResponseBody?

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
            var model = DeleteModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCustomerModuleBasicInfoRequest : Tea.TeaModel {
    public var authType: String?

    public var customerModuleId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.customerModuleId != nil {
            map["CustomerModuleId"] = self.customerModuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["CustomerModuleId"] as? Int32 {
            self.customerModuleId = value
        }
    }
}

public class DescribeCustomerModuleBasicInfoResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var customerModuleName: String?

        public var description_: String?

        public var innerModuleName: String?

        public var moduleType: String?

        public var storePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customerModuleName != nil {
                map["CustomerModuleName"] = self.customerModuleName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.innerModuleName != nil {
                map["InnerModuleName"] = self.innerModuleName!
            }
            if self.moduleType != nil {
                map["ModuleType"] = self.moduleType!
            }
            if self.storePath != nil {
                map["StorePath"] = self.storePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomerModuleName"] as? String {
                self.customerModuleName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InnerModuleName"] as? String {
                self.innerModuleName = value
            }
            if let value = dict["ModuleType"] as? String {
                self.moduleType = value
            }
            if let value = dict["StorePath"] as? String {
                self.storePath = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var resultObject: DescribeCustomerModuleBasicInfoResponseBody.ResultObject?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeCustomerModuleBasicInfoResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCustomerModuleBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomerModuleBasicInfoResponseBody?

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
            var model = DescribeCustomerModuleBasicInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
