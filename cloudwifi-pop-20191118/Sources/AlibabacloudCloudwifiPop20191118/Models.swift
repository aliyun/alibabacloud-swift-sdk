import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddApListToApgroupRequest : Tea.TeaModel {
    public var apGroupId: String?

    public var apMacList: [String: Any]?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apGroupId != nil {
            map["ApGroupId"] = self.apGroupId!
        }
        if self.apMacList != nil {
            map["ApMacList"] = self.apMacList!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApGroupId"] as? String {
            self.apGroupId = value
        }
        if let value = dict["ApMacList"] as? [String: Any] {
            self.apMacList = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class AddApListToApgroupShrinkRequest : Tea.TeaModel {
    public var apGroupId: String?

    public var apMacListShrink: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apGroupId != nil {
            map["ApGroupId"] = self.apGroupId!
        }
        if self.apMacListShrink != nil {
            map["ApMacList"] = self.apMacListShrink!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApGroupId"] as? String {
            self.apGroupId = value
        }
        if let value = dict["ApMacList"] as? String {
            self.apMacListShrink = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class AddApListToApgroupResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class AddApListToApgroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddApListToApgroupResponseBody?

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
            var model = AddApListToApgroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DelApThirdAppRequest : Tea.TeaModel {
    public var apAssetId: Int64?

    public var appCode: String?

    public var appName: String?

    public var id: Int64?

    public var mac: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apAssetId != nil {
            map["ApAssetId"] = self.apAssetId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApAssetId"] as? Int64 {
            self.apAssetId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
    }
}

public class DelApThirdAppResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DelApThirdAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DelApThirdAppResponseBody?

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
            var model = DelApThirdAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApSsidConfigRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public var radioIndex: String?

    public var ssid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.radioIndex != nil {
            map["RadioIndex"] = self.radioIndex!
        }
        if self.ssid != nil {
            map["Ssid"] = self.ssid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["RadioIndex"] as? String {
            self.radioIndex = value
        }
        if let value = dict["Ssid"] as? String {
            self.ssid = value
        }
    }
}

public class DeleteApSsidConfigResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class DeleteApSsidConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApSsidConfigResponseBody?

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
            var model = DeleteApSsidConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApgroupConfigRequest : Tea.TeaModel {
    public var apGroupUUId: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apGroupUUId != nil {
            map["ApGroupUUId"] = self.apGroupUUId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApGroupUUId"] as? String {
            self.apGroupUUId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class DeleteApgroupConfigResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class DeleteApgroupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApgroupConfigResponseBody?

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
            var model = DeleteApgroupConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApgroupSsidConfigRequest : Tea.TeaModel {
    public var apgroupId: Int64?

    public var appCode: String?

    public var appName: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupId"] as? Int64 {
            self.apgroupId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class DeleteApgroupSsidConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var data: DeleteApgroupSsidConfigResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteApgroupSsidConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteApgroupSsidConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApgroupSsidConfigResponseBody?

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
            var model = DeleteApgroupSsidConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApgroupThirdAppRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class DeleteApgroupThirdAppResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteApgroupThirdAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApgroupThirdAppResponseBody?

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
            var model = DeleteApgroupThirdAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNetDeviceInfoRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var ids: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteNetDeviceInfoResponseBody : Tea.TeaModel {
    public var data: [Int64]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Int64] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteNetDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNetDeviceInfoResponseBody?

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
            var model = DeleteNetDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditApgroupThirdAppRequest : Tea.TeaModel {
    public var apgroupId: Int64?

    public var appCode: String?

    public var appData: String?

    public var appName: String?

    public var applyToSubGroup: Int32?

    public var category: Int32?

    public var configType: String?

    public var id: Int64?

    public var inheritParentGroup: Int32?

    public var thirdAppName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appData != nil {
            map["AppData"] = self.appData!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.applyToSubGroup != nil {
            map["ApplyToSubGroup"] = self.applyToSubGroup!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.configType != nil {
            map["ConfigType"] = self.configType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.inheritParentGroup != nil {
            map["InheritParentGroup"] = self.inheritParentGroup!
        }
        if self.thirdAppName != nil {
            map["ThirdAppName"] = self.thirdAppName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupId"] as? Int64 {
            self.apgroupId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppData"] as? String {
            self.appData = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ApplyToSubGroup"] as? Int32 {
            self.applyToSubGroup = value
        }
        if let value = dict["Category"] as? Int32 {
            self.category = value
        }
        if let value = dict["ConfigType"] as? String {
            self.configType = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InheritParentGroup"] as? Int32 {
            self.inheritParentGroup = value
        }
        if let value = dict["ThirdAppName"] as? String {
            self.thirdAppName = value
        }
    }
}

public class EditApgroupThirdAppResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EditApgroupThirdAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditApgroupThirdAppResponseBody?

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
            var model = EditApgroupThirdAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EffectApConfigRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class EffectApConfigResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class EffectApConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EffectApConfigResponseBody?

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
            var model = EffectApConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EffectApgroupConfigRequest : Tea.TeaModel {
    public var apGroupUUId: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apGroupUUId != nil {
            map["ApGroupUUId"] = self.apGroupUUId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApGroupUUId"] as? String {
            self.apGroupUUId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class EffectApgroupConfigResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class EffectApgroupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EffectApgroupConfigResponseBody?

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
            var model = EffectApgroupConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAntStaStatusByMacRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var staMac: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.staMac != nil {
            map["StaMac"] = self.staMac!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["StaMac"] as? String {
            self.staMac = value
        }
    }
}

public class GetAntStaStatusByMacResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAntStaStatusByMacResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAntStaStatusByMacResponseBody?

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
            var model = GetAntStaStatusByMacResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApAddressByMacRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var language: String?

    public var mac: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
    }
}

public class GetApAddressByMacResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetApAddressByMacResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApAddressByMacResponseBody?

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
            var model = GetApAddressByMacResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApAssetRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class GetApAssetResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetApAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApAssetResponseBody?

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
            var model = GetApAssetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApDetailStatusRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var mac: String?

    public var needApgroupInfo: Bool?

    public var needRadioStatus: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.needApgroupInfo != nil {
            map["NeedApgroupInfo"] = self.needApgroupInfo!
        }
        if self.needRadioStatus != nil {
            map["NeedRadioStatus"] = self.needRadioStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
        if let value = dict["NeedApgroupInfo"] as? Bool {
            self.needApgroupInfo = value
        }
        if let value = dict["NeedRadioStatus"] as? Bool {
            self.needRadioStatus = value
        }
    }
}

public class GetApDetailStatusResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetApDetailStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApDetailStatusResponseBody?

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
            var model = GetApDetailStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApDetailedConfigRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class GetApDetailedConfigResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetApDetailedConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApDetailedConfigResponseBody?

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
            var model = GetApDetailedConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApInfoFromPoolRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class GetApInfoFromPoolResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetApInfoFromPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApInfoFromPoolResponseBody?

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
            var model = GetApInfoFromPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApRunHistoryTimeSerRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public var end: Int64?

    public var start: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
    }
}

public class GetApRunHistoryTimeSerResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetApRunHistoryTimeSerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApRunHistoryTimeSerResponseBody?

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
            var model = GetApRunHistoryTimeSerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApStatusByGroupIdRequest : Tea.TeaModel {
    public var apgroupId: String?

    public var appCode: String?

    public var appName: String?

    public var cursor: Int64?

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
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.cursor != nil {
            map["Cursor"] = self.cursor!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupId"] as? String {
            self.apgroupId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Cursor"] as? Int64 {
            self.cursor = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class GetApStatusByGroupIdResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetApStatusByGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApStatusByGroupIdResponseBody?

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
            var model = GetApStatusByGroupIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApgroupConfigByIdentityRequest : Tea.TeaModel {
    public var apgroupId: Int64?

    public var apgroupUuid: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.apgroupUuid != nil {
            map["ApgroupUuid"] = self.apgroupUuid!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupId"] as? Int64 {
            self.apgroupId = value
        }
        if let value = dict["ApgroupUuid"] as? String {
            self.apgroupUuid = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class GetApgroupConfigByIdentityResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetApgroupConfigByIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApgroupConfigByIdentityResponseBody?

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
            var model = GetApgroupConfigByIdentityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApgroupDetailedConfigRequest : Tea.TeaModel {
    public var apgroupId: Int64?

    public var apgroupUuid: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.apgroupUuid != nil {
            map["ApgroupUuid"] = self.apgroupUuid!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupId"] as? Int64 {
            self.apgroupId = value
        }
        if let value = dict["ApgroupUuid"] as? String {
            self.apgroupUuid = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class GetApgroupDetailedConfigResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetApgroupDetailedConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApgroupDetailedConfigResponseBody?

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
            var model = GetApgroupDetailedConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApgroupIdRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class GetApgroupIdResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetApgroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApgroupIdResponseBody?

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
            var model = GetApgroupIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApgroupSsidConfigRequest : Tea.TeaModel {
    public var apGroupUUId: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apGroupUUId != nil {
            map["ApGroupUUId"] = self.apGroupUUId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApGroupUUId"] as? String {
            self.apGroupUUId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class GetApgroupSsidConfigResponseBody : Tea.TeaModel {
    public var data: [[String: Any]]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetApgroupSsidConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApgroupSsidConfigResponseBody?

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
            var model = GetApgroupSsidConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBatchTaskProgressRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetBatchTaskProgressResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetBatchTaskProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBatchTaskProgressResponseBody?

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
            var model = GetBatchTaskProgressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGroupMiscAggTimeSerRequest : Tea.TeaModel {
    public var apgroupUuid: String?

    public var appCode: String?

    public var appName: String?

    public var end: Int64?

    public var start: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apgroupUuid != nil {
            map["ApgroupUuid"] = self.apgroupUuid!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupUuid"] as? String {
            self.apgroupUuid = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
    }
}

public class GetGroupMiscAggTimeSerResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGroupMiscAggTimeSerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupMiscAggTimeSerResponseBody?

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
            var model = GetGroupMiscAggTimeSerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNetDeviceInfoRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var cursor: Int64?

    public var hostName: String?

    public var id: Int64?

    public var idc: String?

    public var logicNetPod: String?

    public var manufacturer: String?

    public var mgnIp: String?

    public var model: String?

    public var netPod: String?

    public var pageSize: Int32?

    public var password: String?

    public var requestId: String?

    public var role: String?

    public var serviceTag: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.cursor != nil {
            map["Cursor"] = self.cursor!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.idc != nil {
            map["Idc"] = self.idc!
        }
        if self.logicNetPod != nil {
            map["LogicNetPod"] = self.logicNetPod!
        }
        if self.manufacturer != nil {
            map["Manufacturer"] = self.manufacturer!
        }
        if self.mgnIp != nil {
            map["MgnIp"] = self.mgnIp!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.netPod != nil {
            map["NetPod"] = self.netPod!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.serviceTag != nil {
            map["ServiceTag"] = self.serviceTag!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Cursor"] as? Int64 {
            self.cursor = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Idc"] as? String {
            self.idc = value
        }
        if let value = dict["LogicNetPod"] as? String {
            self.logicNetPod = value
        }
        if let value = dict["Manufacturer"] as? String {
            self.manufacturer = value
        }
        if let value = dict["MgnIp"] as? String {
            self.mgnIp = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NetPod"] as? String {
            self.netPod = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["ServiceTag"] as? String {
            self.serviceTag = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class GetNetDeviceInfoResponseBody : Tea.TeaModel {
    public var data: [[String: Any]]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNetDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNetDeviceInfoResponseBody?

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
            var model = GetNetDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNetDeviceInfoWithSizeRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var cursor: Int64?

    public var hostName: String?

    public var id: Int64?

    public var idc: String?

    public var logicNetPod: String?

    public var manufacturer: String?

    public var mgnIp: String?

    public var model: String?

    public var netPod: String?

    public var pageSize: Int32?

    public var password: String?

    public var requestId: String?

    public var role: String?

    public var serviceTag: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.cursor != nil {
            map["Cursor"] = self.cursor!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.idc != nil {
            map["Idc"] = self.idc!
        }
        if self.logicNetPod != nil {
            map["LogicNetPod"] = self.logicNetPod!
        }
        if self.manufacturer != nil {
            map["Manufacturer"] = self.manufacturer!
        }
        if self.mgnIp != nil {
            map["MgnIp"] = self.mgnIp!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.netPod != nil {
            map["NetPod"] = self.netPod!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.serviceTag != nil {
            map["ServiceTag"] = self.serviceTag!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Cursor"] as? Int64 {
            self.cursor = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Idc"] as? String {
            self.idc = value
        }
        if let value = dict["LogicNetPod"] as? String {
            self.logicNetPod = value
        }
        if let value = dict["Manufacturer"] as? String {
            self.manufacturer = value
        }
        if let value = dict["MgnIp"] as? String {
            self.mgnIp = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NetPod"] as? String {
            self.netPod = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["ServiceTag"] as? String {
            self.serviceTag = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class GetNetDeviceInfoWithSizeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int64?

        public var data: [[String: Any]]?

        public override init() {
            super.init()
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
            if self.data != nil {
                map["Data"] = self.data!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Data"] as? [[String: Any]] {
                self.data = value
            }
        }
    }
    public var data: GetNetDeviceInfoWithSizeResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetNetDeviceInfoWithSizeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNetDeviceInfoWithSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNetDeviceInfoWithSizeResponseBody?

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
            var model = GetNetDeviceInfoWithSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPageVisitDataRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var endTime: String?

    public var PId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.PId != nil {
            map["PId"] = self.PId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PId"] as? String {
            self.PId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetPageVisitDataResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPageVisitDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPageVisitDataResponseBody?

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
            var model = GetPageVisitDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRadioRunHistoryTimeSerRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public var end: Int64?

    public var start: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
    }
}

public class GetRadioRunHistoryTimeSerResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRadioRunHistoryTimeSerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRadioRunHistoryTimeSerResponseBody?

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
            var model = GetRadioRunHistoryTimeSerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStaDetailedStatusByMacRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var staMac: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.staMac != nil {
            map["StaMac"] = self.staMac!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["StaMac"] as? String {
            self.staMac = value
        }
    }
}

public class GetStaDetailedStatusByMacResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetStaDetailedStatusByMacResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStaDetailedStatusByMacResponseBody?

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
            var model = GetStaDetailedStatusByMacResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStaStatusListByApRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public var cursor: Int64?

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
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.cursor != nil {
            map["Cursor"] = self.cursor!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Cursor"] as? Int64 {
            self.cursor = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class GetStaStatusListByApResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class GetStaStatusListByApResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStaStatusListByApResponseBody?

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
            var model = GetStaStatusListByApResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class JudgeXingTianBusinessRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var realmId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.realmId != nil {
            map["RealmId"] = self.realmId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["RealmId"] as? String {
            self.realmId = value
        }
    }
}

public class JudgeXingTianBusinessResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class JudgeXingTianBusinessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JudgeXingTianBusinessResponseBody?

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
            var model = JudgeXingTianBusinessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KickAntStaRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var staMac: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.staMac != nil {
            map["StaMac"] = self.staMac!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["StaMac"] as? String {
            self.staMac = value
        }
    }
}

public class KickAntStaResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class KickAntStaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KickAntStaResponseBody?

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
            var model = KickAntStaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KickStaRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var staMac: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.staMac != nil {
            map["StaMac"] = self.staMac!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["StaMac"] as? String {
            self.staMac = value
        }
    }
}

public class KickStaResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class KickStaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KickStaResponseBody?

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
            var model = KickStaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApgroupDescendantRequest : Tea.TeaModel {
    public var apgroupId: Int64?

    public var apgroupUuid: String?

    public var appCode: String?

    public var appName: String?

    public var cursor: Int64?

    public var level: Int64?

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
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.apgroupUuid != nil {
            map["ApgroupUuid"] = self.apgroupUuid!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.cursor != nil {
            map["Cursor"] = self.cursor!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupId"] as? Int64 {
            self.apgroupId = value
        }
        if let value = dict["ApgroupUuid"] as? String {
            self.apgroupUuid = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Cursor"] as? Int64 {
            self.cursor = value
        }
        if let value = dict["Level"] as? Int64 {
            self.level = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListApgroupDescendantResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListApgroupDescendantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApgroupDescendantResponseBody?

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
            var model = ListApgroupDescendantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobOrdersRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var changingType: String?

    public var clientSystem: String?

    public var clientUniqueId: String?

    public var cursor: Int64?

    public var endTime: String?

    public var handler: String?

    public var id: String?

    public var orderStatus: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var startTime: String?

    public var status: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.changingType != nil {
            map["ChangingType"] = self.changingType!
        }
        if self.clientSystem != nil {
            map["ClientSystem"] = self.clientSystem!
        }
        if self.clientUniqueId != nil {
            map["ClientUniqueId"] = self.clientUniqueId!
        }
        if self.cursor != nil {
            map["Cursor"] = self.cursor!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.handler != nil {
            map["Handler"] = self.handler!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ChangingType"] as? String {
            self.changingType = value
        }
        if let value = dict["ClientSystem"] as? String {
            self.clientSystem = value
        }
        if let value = dict["ClientUniqueId"] as? String {
            self.clientUniqueId = value
        }
        if let value = dict["Cursor"] as? Int64 {
            self.cursor = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Handler"] as? String {
            self.handler = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["OrderStatus"] as? String {
            self.orderStatus = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class ListJobOrdersResponseBody : Tea.TeaModel {
    public var data: [[String: Any]]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListJobOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobOrdersResponseBody?

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
            var model = ListJobOrdersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobOrdersWithSizeRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var changingType: String?

    public var clientSystem: String?

    public var clientUniqueId: String?

    public var cursor: Int64?

    public var endTime: String?

    public var handler: String?

    public var id: String?

    public var orderStatus: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var startTime: String?

    public var status: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.changingType != nil {
            map["ChangingType"] = self.changingType!
        }
        if self.clientSystem != nil {
            map["ClientSystem"] = self.clientSystem!
        }
        if self.clientUniqueId != nil {
            map["ClientUniqueId"] = self.clientUniqueId!
        }
        if self.cursor != nil {
            map["Cursor"] = self.cursor!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.handler != nil {
            map["Handler"] = self.handler!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ChangingType"] as? String {
            self.changingType = value
        }
        if let value = dict["ClientSystem"] as? String {
            self.clientSystem = value
        }
        if let value = dict["ClientUniqueId"] as? String {
            self.clientUniqueId = value
        }
        if let value = dict["Cursor"] as? Int64 {
            self.cursor = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Handler"] as? String {
            self.handler = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["OrderStatus"] as? String {
            self.orderStatus = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class ListJobOrdersWithSizeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int64?

        public var data: [[String: Any]]?

        public override init() {
            super.init()
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
            if self.data != nil {
                map["Data"] = self.data!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Data"] as? [[String: Any]] {
                self.data = value
            }
        }
    }
    public var data: ListJobOrdersWithSizeResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListJobOrdersWithSizeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListJobOrdersWithSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobOrdersWithSizeResponseBody?

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
            var model = ListJobOrdersWithSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class NewApgroupConfigRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var name: String?

    public var parentApgroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentApgroupId != nil {
            map["ParentApgroupId"] = self.parentApgroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParentApgroupId"] as? String {
            self.parentApgroupId = value
        }
    }
}

public class NewApgroupConfigResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class NewApgroupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NewApgroupConfigResponseBody?

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
            var model = NewApgroupConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class NewJobOrderRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var callbackUrl: String?

    public var changeType: String?

    public var clientSystem: String?

    public var clientUniqueId: String?

    public var creator: String?

    public var params: [String: Any]?

    public var referUrl: String?

    public var requestId: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.changeType != nil {
            map["ChangeType"] = self.changeType!
        }
        if self.clientSystem != nil {
            map["ClientSystem"] = self.clientSystem!
        }
        if self.clientUniqueId != nil {
            map["ClientUniqueId"] = self.clientUniqueId!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.referUrl != nil {
            map["ReferUrl"] = self.referUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["ChangeType"] as? String {
            self.changeType = value
        }
        if let value = dict["ClientSystem"] as? String {
            self.clientSystem = value
        }
        if let value = dict["ClientUniqueId"] as? String {
            self.clientUniqueId = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Params"] as? [String: Any] {
            self.params = value
        }
        if let value = dict["ReferUrl"] as? String {
            self.referUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class NewJobOrderShrinkRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var callbackUrl: String?

    public var changeType: String?

    public var clientSystem: String?

    public var clientUniqueId: String?

    public var creator: String?

    public var paramsShrink: String?

    public var referUrl: String?

    public var requestId: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.changeType != nil {
            map["ChangeType"] = self.changeType!
        }
        if self.clientSystem != nil {
            map["ClientSystem"] = self.clientSystem!
        }
        if self.clientUniqueId != nil {
            map["ClientUniqueId"] = self.clientUniqueId!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.paramsShrink != nil {
            map["Params"] = self.paramsShrink!
        }
        if self.referUrl != nil {
            map["ReferUrl"] = self.referUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["ChangeType"] as? String {
            self.changeType = value
        }
        if let value = dict["ClientSystem"] as? String {
            self.clientSystem = value
        }
        if let value = dict["ClientUniqueId"] as? String {
            self.clientUniqueId = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Params"] as? String {
            self.paramsShrink = value
        }
        if let value = dict["ReferUrl"] as? String {
            self.referUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class NewJobOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
        }
    }
    public var data: NewJobOrderResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = NewJobOrderResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class NewJobOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NewJobOrderResponseBody?

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
            var model = NewJobOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class NewNetDeviceInfoRequest : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var hostName: String?

        public var idc: String?

        public var logicNetPod: String?

        public var manufacturer: String?

        public var mgnIp: String?

        public var model: String?

        public var netPod: String?

        public var password: String?

        public var role: String?

        public var serviceTag: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.idc != nil {
                map["Idc"] = self.idc!
            }
            if self.logicNetPod != nil {
                map["LogicNetPod"] = self.logicNetPod!
            }
            if self.manufacturer != nil {
                map["Manufacturer"] = self.manufacturer!
            }
            if self.mgnIp != nil {
                map["MgnIp"] = self.mgnIp!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.netPod != nil {
                map["NetPod"] = self.netPod!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.serviceTag != nil {
                map["ServiceTag"] = self.serviceTag!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["Idc"] as? String {
                self.idc = value
            }
            if let value = dict["LogicNetPod"] as? String {
                self.logicNetPod = value
            }
            if let value = dict["Manufacturer"] as? String {
                self.manufacturer = value
            }
            if let value = dict["MgnIp"] as? String {
                self.mgnIp = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NetPod"] as? String {
                self.netPod = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["ServiceTag"] as? String {
                self.serviceTag = value
            }
            if let value = dict["Username"] as? String {
                self.username = value
            }
        }
    }
    public var appCode: String?

    public var appName: String?

    public var devices: [NewNetDeviceInfoRequest.Devices]?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Devices"] as? [Any?] {
            var tmp : [NewNetDeviceInfoRequest.Devices] = []
            for v in value {
                if v != nil {
                    var model = NewNetDeviceInfoRequest.Devices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.devices = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class NewNetDeviceInfoResponseBody : Tea.TeaModel {
    public var data: [Int64]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Int64] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class NewNetDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NewNetDeviceInfoResponseBody?

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
            var model = NewNetDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutAppConfigAndSaveRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public var configureType: String?

    public var currentTime: Int64?

    public var data: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.configureType != nil {
            map["ConfigureType"] = self.configureType!
        }
        if self.currentTime != nil {
            map["CurrentTime"] = self.currentTime!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ConfigureType"] as? String {
            self.configureType = value
        }
        if let value = dict["CurrentTime"] as? Int64 {
            self.currentTime = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
    }
}

public class PutAppConfigAndSaveResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PutAppConfigAndSaveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutAppConfigAndSaveResponseBody?

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
            var model = PutAppConfigAndSaveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryJobOrderRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var orderId: Int64?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryJobOrderResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryJobOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryJobOrderResponseBody?

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
            var model = QueryJobOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RebootApRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
    }
}

public class RebootApResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RebootApResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootApResponseBody?

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
            var model = RebootApResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterApAssetRequest : Tea.TeaModel {
    public var apGroupUUId: String?

    public var appCode: String?

    public var appName: String?

    public var id: Int64?

    public var mac: String?

    public var serialNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apGroupUUId != nil {
            map["ApGroupUUId"] = self.apGroupUUId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApGroupUUId"] as? String {
            self.apGroupUUId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
    }
}

public class RegisterApAssetResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RegisterApAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterApAssetResponseBody?

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
            var model = RegisterApAssetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RepairApRadioRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

    public var radioIndex: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.radioIndex != nil {
            map["RadioIndex"] = self.radioIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["RadioIndex"] as? String {
            self.radioIndex = value
        }
    }
}

public class RepairApRadioResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Bool?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Bool {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RepairApRadioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RepairApRadioResponseBody?

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
            var model = RepairApRadioResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveApBasicConfigRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var country: String?

    public var dai: String?

    public var description_: String?

    public var echoInt: Int32?

    public var failover: Int32?

    public var id: Int64?

    public var insecureAllowed: Int32?

    public var lanIp: String?

    public var lanMask: String?

    public var lanStatus: Int32?

    public var logIp: String?

    public var logLevel: Int32?

    public var name: String?

    public var passwd: String?

    public var protocol_: String?

    public var route: String?

    public var scan: Int32?

    public var tokenServer: String?

    public var vpn: String?

    public var workMode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.dai != nil {
            map["Dai"] = self.dai!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.echoInt != nil {
            map["EchoInt"] = self.echoInt!
        }
        if self.failover != nil {
            map["Failover"] = self.failover!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.insecureAllowed != nil {
            map["InsecureAllowed"] = self.insecureAllowed!
        }
        if self.lanIp != nil {
            map["LanIp"] = self.lanIp!
        }
        if self.lanMask != nil {
            map["LanMask"] = self.lanMask!
        }
        if self.lanStatus != nil {
            map["LanStatus"] = self.lanStatus!
        }
        if self.logIp != nil {
            map["LogIp"] = self.logIp!
        }
        if self.logLevel != nil {
            map["LogLevel"] = self.logLevel!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.passwd != nil {
            map["Passwd"] = self.passwd!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.route != nil {
            map["Route"] = self.route!
        }
        if self.scan != nil {
            map["Scan"] = self.scan!
        }
        if self.tokenServer != nil {
            map["TokenServer"] = self.tokenServer!
        }
        if self.vpn != nil {
            map["Vpn"] = self.vpn!
        }
        if self.workMode != nil {
            map["WorkMode"] = self.workMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["Dai"] as? String {
            self.dai = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EchoInt"] as? Int32 {
            self.echoInt = value
        }
        if let value = dict["Failover"] as? Int32 {
            self.failover = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InsecureAllowed"] as? Int32 {
            self.insecureAllowed = value
        }
        if let value = dict["LanIp"] as? String {
            self.lanIp = value
        }
        if let value = dict["LanMask"] as? String {
            self.lanMask = value
        }
        if let value = dict["LanStatus"] as? Int32 {
            self.lanStatus = value
        }
        if let value = dict["LogIp"] as? String {
            self.logIp = value
        }
        if let value = dict["LogLevel"] as? Int32 {
            self.logLevel = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Passwd"] as? String {
            self.passwd = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["Route"] as? String {
            self.route = value
        }
        if let value = dict["Scan"] as? Int32 {
            self.scan = value
        }
        if let value = dict["TokenServer"] as? String {
            self.tokenServer = value
        }
        if let value = dict["Vpn"] as? String {
            self.vpn = value
        }
        if let value = dict["WorkMode"] as? Int32 {
            self.workMode = value
        }
    }
}

public class SaveApBasicConfigResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SaveApBasicConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveApBasicConfigResponseBody?

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
            var model = SaveApBasicConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveApPortalConfigRequest : Tea.TeaModel {
    public var apConfigId: Int64?

    public var appAuthUrl: String?

    public var appCode: String?

    public var appName: String?

    public var authKey: String?

    public var authSecret: String?

    public var checkUrl: String?

    public var clientDownload: Int32?

    public var clientUpload: Int32?

    public var countdown: Int32?

    public var network: Int32?

    public var portalTypes: [String]?

    public var portalUrl: String?

    public var timeStamp: Int64?

    public var totalDownload: Int32?

    public var totalUpload: Int32?

    public var webAuthUrl: String?

    public var whitelist: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apConfigId != nil {
            map["ApConfigId"] = self.apConfigId!
        }
        if self.appAuthUrl != nil {
            map["AppAuthUrl"] = self.appAuthUrl!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSecret != nil {
            map["AuthSecret"] = self.authSecret!
        }
        if self.checkUrl != nil {
            map["CheckUrl"] = self.checkUrl!
        }
        if self.clientDownload != nil {
            map["ClientDownload"] = self.clientDownload!
        }
        if self.clientUpload != nil {
            map["ClientUpload"] = self.clientUpload!
        }
        if self.countdown != nil {
            map["Countdown"] = self.countdown!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.portalTypes != nil {
            map["PortalTypes"] = self.portalTypes!
        }
        if self.portalUrl != nil {
            map["PortalUrl"] = self.portalUrl!
        }
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        if self.totalDownload != nil {
            map["TotalDownload"] = self.totalDownload!
        }
        if self.totalUpload != nil {
            map["TotalUpload"] = self.totalUpload!
        }
        if self.webAuthUrl != nil {
            map["WebAuthUrl"] = self.webAuthUrl!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApConfigId"] as? Int64 {
            self.apConfigId = value
        }
        if let value = dict["AppAuthUrl"] as? String {
            self.appAuthUrl = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSecret"] as? String {
            self.authSecret = value
        }
        if let value = dict["CheckUrl"] as? String {
            self.checkUrl = value
        }
        if let value = dict["ClientDownload"] as? Int32 {
            self.clientDownload = value
        }
        if let value = dict["ClientUpload"] as? Int32 {
            self.clientUpload = value
        }
        if let value = dict["Countdown"] as? Int32 {
            self.countdown = value
        }
        if let value = dict["Network"] as? Int32 {
            self.network = value
        }
        if let value = dict["PortalTypes"] as? [String] {
            self.portalTypes = value
        }
        if let value = dict["PortalUrl"] as? String {
            self.portalUrl = value
        }
        if let value = dict["TimeStamp"] as? Int64 {
            self.timeStamp = value
        }
        if let value = dict["TotalDownload"] as? Int32 {
            self.totalDownload = value
        }
        if let value = dict["TotalUpload"] as? Int32 {
            self.totalUpload = value
        }
        if let value = dict["WebAuthUrl"] as? String {
            self.webAuthUrl = value
        }
        if let value = dict["Whitelist"] as? String {
            self.whitelist = value
        }
    }
}

public class SaveApPortalConfigShrinkRequest : Tea.TeaModel {
    public var apConfigId: Int64?

    public var appAuthUrl: String?

    public var appCode: String?

    public var appName: String?

    public var authKey: String?

    public var authSecret: String?

    public var checkUrl: String?

    public var clientDownload: Int32?

    public var clientUpload: Int32?

    public var countdown: Int32?

    public var network: Int32?

    public var portalTypesShrink: String?

    public var portalUrl: String?

    public var timeStamp: Int64?

    public var totalDownload: Int32?

    public var totalUpload: Int32?

    public var webAuthUrl: String?

    public var whitelist: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apConfigId != nil {
            map["ApConfigId"] = self.apConfigId!
        }
        if self.appAuthUrl != nil {
            map["AppAuthUrl"] = self.appAuthUrl!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSecret != nil {
            map["AuthSecret"] = self.authSecret!
        }
        if self.checkUrl != nil {
            map["CheckUrl"] = self.checkUrl!
        }
        if self.clientDownload != nil {
            map["ClientDownload"] = self.clientDownload!
        }
        if self.clientUpload != nil {
            map["ClientUpload"] = self.clientUpload!
        }
        if self.countdown != nil {
            map["Countdown"] = self.countdown!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.portalTypesShrink != nil {
            map["PortalTypes"] = self.portalTypesShrink!
        }
        if self.portalUrl != nil {
            map["PortalUrl"] = self.portalUrl!
        }
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        if self.totalDownload != nil {
            map["TotalDownload"] = self.totalDownload!
        }
        if self.totalUpload != nil {
            map["TotalUpload"] = self.totalUpload!
        }
        if self.webAuthUrl != nil {
            map["WebAuthUrl"] = self.webAuthUrl!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApConfigId"] as? Int64 {
            self.apConfigId = value
        }
        if let value = dict["AppAuthUrl"] as? String {
            self.appAuthUrl = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSecret"] as? String {
            self.authSecret = value
        }
        if let value = dict["CheckUrl"] as? String {
            self.checkUrl = value
        }
        if let value = dict["ClientDownload"] as? Int32 {
            self.clientDownload = value
        }
        if let value = dict["ClientUpload"] as? Int32 {
            self.clientUpload = value
        }
        if let value = dict["Countdown"] as? Int32 {
            self.countdown = value
        }
        if let value = dict["Network"] as? Int32 {
            self.network = value
        }
        if let value = dict["PortalTypes"] as? String {
            self.portalTypesShrink = value
        }
        if let value = dict["PortalUrl"] as? String {
            self.portalUrl = value
        }
        if let value = dict["TimeStamp"] as? Int64 {
            self.timeStamp = value
        }
        if let value = dict["TotalDownload"] as? Int32 {
            self.totalDownload = value
        }
        if let value = dict["TotalUpload"] as? Int32 {
            self.totalUpload = value
        }
        if let value = dict["WebAuthUrl"] as? String {
            self.webAuthUrl = value
        }
        if let value = dict["Whitelist"] as? String {
            self.whitelist = value
        }
    }
}

public class SaveApPortalConfigResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SaveApPortalConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveApPortalConfigResponseBody?

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
            var model = SaveApPortalConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveApRadioConfigRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var bcastRate: Int32?

    public var beaconInt: Int32?

    public var channel: String?

    public var disabled: String?

    public var frag: Int32?

    public var htmode: String?

    public var hwmode: String?

    public var id: Int64?

    public var mcastRate: Int32?

    public var mgmtRate: Int32?

    public var minrate: Int32?

    public var noscan: String?

    public var probereq: String?

    public var requireMode: String?

    public var rts: Int32?

    public var shortgi: String?

    public var txpower: String?

    public var uapsd: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bcastRate != nil {
            map["BcastRate"] = self.bcastRate!
        }
        if self.beaconInt != nil {
            map["BeaconInt"] = self.beaconInt!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.frag != nil {
            map["Frag"] = self.frag!
        }
        if self.htmode != nil {
            map["Htmode"] = self.htmode!
        }
        if self.hwmode != nil {
            map["Hwmode"] = self.hwmode!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mcastRate != nil {
            map["McastRate"] = self.mcastRate!
        }
        if self.mgmtRate != nil {
            map["MgmtRate"] = self.mgmtRate!
        }
        if self.minrate != nil {
            map["Minrate"] = self.minrate!
        }
        if self.noscan != nil {
            map["Noscan"] = self.noscan!
        }
        if self.probereq != nil {
            map["Probereq"] = self.probereq!
        }
        if self.requireMode != nil {
            map["RequireMode"] = self.requireMode!
        }
        if self.rts != nil {
            map["Rts"] = self.rts!
        }
        if self.shortgi != nil {
            map["Shortgi"] = self.shortgi!
        }
        if self.txpower != nil {
            map["Txpower"] = self.txpower!
        }
        if self.uapsd != nil {
            map["Uapsd"] = self.uapsd!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BcastRate"] as? Int32 {
            self.bcastRate = value
        }
        if let value = dict["BeaconInt"] as? Int32 {
            self.beaconInt = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["Disabled"] as? String {
            self.disabled = value
        }
        if let value = dict["Frag"] as? Int32 {
            self.frag = value
        }
        if let value = dict["Htmode"] as? String {
            self.htmode = value
        }
        if let value = dict["Hwmode"] as? String {
            self.hwmode = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["McastRate"] as? Int32 {
            self.mcastRate = value
        }
        if let value = dict["MgmtRate"] as? Int32 {
            self.mgmtRate = value
        }
        if let value = dict["Minrate"] as? Int32 {
            self.minrate = value
        }
        if let value = dict["Noscan"] as? String {
            self.noscan = value
        }
        if let value = dict["Probereq"] as? String {
            self.probereq = value
        }
        if let value = dict["RequireMode"] as? String {
            self.requireMode = value
        }
        if let value = dict["Rts"] as? Int32 {
            self.rts = value
        }
        if let value = dict["Shortgi"] as? String {
            self.shortgi = value
        }
        if let value = dict["Txpower"] as? String {
            self.txpower = value
        }
        if let value = dict["Uapsd"] as? Int32 {
            self.uapsd = value
        }
    }
}

public class SaveApRadioConfigResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SaveApRadioConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveApRadioConfigResponseBody?

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
            var model = SaveApRadioConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveApSsidConfigRequest : Tea.TeaModel {
    public var acctPort: Int32?

    public var acctSecret: String?

    public var acctServer: String?

    public var acctStatusServerWork: Int32?

    public var apAssetId: Int64?

    public var appCode: String?

    public var appName: String?

    public var arpProxyEnable: Int32?

    public var authCache: String?

    public var authPort: Int32?

    public var authSecret: String?

    public var authServer: String?

    public var authStatusServerWork: Int32?

    public var cir: Int64?

    public var cirStep: Int64?

    public var cirType: Int32?

    public var cirUl: Int64?

    public var daeClient: String?

    public var daePort: Int32?

    public var daeSecret: String?

    public var disabled: String?

    public var disassocLowAck: String?

    public var disassocWeakRssi: Int32?

    public var dynamicVlan: Int32?

    public var encKey: String?

    public var encryption: String?

    public var fourthAuthPort: Int32?

    public var fourthAuthSecret: String?

    public var fourthAuthServer: String?

    public var ftOverDs: Int32?

    public var hidden: String?

    public var id: Int64?

    public var ieee80211r: Int32?

    public var ieee80211w: String?

    public var ignoreWeakProbe: Int32?

    public var isolate: String?

    public var liteEffect: Bool?

    public var mac: String?

    public var maxInactivity: Int32?

    public var maxassoc: Int32?

    public var mobilityDomain: String?

    public var multicastForward: Int32?

    public var nasid: String?

    public var ndProxyWork: Int32?

    public var network: Int32?

    public var ownip: String?

    public var radioIndex: String?

    public var secondaryAcctPort: Int32?

    public var secondaryAcctSecret: String?

    public var secondaryAcctServer: String?

    public var secondaryAuthPort: Int32?

    public var secondaryAuthSecret: String?

    public var secondaryAuthServer: String?

    public var sendConfigToAp: Bool?

    public var shortPreamble: String?

    public var ssid: String?

    public var ssidLb: Int32?

    public var thirdAuthPort: Int32?

    public var thirdAuthSecret: String?

    public var thirdAuthServer: String?

    public var type: Int32?

    public var vlanDhcp: Int32?

    public var wmm: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acctPort != nil {
            map["AcctPort"] = self.acctPort!
        }
        if self.acctSecret != nil {
            map["AcctSecret"] = self.acctSecret!
        }
        if self.acctServer != nil {
            map["AcctServer"] = self.acctServer!
        }
        if self.acctStatusServerWork != nil {
            map["AcctStatusServerWork"] = self.acctStatusServerWork!
        }
        if self.apAssetId != nil {
            map["ApAssetId"] = self.apAssetId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.arpProxyEnable != nil {
            map["ArpProxyEnable"] = self.arpProxyEnable!
        }
        if self.authCache != nil {
            map["AuthCache"] = self.authCache!
        }
        if self.authPort != nil {
            map["AuthPort"] = self.authPort!
        }
        if self.authSecret != nil {
            map["AuthSecret"] = self.authSecret!
        }
        if self.authServer != nil {
            map["AuthServer"] = self.authServer!
        }
        if self.authStatusServerWork != nil {
            map["AuthStatusServerWork"] = self.authStatusServerWork!
        }
        if self.cir != nil {
            map["Cir"] = self.cir!
        }
        if self.cirStep != nil {
            map["CirStep"] = self.cirStep!
        }
        if self.cirType != nil {
            map["CirType"] = self.cirType!
        }
        if self.cirUl != nil {
            map["CirUl"] = self.cirUl!
        }
        if self.daeClient != nil {
            map["DaeClient"] = self.daeClient!
        }
        if self.daePort != nil {
            map["DaePort"] = self.daePort!
        }
        if self.daeSecret != nil {
            map["DaeSecret"] = self.daeSecret!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.disassocLowAck != nil {
            map["DisassocLowAck"] = self.disassocLowAck!
        }
        if self.disassocWeakRssi != nil {
            map["DisassocWeakRssi"] = self.disassocWeakRssi!
        }
        if self.dynamicVlan != nil {
            map["DynamicVlan"] = self.dynamicVlan!
        }
        if self.encKey != nil {
            map["EncKey"] = self.encKey!
        }
        if self.encryption != nil {
            map["Encryption"] = self.encryption!
        }
        if self.fourthAuthPort != nil {
            map["FourthAuthPort"] = self.fourthAuthPort!
        }
        if self.fourthAuthSecret != nil {
            map["FourthAuthSecret"] = self.fourthAuthSecret!
        }
        if self.fourthAuthServer != nil {
            map["FourthAuthServer"] = self.fourthAuthServer!
        }
        if self.ftOverDs != nil {
            map["FtOverDs"] = self.ftOverDs!
        }
        if self.hidden != nil {
            map["Hidden"] = self.hidden!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ieee80211r != nil {
            map["Ieee80211r"] = self.ieee80211r!
        }
        if self.ieee80211w != nil {
            map["Ieee80211w"] = self.ieee80211w!
        }
        if self.ignoreWeakProbe != nil {
            map["IgnoreWeakProbe"] = self.ignoreWeakProbe!
        }
        if self.isolate != nil {
            map["Isolate"] = self.isolate!
        }
        if self.liteEffect != nil {
            map["LiteEffect"] = self.liteEffect!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.maxInactivity != nil {
            map["MaxInactivity"] = self.maxInactivity!
        }
        if self.maxassoc != nil {
            map["Maxassoc"] = self.maxassoc!
        }
        if self.mobilityDomain != nil {
            map["MobilityDomain"] = self.mobilityDomain!
        }
        if self.multicastForward != nil {
            map["MulticastForward"] = self.multicastForward!
        }
        if self.nasid != nil {
            map["Nasid"] = self.nasid!
        }
        if self.ndProxyWork != nil {
            map["NdProxyWork"] = self.ndProxyWork!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.ownip != nil {
            map["Ownip"] = self.ownip!
        }
        if self.radioIndex != nil {
            map["RadioIndex"] = self.radioIndex!
        }
        if self.secondaryAcctPort != nil {
            map["SecondaryAcctPort"] = self.secondaryAcctPort!
        }
        if self.secondaryAcctSecret != nil {
            map["SecondaryAcctSecret"] = self.secondaryAcctSecret!
        }
        if self.secondaryAcctServer != nil {
            map["SecondaryAcctServer"] = self.secondaryAcctServer!
        }
        if self.secondaryAuthPort != nil {
            map["SecondaryAuthPort"] = self.secondaryAuthPort!
        }
        if self.secondaryAuthSecret != nil {
            map["SecondaryAuthSecret"] = self.secondaryAuthSecret!
        }
        if self.secondaryAuthServer != nil {
            map["SecondaryAuthServer"] = self.secondaryAuthServer!
        }
        if self.sendConfigToAp != nil {
            map["SendConfigToAp"] = self.sendConfigToAp!
        }
        if self.shortPreamble != nil {
            map["ShortPreamble"] = self.shortPreamble!
        }
        if self.ssid != nil {
            map["Ssid"] = self.ssid!
        }
        if self.ssidLb != nil {
            map["SsidLb"] = self.ssidLb!
        }
        if self.thirdAuthPort != nil {
            map["ThirdAuthPort"] = self.thirdAuthPort!
        }
        if self.thirdAuthSecret != nil {
            map["ThirdAuthSecret"] = self.thirdAuthSecret!
        }
        if self.thirdAuthServer != nil {
            map["ThirdAuthServer"] = self.thirdAuthServer!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vlanDhcp != nil {
            map["VlanDhcp"] = self.vlanDhcp!
        }
        if self.wmm != nil {
            map["Wmm"] = self.wmm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcctPort"] as? Int32 {
            self.acctPort = value
        }
        if let value = dict["AcctSecret"] as? String {
            self.acctSecret = value
        }
        if let value = dict["AcctServer"] as? String {
            self.acctServer = value
        }
        if let value = dict["AcctStatusServerWork"] as? Int32 {
            self.acctStatusServerWork = value
        }
        if let value = dict["ApAssetId"] as? Int64 {
            self.apAssetId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ArpProxyEnable"] as? Int32 {
            self.arpProxyEnable = value
        }
        if let value = dict["AuthCache"] as? String {
            self.authCache = value
        }
        if let value = dict["AuthPort"] as? Int32 {
            self.authPort = value
        }
        if let value = dict["AuthSecret"] as? String {
            self.authSecret = value
        }
        if let value = dict["AuthServer"] as? String {
            self.authServer = value
        }
        if let value = dict["AuthStatusServerWork"] as? Int32 {
            self.authStatusServerWork = value
        }
        if let value = dict["Cir"] as? Int64 {
            self.cir = value
        }
        if let value = dict["CirStep"] as? Int64 {
            self.cirStep = value
        }
        if let value = dict["CirType"] as? Int32 {
            self.cirType = value
        }
        if let value = dict["CirUl"] as? Int64 {
            self.cirUl = value
        }
        if let value = dict["DaeClient"] as? String {
            self.daeClient = value
        }
        if let value = dict["DaePort"] as? Int32 {
            self.daePort = value
        }
        if let value = dict["DaeSecret"] as? String {
            self.daeSecret = value
        }
        if let value = dict["Disabled"] as? String {
            self.disabled = value
        }
        if let value = dict["DisassocLowAck"] as? String {
            self.disassocLowAck = value
        }
        if let value = dict["DisassocWeakRssi"] as? Int32 {
            self.disassocWeakRssi = value
        }
        if let value = dict["DynamicVlan"] as? Int32 {
            self.dynamicVlan = value
        }
        if let value = dict["EncKey"] as? String {
            self.encKey = value
        }
        if let value = dict["Encryption"] as? String {
            self.encryption = value
        }
        if let value = dict["FourthAuthPort"] as? Int32 {
            self.fourthAuthPort = value
        }
        if let value = dict["FourthAuthSecret"] as? String {
            self.fourthAuthSecret = value
        }
        if let value = dict["FourthAuthServer"] as? String {
            self.fourthAuthServer = value
        }
        if let value = dict["FtOverDs"] as? Int32 {
            self.ftOverDs = value
        }
        if let value = dict["Hidden"] as? String {
            self.hidden = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Ieee80211r"] as? Int32 {
            self.ieee80211r = value
        }
        if let value = dict["Ieee80211w"] as? String {
            self.ieee80211w = value
        }
        if let value = dict["IgnoreWeakProbe"] as? Int32 {
            self.ignoreWeakProbe = value
        }
        if let value = dict["Isolate"] as? String {
            self.isolate = value
        }
        if let value = dict["LiteEffect"] as? Bool {
            self.liteEffect = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
        if let value = dict["MaxInactivity"] as? Int32 {
            self.maxInactivity = value
        }
        if let value = dict["Maxassoc"] as? Int32 {
            self.maxassoc = value
        }
        if let value = dict["MobilityDomain"] as? String {
            self.mobilityDomain = value
        }
        if let value = dict["MulticastForward"] as? Int32 {
            self.multicastForward = value
        }
        if let value = dict["Nasid"] as? String {
            self.nasid = value
        }
        if let value = dict["NdProxyWork"] as? Int32 {
            self.ndProxyWork = value
        }
        if let value = dict["Network"] as? Int32 {
            self.network = value
        }
        if let value = dict["Ownip"] as? String {
            self.ownip = value
        }
        if let value = dict["RadioIndex"] as? String {
            self.radioIndex = value
        }
        if let value = dict["SecondaryAcctPort"] as? Int32 {
            self.secondaryAcctPort = value
        }
        if let value = dict["SecondaryAcctSecret"] as? String {
            self.secondaryAcctSecret = value
        }
        if let value = dict["SecondaryAcctServer"] as? String {
            self.secondaryAcctServer = value
        }
        if let value = dict["SecondaryAuthPort"] as? Int32 {
            self.secondaryAuthPort = value
        }
        if let value = dict["SecondaryAuthSecret"] as? String {
            self.secondaryAuthSecret = value
        }
        if let value = dict["SecondaryAuthServer"] as? String {
            self.secondaryAuthServer = value
        }
        if let value = dict["SendConfigToAp"] as? Bool {
            self.sendConfigToAp = value
        }
        if let value = dict["ShortPreamble"] as? String {
            self.shortPreamble = value
        }
        if let value = dict["Ssid"] as? String {
            self.ssid = value
        }
        if let value = dict["SsidLb"] as? Int32 {
            self.ssidLb = value
        }
        if let value = dict["ThirdAuthPort"] as? Int32 {
            self.thirdAuthPort = value
        }
        if let value = dict["ThirdAuthSecret"] as? String {
            self.thirdAuthSecret = value
        }
        if let value = dict["ThirdAuthServer"] as? String {
            self.thirdAuthServer = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["VlanDhcp"] as? Int32 {
            self.vlanDhcp = value
        }
        if let value = dict["Wmm"] as? String {
            self.wmm = value
        }
    }
}

public class SaveApSsidConfigResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class SaveApSsidConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveApSsidConfigResponseBody?

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
            var model = SaveApSsidConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveApThirdAppRequest : Tea.TeaModel {
    public var addStyle: Int32?

    public var apAssetId: Int64?

    public var appCode: String?

    public var appData: String?

    public var appName: String?

    public var category: Int32?

    public var id: Int64?

    public var mac: String?

    public var thirdAppName: String?

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
        if self.addStyle != nil {
            map["AddStyle"] = self.addStyle!
        }
        if self.apAssetId != nil {
            map["ApAssetId"] = self.apAssetId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appData != nil {
            map["AppData"] = self.appData!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.thirdAppName != nil {
            map["ThirdAppName"] = self.thirdAppName!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddStyle"] as? Int32 {
            self.addStyle = value
        }
        if let value = dict["ApAssetId"] as? Int64 {
            self.apAssetId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppData"] as? String {
            self.appData = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Category"] as? Int32 {
            self.category = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
        if let value = dict["ThirdAppName"] as? String {
            self.thirdAppName = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class SaveApThirdAppResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SaveApThirdAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveApThirdAppResponseBody?

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
            var model = SaveApThirdAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveApgroupBasicConfigRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var country: String?

    public var dai: String?

    public var description_: String?

    public var echoInt: Int32?

    public var failover: Int32?

    public var id: Int64?

    public var insecureAllowed: Int32?

    public var isConfigStrongConsistency: Bool?

    public var lanIp: String?

    public var lanMask: String?

    public var lanStatus: Int32?

    public var logIp: String?

    public var logLevel: Int32?

    public var name: String?

    public var parentApgroupId: Int64?

    public var passwd: String?

    public var protocol_: String?

    public var route: String?

    public var scan: Int32?

    public var tokenServer: String?

    public var vpn: String?

    public var workMode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.dai != nil {
            map["Dai"] = self.dai!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.echoInt != nil {
            map["EchoInt"] = self.echoInt!
        }
        if self.failover != nil {
            map["Failover"] = self.failover!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.insecureAllowed != nil {
            map["InsecureAllowed"] = self.insecureAllowed!
        }
        if self.isConfigStrongConsistency != nil {
            map["IsConfigStrongConsistency"] = self.isConfigStrongConsistency!
        }
        if self.lanIp != nil {
            map["LanIp"] = self.lanIp!
        }
        if self.lanMask != nil {
            map["LanMask"] = self.lanMask!
        }
        if self.lanStatus != nil {
            map["LanStatus"] = self.lanStatus!
        }
        if self.logIp != nil {
            map["LogIp"] = self.logIp!
        }
        if self.logLevel != nil {
            map["LogLevel"] = self.logLevel!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentApgroupId != nil {
            map["ParentApgroupId"] = self.parentApgroupId!
        }
        if self.passwd != nil {
            map["Passwd"] = self.passwd!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.route != nil {
            map["Route"] = self.route!
        }
        if self.scan != nil {
            map["Scan"] = self.scan!
        }
        if self.tokenServer != nil {
            map["TokenServer"] = self.tokenServer!
        }
        if self.vpn != nil {
            map["Vpn"] = self.vpn!
        }
        if self.workMode != nil {
            map["WorkMode"] = self.workMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["Dai"] as? String {
            self.dai = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EchoInt"] as? Int32 {
            self.echoInt = value
        }
        if let value = dict["Failover"] as? Int32 {
            self.failover = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InsecureAllowed"] as? Int32 {
            self.insecureAllowed = value
        }
        if let value = dict["IsConfigStrongConsistency"] as? Bool {
            self.isConfigStrongConsistency = value
        }
        if let value = dict["LanIp"] as? String {
            self.lanIp = value
        }
        if let value = dict["LanMask"] as? String {
            self.lanMask = value
        }
        if let value = dict["LanStatus"] as? Int32 {
            self.lanStatus = value
        }
        if let value = dict["LogIp"] as? String {
            self.logIp = value
        }
        if let value = dict["LogLevel"] as? Int32 {
            self.logLevel = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParentApgroupId"] as? Int64 {
            self.parentApgroupId = value
        }
        if let value = dict["Passwd"] as? String {
            self.passwd = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["Route"] as? String {
            self.route = value
        }
        if let value = dict["Scan"] as? Int32 {
            self.scan = value
        }
        if let value = dict["TokenServer"] as? String {
            self.tokenServer = value
        }
        if let value = dict["Vpn"] as? String {
            self.vpn = value
        }
        if let value = dict["WorkMode"] as? Int32 {
            self.workMode = value
        }
    }
}

public class SaveApgroupBasicConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var data: SaveApgroupBasicConfigResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SaveApgroupBasicConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SaveApgroupBasicConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveApgroupBasicConfigResponseBody?

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
            var model = SaveApgroupBasicConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveApgroupPortalConfigRequest : Tea.TeaModel {
    public var apgroupId: Int64?

    public var appAuthUrl: String?

    public var appCode: String?

    public var appName: String?

    public var authKey: String?

    public var authSecret: String?

    public var checkUrl: String?

    public var clientDownload: Int32?

    public var clientUpload: Int32?

    public var countdown: Int32?

    public var network: Int32?

    public var portalTypes: [String]?

    public var portalUrl: String?

    public var timeStamp: Int64?

    public var totalDownload: Int32?

    public var totalUpload: Int32?

    public var webAuthUrl: String?

    public var whitelist: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.appAuthUrl != nil {
            map["AppAuthUrl"] = self.appAuthUrl!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSecret != nil {
            map["AuthSecret"] = self.authSecret!
        }
        if self.checkUrl != nil {
            map["CheckUrl"] = self.checkUrl!
        }
        if self.clientDownload != nil {
            map["ClientDownload"] = self.clientDownload!
        }
        if self.clientUpload != nil {
            map["ClientUpload"] = self.clientUpload!
        }
        if self.countdown != nil {
            map["Countdown"] = self.countdown!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.portalTypes != nil {
            map["PortalTypes"] = self.portalTypes!
        }
        if self.portalUrl != nil {
            map["PortalUrl"] = self.portalUrl!
        }
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        if self.totalDownload != nil {
            map["TotalDownload"] = self.totalDownload!
        }
        if self.totalUpload != nil {
            map["TotalUpload"] = self.totalUpload!
        }
        if self.webAuthUrl != nil {
            map["WebAuthUrl"] = self.webAuthUrl!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupId"] as? Int64 {
            self.apgroupId = value
        }
        if let value = dict["AppAuthUrl"] as? String {
            self.appAuthUrl = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSecret"] as? String {
            self.authSecret = value
        }
        if let value = dict["CheckUrl"] as? String {
            self.checkUrl = value
        }
        if let value = dict["ClientDownload"] as? Int32 {
            self.clientDownload = value
        }
        if let value = dict["ClientUpload"] as? Int32 {
            self.clientUpload = value
        }
        if let value = dict["Countdown"] as? Int32 {
            self.countdown = value
        }
        if let value = dict["Network"] as? Int32 {
            self.network = value
        }
        if let value = dict["PortalTypes"] as? [String] {
            self.portalTypes = value
        }
        if let value = dict["PortalUrl"] as? String {
            self.portalUrl = value
        }
        if let value = dict["TimeStamp"] as? Int64 {
            self.timeStamp = value
        }
        if let value = dict["TotalDownload"] as? Int32 {
            self.totalDownload = value
        }
        if let value = dict["TotalUpload"] as? Int32 {
            self.totalUpload = value
        }
        if let value = dict["WebAuthUrl"] as? String {
            self.webAuthUrl = value
        }
        if let value = dict["Whitelist"] as? String {
            self.whitelist = value
        }
    }
}

public class SaveApgroupPortalConfigShrinkRequest : Tea.TeaModel {
    public var apgroupId: Int64?

    public var appAuthUrl: String?

    public var appCode: String?

    public var appName: String?

    public var authKey: String?

    public var authSecret: String?

    public var checkUrl: String?

    public var clientDownload: Int32?

    public var clientUpload: Int32?

    public var countdown: Int32?

    public var network: Int32?

    public var portalTypesShrink: String?

    public var portalUrl: String?

    public var timeStamp: Int64?

    public var totalDownload: Int32?

    public var totalUpload: Int32?

    public var webAuthUrl: String?

    public var whitelist: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.appAuthUrl != nil {
            map["AppAuthUrl"] = self.appAuthUrl!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSecret != nil {
            map["AuthSecret"] = self.authSecret!
        }
        if self.checkUrl != nil {
            map["CheckUrl"] = self.checkUrl!
        }
        if self.clientDownload != nil {
            map["ClientDownload"] = self.clientDownload!
        }
        if self.clientUpload != nil {
            map["ClientUpload"] = self.clientUpload!
        }
        if self.countdown != nil {
            map["Countdown"] = self.countdown!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.portalTypesShrink != nil {
            map["PortalTypes"] = self.portalTypesShrink!
        }
        if self.portalUrl != nil {
            map["PortalUrl"] = self.portalUrl!
        }
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        if self.totalDownload != nil {
            map["TotalDownload"] = self.totalDownload!
        }
        if self.totalUpload != nil {
            map["TotalUpload"] = self.totalUpload!
        }
        if self.webAuthUrl != nil {
            map["WebAuthUrl"] = self.webAuthUrl!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApgroupId"] as? Int64 {
            self.apgroupId = value
        }
        if let value = dict["AppAuthUrl"] as? String {
            self.appAuthUrl = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSecret"] as? String {
            self.authSecret = value
        }
        if let value = dict["CheckUrl"] as? String {
            self.checkUrl = value
        }
        if let value = dict["ClientDownload"] as? Int32 {
            self.clientDownload = value
        }
        if let value = dict["ClientUpload"] as? Int32 {
            self.clientUpload = value
        }
        if let value = dict["Countdown"] as? Int32 {
            self.countdown = value
        }
        if let value = dict["Network"] as? Int32 {
            self.network = value
        }
        if let value = dict["PortalTypes"] as? String {
            self.portalTypesShrink = value
        }
        if let value = dict["PortalUrl"] as? String {
            self.portalUrl = value
        }
        if let value = dict["TimeStamp"] as? Int64 {
            self.timeStamp = value
        }
        if let value = dict["TotalDownload"] as? Int32 {
            self.totalDownload = value
        }
        if let value = dict["TotalUpload"] as? Int32 {
            self.totalUpload = value
        }
        if let value = dict["WebAuthUrl"] as? String {
            self.webAuthUrl = value
        }
        if let value = dict["Whitelist"] as? String {
            self.whitelist = value
        }
    }
}

public class SaveApgroupPortalConfigResponseBody : Tea.TeaModel {
    public var data: [Int64]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Int64] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SaveApgroupPortalConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveApgroupPortalConfigResponseBody?

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
            var model = SaveApgroupPortalConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveApgroupSsidConfigRequest : Tea.TeaModel {
    public var acctPort: Int32?

    public var acctSecret: String?

    public var acctServer: String?

    public var apgroupId: String?

    public var appCode: String?

    public var appName: String?

    public var authCache: String?

    public var authPort: Int32?

    public var authSecret: String?

    public var authServer: String?

    public var binding: String?

    public var cir: Int64?

    public var daeClient: String?

    public var daePort: Int32?

    public var daeSecret: String?

    public var disabled: String?

    public var disassocLowAck: String?

    public var disassocWeakRssi: Int32?

    public var dynamicVlan: Int32?

    public var effect: Bool?

    public var encKey: String?

    public var encryption: String?

    public var hidden: String?

    public var id: Int64?

    public var ieee80211w: String?

    public var ignoreWeakProbe: Int32?

    public var isolate: String?

    public var liteEffect: Bool?

    public var maxInactivity: Int32?

    public var maxassoc: String?

    public var multicastForward: Int32?

    public var nasid: String?

    public var network: Int32?

    public var newSsid: String?

    public var ownip: String?

    public var secondaryAcctPort: Int32?

    public var secondaryAcctSecret: String?

    public var secondaryAcctServer: String?

    public var secondaryAuthPort: Int32?

    public var secondaryAuthSecret: String?

    public var secondaryAuthServer: String?

    public var shortPreamble: String?

    public var ssid: String?

    public var ssidLb: Int32?

    public var type: Int32?

    public var vlanDhcp: Int32?

    public var wmm: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acctPort != nil {
            map["AcctPort"] = self.acctPort!
        }
        if self.acctSecret != nil {
            map["AcctSecret"] = self.acctSecret!
        }
        if self.acctServer != nil {
            map["AcctServer"] = self.acctServer!
        }
        if self.apgroupId != nil {
            map["ApgroupId"] = self.apgroupId!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.authCache != nil {
            map["AuthCache"] = self.authCache!
        }
        if self.authPort != nil {
            map["AuthPort"] = self.authPort!
        }
        if self.authSecret != nil {
            map["AuthSecret"] = self.authSecret!
        }
        if self.authServer != nil {
            map["AuthServer"] = self.authServer!
        }
        if self.binding != nil {
            map["Binding"] = self.binding!
        }
        if self.cir != nil {
            map["Cir"] = self.cir!
        }
        if self.daeClient != nil {
            map["DaeClient"] = self.daeClient!
        }
        if self.daePort != nil {
            map["DaePort"] = self.daePort!
        }
        if self.daeSecret != nil {
            map["DaeSecret"] = self.daeSecret!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.disassocLowAck != nil {
            map["DisassocLowAck"] = self.disassocLowAck!
        }
        if self.disassocWeakRssi != nil {
            map["DisassocWeakRssi"] = self.disassocWeakRssi!
        }
        if self.dynamicVlan != nil {
            map["DynamicVlan"] = self.dynamicVlan!
        }
        if self.effect != nil {
            map["Effect"] = self.effect!
        }
        if self.encKey != nil {
            map["EncKey"] = self.encKey!
        }
        if self.encryption != nil {
            map["Encryption"] = self.encryption!
        }
        if self.hidden != nil {
            map["Hidden"] = self.hidden!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ieee80211w != nil {
            map["Ieee80211w"] = self.ieee80211w!
        }
        if self.ignoreWeakProbe != nil {
            map["IgnoreWeakProbe"] = self.ignoreWeakProbe!
        }
        if self.isolate != nil {
            map["Isolate"] = self.isolate!
        }
        if self.liteEffect != nil {
            map["LiteEffect"] = self.liteEffect!
        }
        if self.maxInactivity != nil {
            map["MaxInactivity"] = self.maxInactivity!
        }
        if self.maxassoc != nil {
            map["Maxassoc"] = self.maxassoc!
        }
        if self.multicastForward != nil {
            map["MulticastForward"] = self.multicastForward!
        }
        if self.nasid != nil {
            map["Nasid"] = self.nasid!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.newSsid != nil {
            map["NewSsid"] = self.newSsid!
        }
        if self.ownip != nil {
            map["Ownip"] = self.ownip!
        }
        if self.secondaryAcctPort != nil {
            map["SecondaryAcctPort"] = self.secondaryAcctPort!
        }
        if self.secondaryAcctSecret != nil {
            map["SecondaryAcctSecret"] = self.secondaryAcctSecret!
        }
        if self.secondaryAcctServer != nil {
            map["SecondaryAcctServer"] = self.secondaryAcctServer!
        }
        if self.secondaryAuthPort != nil {
            map["SecondaryAuthPort"] = self.secondaryAuthPort!
        }
        if self.secondaryAuthSecret != nil {
            map["SecondaryAuthSecret"] = self.secondaryAuthSecret!
        }
        if self.secondaryAuthServer != nil {
            map["SecondaryAuthServer"] = self.secondaryAuthServer!
        }
        if self.shortPreamble != nil {
            map["ShortPreamble"] = self.shortPreamble!
        }
        if self.ssid != nil {
            map["Ssid"] = self.ssid!
        }
        if self.ssidLb != nil {
            map["SsidLb"] = self.ssidLb!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vlanDhcp != nil {
            map["VlanDhcp"] = self.vlanDhcp!
        }
        if self.wmm != nil {
            map["Wmm"] = self.wmm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcctPort"] as? Int32 {
            self.acctPort = value
        }
        if let value = dict["AcctSecret"] as? String {
            self.acctSecret = value
        }
        if let value = dict["AcctServer"] as? String {
            self.acctServer = value
        }
        if let value = dict["ApgroupId"] as? String {
            self.apgroupId = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AuthCache"] as? String {
            self.authCache = value
        }
        if let value = dict["AuthPort"] as? Int32 {
            self.authPort = value
        }
        if let value = dict["AuthSecret"] as? String {
            self.authSecret = value
        }
        if let value = dict["AuthServer"] as? String {
            self.authServer = value
        }
        if let value = dict["Binding"] as? String {
            self.binding = value
        }
        if let value = dict["Cir"] as? Int64 {
            self.cir = value
        }
        if let value = dict["DaeClient"] as? String {
            self.daeClient = value
        }
        if let value = dict["DaePort"] as? Int32 {
            self.daePort = value
        }
        if let value = dict["DaeSecret"] as? String {
            self.daeSecret = value
        }
        if let value = dict["Disabled"] as? String {
            self.disabled = value
        }
        if let value = dict["DisassocLowAck"] as? String {
            self.disassocLowAck = value
        }
        if let value = dict["DisassocWeakRssi"] as? Int32 {
            self.disassocWeakRssi = value
        }
        if let value = dict["DynamicVlan"] as? Int32 {
            self.dynamicVlan = value
        }
        if let value = dict["Effect"] as? Bool {
            self.effect = value
        }
        if let value = dict["EncKey"] as? String {
            self.encKey = value
        }
        if let value = dict["Encryption"] as? String {
            self.encryption = value
        }
        if let value = dict["Hidden"] as? String {
            self.hidden = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Ieee80211w"] as? String {
            self.ieee80211w = value
        }
        if let value = dict["IgnoreWeakProbe"] as? Int32 {
            self.ignoreWeakProbe = value
        }
        if let value = dict["Isolate"] as? String {
            self.isolate = value
        }
        if let value = dict["LiteEffect"] as? Bool {
            self.liteEffect = value
        }
        if let value = dict["MaxInactivity"] as? Int32 {
            self.maxInactivity = value
        }
        if let value = dict["Maxassoc"] as? String {
            self.maxassoc = value
        }
        if let value = dict["MulticastForward"] as? Int32 {
            self.multicastForward = value
        }
        if let value = dict["Nasid"] as? String {
            self.nasid = value
        }
        if let value = dict["Network"] as? Int32 {
            self.network = value
        }
        if let value = dict["NewSsid"] as? String {
            self.newSsid = value
        }
        if let value = dict["Ownip"] as? String {
            self.ownip = value
        }
        if let value = dict["SecondaryAcctPort"] as? Int32 {
            self.secondaryAcctPort = value
        }
        if let value = dict["SecondaryAcctSecret"] as? String {
            self.secondaryAcctSecret = value
        }
        if let value = dict["SecondaryAcctServer"] as? String {
            self.secondaryAcctServer = value
        }
        if let value = dict["SecondaryAuthPort"] as? Int32 {
            self.secondaryAuthPort = value
        }
        if let value = dict["SecondaryAuthSecret"] as? String {
            self.secondaryAuthSecret = value
        }
        if let value = dict["SecondaryAuthServer"] as? String {
            self.secondaryAuthServer = value
        }
        if let value = dict["ShortPreamble"] as? String {
            self.shortPreamble = value
        }
        if let value = dict["Ssid"] as? String {
            self.ssid = value
        }
        if let value = dict["SsidLb"] as? Int32 {
            self.ssidLb = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["VlanDhcp"] as? Int32 {
            self.vlanDhcp = value
        }
        if let value = dict["Wmm"] as? String {
            self.wmm = value
        }
    }
}

public class SaveApgroupSsidConfigResponseBody : Tea.TeaModel {
    public var data: [Int64]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Int64] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class SaveApgroupSsidConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveApgroupSsidConfigResponseBody?

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
            var model = SaveApgroupSsidConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetApAddressRequest : Tea.TeaModel {
    public var apAreaName: String?

    public var apBuildingName: String?

    public var apCampusName: String?

    public var apCityName: String?

    public var apFloor: String?

    public var apGroup: String?

    public var apName: String?

    public var apNationName: String?

    public var apProvinceName: String?

    public var apUnitId: Int64?

    public var apUnitName: String?

    public var appCode: String?

    public var appName: String?

    public var direction: String?

    public var language: String?

    public var lat: String?

    public var lng: String?

    public var mac: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apAreaName != nil {
            map["ApAreaName"] = self.apAreaName!
        }
        if self.apBuildingName != nil {
            map["ApBuildingName"] = self.apBuildingName!
        }
        if self.apCampusName != nil {
            map["ApCampusName"] = self.apCampusName!
        }
        if self.apCityName != nil {
            map["ApCityName"] = self.apCityName!
        }
        if self.apFloor != nil {
            map["ApFloor"] = self.apFloor!
        }
        if self.apGroup != nil {
            map["ApGroup"] = self.apGroup!
        }
        if self.apName != nil {
            map["ApName"] = self.apName!
        }
        if self.apNationName != nil {
            map["ApNationName"] = self.apNationName!
        }
        if self.apProvinceName != nil {
            map["ApProvinceName"] = self.apProvinceName!
        }
        if self.apUnitId != nil {
            map["ApUnitId"] = self.apUnitId!
        }
        if self.apUnitName != nil {
            map["ApUnitName"] = self.apUnitName!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.lat != nil {
            map["Lat"] = self.lat!
        }
        if self.lng != nil {
            map["Lng"] = self.lng!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApAreaName"] as? String {
            self.apAreaName = value
        }
        if let value = dict["ApBuildingName"] as? String {
            self.apBuildingName = value
        }
        if let value = dict["ApCampusName"] as? String {
            self.apCampusName = value
        }
        if let value = dict["ApCityName"] as? String {
            self.apCityName = value
        }
        if let value = dict["ApFloor"] as? String {
            self.apFloor = value
        }
        if let value = dict["ApGroup"] as? String {
            self.apGroup = value
        }
        if let value = dict["ApName"] as? String {
            self.apName = value
        }
        if let value = dict["ApNationName"] as? String {
            self.apNationName = value
        }
        if let value = dict["ApProvinceName"] as? String {
            self.apProvinceName = value
        }
        if let value = dict["ApUnitId"] as? Int64 {
            self.apUnitId = value
        }
        if let value = dict["ApUnitName"] as? String {
            self.apUnitName = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Lat"] as? String {
            self.lat = value
        }
        if let value = dict["Lng"] as? String {
            self.lng = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
    }
}

public class SetApAddressResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class SetApAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetApAddressResponseBody?

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
            var model = SetApAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetApNameRequest : Tea.TeaModel {
    public var apMac: String?

    public var appCode: String?

    public var appName: String?

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
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApMac"] as? String {
            self.apMac = value
        }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class SetApNameResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
    }
}

public class SetApNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetApNameResponseBody?

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
            var model = SetApNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnRegisterApAssetRequest : Tea.TeaModel {
    public var appCode: String?

    public var appName: String?

    public var assetApgroupId: Int64?

    public var category: Int32?

    public var id: Int64?

    public var mac: String?

    public var serialNo: String?

    public var useFor: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.assetApgroupId != nil {
            map["AssetApgroupId"] = self.assetApgroupId!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.useFor != nil {
            map["UseFor"] = self.useFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AssetApgroupId"] as? Int64 {
            self.assetApgroupId = value
        }
        if let value = dict["Category"] as? Int32 {
            self.category = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["UseFor"] as? Int32 {
            self.useFor = value
        }
    }
}

public class UnRegisterApAssetResponseBody : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnRegisterApAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnRegisterApAssetResponseBody?

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
            var model = UnRegisterApAssetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNetDeviceInfoRequest : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var hostName: String?

        public var id: Int64?

        public var idc: String?

        public var logicNetPod: String?

        public var manufacturer: String?

        public var mgnIp: String?

        public var model: String?

        public var netPod: String?

        public var password: String?

        public var role: String?

        public var serviceTag: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idc != nil {
                map["Idc"] = self.idc!
            }
            if self.logicNetPod != nil {
                map["LogicNetPod"] = self.logicNetPod!
            }
            if self.manufacturer != nil {
                map["Manufacturer"] = self.manufacturer!
            }
            if self.mgnIp != nil {
                map["MgnIp"] = self.mgnIp!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.netPod != nil {
                map["NetPod"] = self.netPod!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.serviceTag != nil {
                map["ServiceTag"] = self.serviceTag!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Idc"] as? String {
                self.idc = value
            }
            if let value = dict["LogicNetPod"] as? String {
                self.logicNetPod = value
            }
            if let value = dict["Manufacturer"] as? String {
                self.manufacturer = value
            }
            if let value = dict["MgnIp"] as? String {
                self.mgnIp = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NetPod"] as? String {
                self.netPod = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["ServiceTag"] as? String {
                self.serviceTag = value
            }
            if let value = dict["Username"] as? String {
                self.username = value
            }
        }
    }
    public var appCode: String?

    public var appName: String?

    public var devices: [UpdateNetDeviceInfoRequest.Devices]?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Devices"] as? [Any?] {
            var tmp : [UpdateNetDeviceInfoRequest.Devices] = []
            for v in value {
                if v != nil {
                    var model = UpdateNetDeviceInfoRequest.Devices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.devices = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateNetDeviceInfoResponseBody : Tea.TeaModel {
    public var data: [Int64]?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var isSuccess: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Int64] {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateNetDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNetDeviceInfoResponseBody?

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
            var model = UpdateNetDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
