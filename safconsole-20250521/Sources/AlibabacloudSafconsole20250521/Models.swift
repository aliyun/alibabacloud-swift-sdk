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

public class DescribeCustomerModuleMetaInfoRequest : Tea.TeaModel {
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

public class DescribeCustomerModuleMetaInfoResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class FeatureList : Tea.TeaModel {
            public var defaultValue: String?

            public var featureName: String?

            public var featureType: String?

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
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.featureName != nil {
                    map["FeatureName"] = self.featureName!
                }
                if self.featureType != nil {
                    map["FeatureType"] = self.featureType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["FeatureName"] as? String {
                    self.featureName = value
                }
                if let value = dict["FeatureType"] as? String {
                    self.featureType = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var featureList: [DescribeCustomerModuleMetaInfoResponseBody.ResultObject.FeatureList]?

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
            if self.featureList != nil {
                var tmp : [Any] = []
                for k in self.featureList! {
                    tmp.append(k.toMap())
                }
                map["FeatureList"] = tmp
            }
            if self.featureTemplate != nil {
                map["FeatureTemplate"] = self.featureTemplate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureList"] as? [Any?] {
                var tmp : [DescribeCustomerModuleMetaInfoResponseBody.ResultObject.FeatureList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCustomerModuleMetaInfoResponseBody.ResultObject.FeatureList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.featureList = tmp
            }
            if let value = dict["FeatureTemplate"] as? String {
                self.featureTemplate = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: DescribeCustomerModuleMetaInfoResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeCustomerModuleMetaInfoResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCustomerModuleMetaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomerModuleMetaInfoResponseBody?

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
            var model = DescribeCustomerModuleMetaInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCustomerModuleOutputInfoRequest : Tea.TeaModel {
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

public class DescribeCustomerModuleOutputInfoResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var finalScoreFormat: String?

        public var processExpression: String?

        public var testFile: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finalScoreFormat != nil {
                map["FinalScoreFormat"] = self.finalScoreFormat!
            }
            if self.processExpression != nil {
                map["ProcessExpression"] = self.processExpression!
            }
            if self.testFile != nil {
                map["TestFile"] = self.testFile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FinalScoreFormat"] as? String {
                self.finalScoreFormat = value
            }
            if let value = dict["ProcessExpression"] as? String {
                self.processExpression = value
            }
            if let value = dict["TestFile"] as? String {
                self.testFile = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var resultObject: DescribeCustomerModuleOutputInfoResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
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
            var model = DescribeCustomerModuleOutputInfoResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCustomerModuleOutputInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomerModuleOutputInfoResponseBody?

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
            var model = DescribeCustomerModuleOutputInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFeatureOptionRequest : Tea.TeaModel {
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
        if self.featureTemplate != nil {
            map["FeatureTemplate"] = self.featureTemplate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureTemplate"] as? String {
            self.featureTemplate = value
        }
    }
}

public class DescribeFeatureOptionResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var featureName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: [DescribeFeatureOptionResponseBody.ResultObject]?

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
            var tmp : [Any] = []
            for k in self.resultObject! {
                tmp.append(k.toMap())
            }
            map["ResultObject"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [Any?] {
            var tmp : [DescribeFeatureOptionResponseBody.ResultObject] = []
            for v in value {
                if v != nil {
                    var model = DescribeFeatureOptionResponseBody.ResultObject()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resultObject = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeFeatureOptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFeatureOptionResponseBody?

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
            var model = DescribeFeatureOptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFeatureTemplateListResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var label: String?

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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: [DescribeFeatureTemplateListResponseBody.ResultObject]?

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
            var tmp : [Any] = []
            for k in self.resultObject! {
                tmp.append(k.toMap())
            }
            map["ResultObject"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [Any?] {
            var tmp : [DescribeFeatureTemplateListResponseBody.ResultObject] = []
            for v in value {
                if v != nil {
                    var model = DescribeFeatureTemplateListResponseBody.ResultObject()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resultObject = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeFeatureTemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFeatureTemplateListResponseBody?

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
            var model = DescribeFeatureTemplateListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeModelFeatureRequest : Tea.TeaModel {
    public var customerModuleId: Int32?

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
        if let value = dict["FeatureTemplate"] as? String {
            self.featureTemplate = value
        }
    }
}

public class DescribeModelFeatureResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var defaultValue: String?

        public var featureName: String?

        public var featureType: String?

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
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.featureType != nil {
                map["FeatureType"] = self.featureType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["FeatureType"] as? String {
                self.featureType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: [DescribeModelFeatureResponseBody.ResultObject]?

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
            var tmp : [Any] = []
            for k in self.resultObject! {
                tmp.append(k.toMap())
            }
            map["ResultObject"] = tmp
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
        if let value = dict["ResultObject"] as? [Any?] {
            var tmp : [DescribeModelFeatureResponseBody.ResultObject] = []
            for v in value {
                if v != nil {
                    var model = DescribeModelFeatureResponseBody.ResultObject()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resultObject = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeModelFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeModelFeatureResponseBody?

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
            var model = DescribeModelFeatureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeModelOssTokenResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var accessId: String?

        public var host: String?

        public var key: String?

        public var policy: String?

        public var signature: String?

        public var XOssSecurityToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.XOssSecurityToken != nil {
                map["XOssSecurityToken"] = self.XOssSecurityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
            if let value = dict["XOssSecurityToken"] as? String {
                self.XOssSecurityToken = value
            }
        }
    }
    public var accessId: String?

    public var code: Int64?

    public var host: String?

    public var httpStatusCode: Int64?

    public var key: String?

    public var policy: String?

    public var requestId: String?

    public var resultObject: DescribeModelOssTokenResponseBody.ResultObject?

    public var signature: String?

    public var success: Bool?

    public var XOssSecurityToken: String?

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
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.XOssSecurityToken != nil {
            map["XOssSecurityToken"] = self.XOssSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessId"] as? String {
            self.accessId = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeModelOssTokenResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Signature"] as? String {
            self.signature = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["XOssSecurityToken"] as? String {
            self.XOssSecurityToken = value
        }
    }
}

public class DescribeModelOssTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeModelOssTokenResponseBody?

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
            var model = DescribeModelOssTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeModuleServiceExistRequest : Tea.TeaModel {
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

public class DescribeModuleServiceExistResponseBody : Tea.TeaModel {
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

public class DescribeModuleServiceExistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeModuleServiceExistResponseBody?

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
            var model = DescribeModuleServiceExistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeModuleStatusRequest : Tea.TeaModel {
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

public class DescribeModuleStatusResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var httpStatusCode: Int64?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
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

public class DescribeModuleStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeModuleStatusResponseBody?

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
            var model = DescribeModuleStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSafRmmpOrderResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var accessible: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessible != nil {
                map["Accessible"] = self.accessible!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Accessible"] as? Bool {
                self.accessible = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: DescribeSafRmmpOrderResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeSafRmmpOrderResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSafRmmpOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSafRmmpOrderResponseBody?

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
            var model = DescribeSafRmmpOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceAndSceneRequest : Tea.TeaModel {
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

public class DescribeServiceAndSceneResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var scene: String?

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
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Scene"] as? String {
                self.scene = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: DescribeServiceAndSceneResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeServiceAndSceneResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeServiceAndSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceAndSceneResponseBody?

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
            var model = DescribeServiceAndSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserModelListRequest : Tea.TeaModel {
    public var authType: String?

    public var currentPage: String?

    public var name: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class DescribeUserModelListResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var authType: String?

        public var customerModuleName: String?

        public var description_: String?

        public var featureTemplate: String?

        public var gmtModified: Int64?

        public var id: Int64?

        public var innerDefineStatus: String?

        public var innerModuleName: String?

        public var isAllowIterate: Bool?

        public var isAllowRollback: Bool?

        public var iterationVersion: Int64?

        public var rootModuleId: Int64?

        public override init() {
            super.init()
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
            if self.customerModuleName != nil {
                map["CustomerModuleName"] = self.customerModuleName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.featureTemplate != nil {
                map["FeatureTemplate"] = self.featureTemplate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.innerDefineStatus != nil {
                map["InnerDefineStatus"] = self.innerDefineStatus!
            }
            if self.innerModuleName != nil {
                map["InnerModuleName"] = self.innerModuleName!
            }
            if self.isAllowIterate != nil {
                map["IsAllowIterate"] = self.isAllowIterate!
            }
            if self.isAllowRollback != nil {
                map["IsAllowRollback"] = self.isAllowRollback!
            }
            if self.iterationVersion != nil {
                map["IterationVersion"] = self.iterationVersion!
            }
            if self.rootModuleId != nil {
                map["RootModuleId"] = self.rootModuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthType"] as? String {
                self.authType = value
            }
            if let value = dict["CustomerModuleName"] as? String {
                self.customerModuleName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FeatureTemplate"] as? String {
                self.featureTemplate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InnerDefineStatus"] as? String {
                self.innerDefineStatus = value
            }
            if let value = dict["InnerModuleName"] as? String {
                self.innerModuleName = value
            }
            if let value = dict["IsAllowIterate"] as? Bool {
                self.isAllowIterate = value
            }
            if let value = dict["IsAllowRollback"] as? Bool {
                self.isAllowRollback = value
            }
            if let value = dict["IterationVersion"] as? Int64 {
                self.iterationVersion = value
            }
            if let value = dict["RootModuleId"] as? Int64 {
                self.rootModuleId = value
            }
        }
    }
    public var code: Int32?

    public var currentPage: Int64?

    public var httpStatusCode: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var resultObject: [DescribeUserModelListResponseBody.ResultObject]?

    public var success: Bool?

    public var totalItem: Int64?

    public var totalPage: Int64?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultObject != nil {
            var tmp : [Any] = []
            for k in self.resultObject! {
                tmp.append(k.toMap())
            }
            map["ResultObject"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalItem != nil {
            map["TotalItem"] = self.totalItem!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [Any?] {
            var tmp : [DescribeUserModelListResponseBody.ResultObject] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserModelListResponseBody.ResultObject()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resultObject = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalItem"] as? Int64 {
            self.totalItem = value
        }
        if let value = dict["TotalPage"] as? Int64 {
            self.totalPage = value
        }
    }
}

public class DescribeUserModelListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserModelListResponseBody?

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
            var model = DescribeUserModelListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DuplicateModelRequest : Tea.TeaModel {
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

public class DuplicateModelResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var httpStatusCode: Int64?

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
        if let value = dict["ResultObject"] as? String {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DuplicateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DuplicateModelResponseBody?

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
            var model = DuplicateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditModelRequest : Tea.TeaModel {
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

public class EditModelResponseBody : Tea.TeaModel {
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

public class EditModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditModelResponseBody?

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
            var model = EditModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IterateModelRequest : Tea.TeaModel {
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

public class IterateModelResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var httpStatusCode: Int64?

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
        if let value = dict["ResultObject"] as? String {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class IterateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IterateModelResponseBody?

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
            var model = IterateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OfflineModelRequest : Tea.TeaModel {
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

public class OfflineModelResponseBody : Tea.TeaModel {
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

public class OfflineModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineModelResponseBody?

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
            var model = OfflineModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OnlineModelRequest : Tea.TeaModel {
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

public class OnlineModelResponseBody : Tea.TeaModel {
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

public class OnlineModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnlineModelResponseBody?

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
            var model = OnlineModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ParseExpressionParametersRequest : Tea.TeaModel {
    public var expression: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
    }
}

public class ParseExpressionParametersResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var params: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.params != nil {
                map["Params"] = self.params!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Params"] as? [String] {
                self.params = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: ParseExpressionParametersResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = ParseExpressionParametersResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ParseExpressionParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ParseExpressionParametersResponseBody?

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
            var model = ParseExpressionParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PrepublishModelRequest : Tea.TeaModel {
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

public class PrepublishModelResponseBody : Tea.TeaModel {
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

public class PrepublishModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PrepublishModelResponseBody?

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
            var model = PrepublishModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RollbackModelRequest : Tea.TeaModel {
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

public class RollbackModelResponseBody : Tea.TeaModel {
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

public class RollbackModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackModelResponseBody?

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
            var model = RollbackModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TestModelRequest : Tea.TeaModel {
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

public class TestModelResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class TestResult : Tea.TeaModel {
            public var actualResult: String?

            public var consistency: Bool?

            public var testResult: String?

            public var trainResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actualResult != nil {
                    map["ActualResult"] = self.actualResult!
                }
                if self.consistency != nil {
                    map["Consistency"] = self.consistency!
                }
                if self.testResult != nil {
                    map["TestResult"] = self.testResult!
                }
                if self.trainResult != nil {
                    map["TrainResult"] = self.trainResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualResult"] as? String {
                    self.actualResult = value
                }
                if let value = dict["Consistency"] as? Bool {
                    self.consistency = value
                }
                if let value = dict["TestResult"] as? String {
                    self.testResult = value
                }
                if let value = dict["TrainResult"] as? String {
                    self.trainResult = value
                }
            }
        }
        public var consistencyCount: Int64?

        public var consistencyRate: Double?

        public var testResult: [TestModelResponseBody.ResultObject.TestResult]?

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
            if self.consistencyCount != nil {
                map["ConsistencyCount"] = self.consistencyCount!
            }
            if self.consistencyRate != nil {
                map["ConsistencyRate"] = self.consistencyRate!
            }
            if self.testResult != nil {
                var tmp : [Any] = []
                for k in self.testResult! {
                    tmp.append(k.toMap())
                }
                map["TestResult"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConsistencyCount"] as? Int64 {
                self.consistencyCount = value
            }
            if let value = dict["ConsistencyRate"] as? Double {
                self.consistencyRate = value
            }
            if let value = dict["TestResult"] as? [Any?] {
                var tmp : [TestModelResponseBody.ResultObject.TestResult] = []
                for v in value {
                    if v != nil {
                        var model = TestModelResponseBody.ResultObject.TestResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.testResult = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: TestModelResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = TestModelResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TestModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestModelResponseBody?

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
            var model = TestModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TestPreModelRequest : Tea.TeaModel {
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

public class TestPreModelResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: [Bool]?

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
        if let value = dict["ResultObject"] as? [Bool] {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TestPreModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestPreModelResponseBody?

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
            var model = TestPreModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TestProcessExpressionRequest : Tea.TeaModel {
    public var expression: String?

    public var params: String?

    public override init() {
        super.init()
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
        if self.params != nil {
            map["Params"] = self.params!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
    }
}

public class TestProcessExpressionResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var score: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: TestProcessExpressionResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = TestProcessExpressionResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TestProcessExpressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestProcessExpressionResponseBody?

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
            var model = TestProcessExpressionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModuleBasicInfoRequest : Tea.TeaModel {
    public var customerModuleId: Int32?

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
        if self.customerModuleId != nil {
            map["CustomerModuleId"] = self.customerModuleId!
        }
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
        if let value = dict["CustomerModuleId"] as? Int32 {
            self.customerModuleId = value
        }
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

public class UpdateModuleBasicInfoResponseBody : Tea.TeaModel {
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

public class UpdateModuleBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModuleBasicInfoResponseBody?

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
            var model = UpdateModuleBasicInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateModelFileRequest : Tea.TeaModel {
    public var filePath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
    }
}

public class ValidateModelFileResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var fileValid: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileValid != nil {
                map["FileValid"] = self.fileValid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileValid"] as? Bool {
                self.fileValid = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: ValidateModelFileResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = ValidateModelFileResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ValidateModelFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateModelFileResponseBody?

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
            var model = ValidateModelFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateTestFileRequest : Tea.TeaModel {
    public var customerModuleId: String?

    public var filePath: String?

    public override init() {
        super.init()
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
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerModuleId"] as? String {
            self.customerModuleId = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
    }
}

public class ValidateTestFileResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var fileValid: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileValid != nil {
                map["FileValid"] = self.fileValid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileValid"] as? Bool {
                self.fileValid = value
            }
        }
    }
    public var code: Int64?

    public var httpStatusCode: Int64?

    public var requestId: String?

    public var resultObject: ValidateTestFileResponseBody.ResultObject?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = ValidateTestFileResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ValidateTestFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateTestFileResponseBody?

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
            var model = ValidateTestFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
