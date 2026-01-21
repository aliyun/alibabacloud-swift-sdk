import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetBsnByResourceRequest : Tea.TeaModel {
    public var aliuid: Int64?

    public var resourceId: String?

    public var resourceType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliuid != nil {
            map["aliuid"] = self.aliuid!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliuid"] as? Int64 {
            self.aliuid = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? Int32 {
            self.resourceType = value
        }
    }
}

public class GetBsnByResourceResponseBody : Tea.TeaModel {
    public class Datas : Tea.TeaModel {
        public var bsnDO: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bsnDO != nil {
                map["bsnDO"] = self.bsnDO!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bsnDO"] as? [String] {
                self.bsnDO = value
            }
        }
    }
    public var datas: GetBsnByResourceResponseBody.Datas?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.datas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datas != nil {
            map["datas"] = self.datas?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datas"] as? [String: Any?] {
            var model = GetBsnByResourceResponseBody.Datas()
            model.fromMap(value)
            self.datas = model
        }
    }
}

public class GetBsnByResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBsnByResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBsnByResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantBsnCodeRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var grantToAliuid: Int64?

    public var notes: String?

    public var sn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.grantToAliuid != nil {
            map["GrantToAliuid"] = self.grantToAliuid!
        }
        if self.notes != nil {
            map["Notes"] = self.notes!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["GrantToAliuid"] as? Int64 {
            self.grantToAliuid = value
        }
        if let value = dict["Notes"] as? String {
            self.notes = value
        }
        if let value = dict["Sn"] as? String {
            self.sn = value
        }
    }
}

public class GrantBsnCodeResponseBody : Tea.TeaModel {
    public var aliUid: Int64?

    public var grantToAliuid: Int64?

    public var notes: String?

    public var requestId: String?

    public var sn: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.grantToAliuid != nil {
            map["GrantToAliuid"] = self.grantToAliuid!
        }
        if self.notes != nil {
            map["Notes"] = self.notes!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["GrantToAliuid"] as? Int64 {
            self.grantToAliuid = value
        }
        if let value = dict["Notes"] as? String {
            self.notes = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Sn"] as? String {
            self.sn = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GrantBsnCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantBsnCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GrantBsnCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ProductBindBsnRequest : Tea.TeaModel {
    public var aliuid: Int64?

    public var num: Int32?

    public var resourceId: String?

    public var resourceType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliuid != nil {
            map["aliuid"] = self.aliuid!
        }
        if self.num != nil {
            map["num"] = self.num!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliuid"] as? Int64 {
            self.aliuid = value
        }
        if let value = dict["num"] as? Int32 {
            self.num = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? Int32 {
            self.resourceType = value
        }
    }
}

public class ProductBindBsnResponseBody : Tea.TeaModel {
    public class Datas : Tea.TeaModel {
        public var bsnDO: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bsnDO != nil {
                map["bsnDO"] = self.bsnDO!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bsnDO"] as? [String] {
                self.bsnDO = value
            }
        }
    }
    public var datas: ProductBindBsnResponseBody.Datas?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.datas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datas != nil {
            map["datas"] = self.datas?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datas"] as? [String: Any?] {
            var model = ProductBindBsnResponseBody.Datas()
            model.fromMap(value)
            self.datas = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ProductBindBsnResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProductBindBsnResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ProductBindBsnResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
