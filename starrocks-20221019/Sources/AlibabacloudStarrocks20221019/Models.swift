import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class InstanceConfigDto : Tea.TeaModel {
    public var configKey: String?

    public var configType: String?

    public var configValue: String?

    public var nodeGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configKey != nil {
            map["configKey"] = self.configKey!
        }
        if self.configType != nil {
            map["configType"] = self.configType!
        }
        if self.configValue != nil {
            map["configValue"] = self.configValue!
        }
        if self.nodeGroupId != nil {
            map["nodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configKey"] as? String {
            self.configKey = value
        }
        if let value = dict["configType"] as? String {
            self.configType = value
        }
        if let value = dict["configValue"] as? String {
            self.configValue = value
        }
        if let value = dict["nodeGroupId"] as? String {
            self.nodeGroupId = value
        }
    }
}

public class ResourceSpec : Tea.TeaModel {
    public var cu: Int32?

    public var diskNumber: Int32?

    public var localStorageInstanceType: String?

    public var nodeNumber: Int32?

    public var specType: String?

    public var storagePerformanceLevel: String?

    public var storageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cu != nil {
            map["cu"] = self.cu!
        }
        if self.diskNumber != nil {
            map["diskNumber"] = self.diskNumber!
        }
        if self.localStorageInstanceType != nil {
            map["localStorageInstanceType"] = self.localStorageInstanceType!
        }
        if self.nodeNumber != nil {
            map["nodeNumber"] = self.nodeNumber!
        }
        if self.specType != nil {
            map["specType"] = self.specType!
        }
        if self.storagePerformanceLevel != nil {
            map["storagePerformanceLevel"] = self.storagePerformanceLevel!
        }
        if self.storageSize != nil {
            map["storageSize"] = self.storageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cu"] as? Int32 {
            self.cu = value
        }
        if let value = dict["diskNumber"] as? Int32 {
            self.diskNumber = value
        }
        if let value = dict["localStorageInstanceType"] as? String {
            self.localStorageInstanceType = value
        }
        if let value = dict["nodeNumber"] as? Int32 {
            self.nodeNumber = value
        }
        if let value = dict["specType"] as? String {
            self.specType = value
        }
        if let value = dict["storagePerformanceLevel"] as? String {
            self.storagePerformanceLevel = value
        }
        if let value = dict["storageSize"] as? Int32 {
            self.storageSize = value
        }
    }
}

public class ModifyCuRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyCuResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyCuResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCuResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyCuResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCuPreCheckRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyCuPreCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allow: Bool?

        public var reason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allow != nil {
                map["Allow"] = self.allow!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Allow"] as? Bool {
                self.allow = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: ModifyCuPreCheckResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyCuPreCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyCuPreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCuPreCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyCuPreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskNumberRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyDiskNumberResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyDiskNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDiskNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskPerformanceLevelRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
    }
}

public class ModifyDiskPerformanceLevelResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyDiskPerformanceLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskPerformanceLevelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDiskPerformanceLevelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskSizeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyDiskSizeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyDiskSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskSizeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDiskSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNodeNumberRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyNodeNumberResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyNodeNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodeNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyNodeNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNodeNumberPreCheckRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyNodeNumberPreCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allow: Bool?

        public var reason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allow != nil {
                map["Allow"] = self.allow!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Allow"] as? Bool {
                self.allow = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: ModifyNodeNumberPreCheckResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyNodeNumberPreCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyNodeNumberPreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodeNumberPreCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyNodeNumberPreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUpgradableVersionsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var minor: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.minor != nil {
            map["Minor"] = self.minor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Minor"] as? Bool {
            self.minor = value
        }
    }
}

public class QueryUpgradableVersionsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: [String]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String] {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUpgradableVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUpgradableVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryUpgradableVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ReleaseInstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReleaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReleaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartInstanceRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class RestartInstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RestartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceNameRequest : Tea.TeaModel {
    public var clusterName: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpdateInstanceNameResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeVersionRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var minor: Bool?

    public var targetVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.minor != nil {
            map["Minor"] = self.minor!
        }
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Minor"] as? Bool {
            self.minor = value
        }
        if let value = dict["TargetVersion"] as? String {
            self.targetVersion = value
        }
    }
}

public class UpgradeVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpgradeVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
