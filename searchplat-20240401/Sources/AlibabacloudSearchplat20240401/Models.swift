import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CeaseFunctionInstanceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class CeaseFunctionInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CeaseFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CeaseFunctionInstanceResponseBody?

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
            var model = CeaseFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAsyncTaskRequest : Tea.TeaModel {
    public var dataId: Int64?

    public var id: String?

    public var name: String?

    public var serviceId: String?

    public var serviceType: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataId != nil {
            map["dataId"] = self.dataId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataId"] as? Int64 {
            self.dataId = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["serviceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateAsyncTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int64?

        public var dataId: Int32?

        public var id: String?

        public var name: String?

        public var result: String?

        public var serviceId: String?

        public var serviceType: String?

        public var status: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.dataId != nil {
                map["dataId"] = self.dataId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["dataId"] as? Int32 {
                self.dataId = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["result"] as? String {
                self.result = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [CreateAsyncTaskResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [CreateAsyncTaskResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = CreateAsyncTaskResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class CreateAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAsyncTaskResponseBody?

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
            var model = CreateAsyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCapabilityRequest : Tea.TeaModel {
    public var itemDesc: String?

    public var itemName: String?

    public var itemValue: [String: Any]?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.itemDesc != nil {
            map["itemDesc"] = self.itemDesc!
        }
        if self.itemName != nil {
            map["itemName"] = self.itemName!
        }
        if self.itemValue != nil {
            map["itemValue"] = self.itemValue!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["itemDesc"] as? String {
            self.itemDesc = value
        }
        if let value = dict["itemName"] as? String {
            self.itemName = value
        }
        if let value = dict["itemValue"] as? [String: Any] {
            self.itemValue = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateCapabilityResponseBody : Tea.TeaModel {
    public var httpCode: Int64?

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
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateCapabilityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCapabilityResponseBody?

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
            var model = CreateCapabilityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConfigRequest : Tea.TeaModel {
    public var configData: [String: Any]?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configData != nil {
            map["configData"] = self.configData!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configData"] as? [String: Any] {
            self.configData = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var configData: [String: Any]?

        public var configType: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configData != nil {
                map["configData"] = self.configData!
            }
            if self.configType != nil {
                map["configType"] = self.configType!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configData"] as? [String: Any] {
                self.configData = value
            }
            if let value = dict["configType"] as? String {
                self.configType = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateConfigResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateConfigResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConfigResponseBody?

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
            var model = CreateConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCredentialsRequest : Tea.TeaModel {
    public var type: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateCredentialsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appGroupId: Int64?

        public var enabled: Bool?

        public var token: String?

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
            if self.appGroupId != nil {
                map["appGroupId"] = self.appGroupId!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appGroupId"] as? Int64 {
                self.appGroupId = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateCredentialsResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateCredentialsResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCredentialsResponseBody?

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
            var model = CreateCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExperienceDataRequest : Tea.TeaModel {
    public var contentType: String?

    public var dataSize: Int64?

    public var dataType: String?

    public var dataValue: String?

    public var name: String?

    public var serviceType: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.dataSize != nil {
            map["dataSize"] = self.dataSize!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.dataValue != nil {
            map["dataValue"] = self.dataValue!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["dataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["dataValue"] as? String {
            self.dataValue = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateExperienceDataResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var contentType: String?

        public var created: Int64?

        public var dataSize: Int64?

        public var dataType: Bool?

        public var dataValue: String?

        public var id: Int64?

        public var name: String?

        public var serviceType: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.dataSize != nil {
                map["dataSize"] = self.dataSize!
            }
            if self.dataType != nil {
                map["dataType"] = self.dataType!
            }
            if self.dataValue != nil {
                map["dataValue"] = self.dataValue!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contentType"] as? String {
                self.contentType = value
            }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["dataSize"] as? Int64 {
                self.dataSize = value
            }
            if let value = dict["dataType"] as? Bool {
                self.dataType = value
            }
            if let value = dict["dataValue"] as? String {
                self.dataValue = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateExperienceDataResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateExperienceDataResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateExperienceDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExperienceDataResponseBody?

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
            var model = CreateExperienceDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFunctionInstanceRequest : Tea.TeaModel {
    public class CreateParameters : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var createParameters: [CreateFunctionInstanceRequest.CreateParameters]?

    public var description_: String?

    public var functionType: String?

    public var instanceName: String?

    public var modelType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createParameters != nil {
            var tmp : [Any] = []
            for k in self.createParameters! {
                tmp.append(k.toMap())
            }
            map["createParameters"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.functionType != nil {
            map["functionType"] = self.functionType!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createParameters"] as? [Any?] {
            var tmp : [CreateFunctionInstanceRequest.CreateParameters] = []
            for v in value {
                if v != nil {
                    var model = CreateFunctionInstanceRequest.CreateParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.createParameters = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["functionType"] as? String {
            self.functionType = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
    }
}

public class CreateFunctionInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionInstanceResponseBody?

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
            var model = CreateFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFunctionTaskRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class CreateFunctionTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateFunctionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionTaskResponseBody?

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
            var model = CreateFunctionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOfflineTaskRequest : Tea.TeaModel {
    public class Meta : Tea.TeaModel {
        public var apiKey: String?

        public var computeResource: String?

        public var labels: [String]?

        public var regionId: String?

        public var taskName: String?

        public override init() {
            super.init()
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
            if self.computeResource != nil {
                map["computeResource"] = self.computeResource!
            }
            if self.labels != nil {
                map["labels"] = self.labels!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["computeResource"] as? String {
                self.computeResource = value
            }
            if let value = dict["labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
        }
    }
    public class Processors : Tea.TeaModel {
        public var input: [String: Any]?

        public var name: String?

        public var output: [String: Any]?

        public var parameters: [String: Any]?

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
            if self.input != nil {
                map["input"] = self.input!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.output != nil {
                map["output"] = self.output!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["input"] as? [String: Any] {
                self.input = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["output"] as? [String: Any] {
                self.output = value
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Sink : Tea.TeaModel {
        public var name: String?

        public var parameters: [String: String]?

        public var primaryKey: String?

        public var schema: [[String: String]]?

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
                map["name"] = self.name!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.primaryKey != nil {
                map["primaryKey"] = self.primaryKey!
            }
            if self.schema != nil {
                map["schema"] = self.schema!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parameters"] as? [String: String] {
                self.parameters = value
            }
            if let value = dict["primaryKey"] as? String {
                self.primaryKey = value
            }
            if let value = dict["schema"] as? [[String: String]] {
                self.schema = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Source : Tea.TeaModel {
        public var name: String?

        public var parameters: [String: String]?

        public var primaryKey: String?

        public var schema: [[String: String]]?

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
                map["name"] = self.name!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.primaryKey != nil {
                map["primaryKey"] = self.primaryKey!
            }
            if self.schema != nil {
                map["schema"] = self.schema!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parameters"] as? [String: String] {
                self.parameters = value
            }
            if let value = dict["primaryKey"] as? String {
                self.primaryKey = value
            }
            if let value = dict["schema"] as? [[String: String]] {
                self.schema = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Status : Tea.TeaModel {
        public var createTime: Int64?

        public var deleteTime: Int64?

        public var errorMessage: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.deleteTime != nil {
                map["deleteTime"] = self.deleteTime!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["deleteTime"] as? Int64 {
                self.deleteTime = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var meta: CreateOfflineTaskRequest.Meta?

    public var parameters: [String: Any]?

    public var processors: [CreateOfflineTaskRequest.Processors]?

    public var sink: [CreateOfflineTaskRequest.Sink]?

    public var source: [CreateOfflineTaskRequest.Source]?

    public var status: CreateOfflineTaskRequest.Status?

    public var draft: Bool?

    public var dryRun: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.meta?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meta != nil {
            map["meta"] = self.meta?.toMap()
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.processors != nil {
            var tmp : [Any] = []
            for k in self.processors! {
                tmp.append(k.toMap())
            }
            map["processors"] = tmp
        }
        if self.sink != nil {
            var tmp : [Any] = []
            for k in self.sink! {
                tmp.append(k.toMap())
            }
            map["sink"] = tmp
        }
        if self.source != nil {
            var tmp : [Any] = []
            for k in self.source! {
                tmp.append(k.toMap())
            }
            map["source"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.draft != nil {
            map["draft"] = self.draft!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["meta"] as? [String: Any?] {
            var model = CreateOfflineTaskRequest.Meta()
            model.fromMap(value)
            self.meta = model
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["processors"] as? [Any?] {
            var tmp : [CreateOfflineTaskRequest.Processors] = []
            for v in value {
                if v != nil {
                    var model = CreateOfflineTaskRequest.Processors()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.processors = tmp
        }
        if let value = dict["sink"] as? [Any?] {
            var tmp : [CreateOfflineTaskRequest.Sink] = []
            for v in value {
                if v != nil {
                    var model = CreateOfflineTaskRequest.Sink()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sink = tmp
        }
        if let value = dict["source"] as? [Any?] {
            var tmp : [CreateOfflineTaskRequest.Source] = []
            for v in value {
                if v != nil {
                    var model = CreateOfflineTaskRequest.Source()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.source = tmp
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = CreateOfflineTaskRequest.Status()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["draft"] as? Bool {
            self.draft = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateOfflineTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var computeResource: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.taskName != nil {
                    map["taskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? String {
                    self.computeResource = value
                }
                if let value = dict["taskName"] as? String {
                    self.taskName = value
                }
            }
        }
        public class Processors : Tea.TeaModel {
            public var input: [String: Any]?

            public var name: String?

            public var parameters: [String: Any]?

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
                if self.input != nil {
                    map["input"] = self.input!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["input"] as? [String: Any] {
                    self.input = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Sink : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Source : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Status : Tea.TeaModel {
            public var createTime: String?

            public var deleteTime: String?

            public var errorMessage: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.deleteTime != nil {
                    map["deleteTime"] = self.deleteTime!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["deleteTime"] as? String {
                    self.deleteTime = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var meta: CreateOfflineTaskResponseBody.Result.Meta?

        public var parameters: [String: Any]?

        public var processors: [CreateOfflineTaskResponseBody.Result.Processors]?

        public var sink: [CreateOfflineTaskResponseBody.Result.Sink]?

        public var source: [CreateOfflineTaskResponseBody.Result.Source]?

        public var status: CreateOfflineTaskResponseBody.Result.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meta?.validate()
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meta != nil {
                map["meta"] = self.meta?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.processors != nil {
                var tmp : [Any] = []
                for k in self.processors! {
                    tmp.append(k.toMap())
                }
                map["processors"] = tmp
            }
            if self.sink != nil {
                var tmp : [Any] = []
                for k in self.sink! {
                    tmp.append(k.toMap())
                }
                map["sink"] = tmp
            }
            if self.source != nil {
                var tmp : [Any] = []
                for k in self.source! {
                    tmp.append(k.toMap())
                }
                map["source"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["meta"] as? [String: Any?] {
                var model = CreateOfflineTaskResponseBody.Result.Meta()
                model.fromMap(value)
                self.meta = model
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["processors"] as? [Any?] {
                var tmp : [CreateOfflineTaskResponseBody.Result.Processors] = []
                for v in value {
                    if v != nil {
                        var model = CreateOfflineTaskResponseBody.Result.Processors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.processors = tmp
            }
            if let value = dict["sink"] as? [Any?] {
                var tmp : [CreateOfflineTaskResponseBody.Result.Sink] = []
                for v in value {
                    if v != nil {
                        var model = CreateOfflineTaskResponseBody.Result.Sink()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sink = tmp
            }
            if let value = dict["source"] as? [Any?] {
                var tmp : [CreateOfflineTaskResponseBody.Result.Source] = []
                for v in value {
                    if v != nil {
                        var model = CreateOfflineTaskResponseBody.Result.Source()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.source = tmp
            }
            if let value = dict["status"] as? [String: Any?] {
                var model = CreateOfflineTaskResponseBody.Result.Status()
                model.fromMap(value)
                self.status = model
            }
        }
    }
    public var requestId: String?

    public var result: CreateOfflineTaskResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateOfflineTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateOfflineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOfflineTaskResponseBody?

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
            var model = CreateOfflineTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRagEvaluatorTaskRequest : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modelAnswer: String?

        public var question: String?

        public var recallDocs: [String]?

        public var standardAnswer: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelAnswer != nil {
                map["model_answer"] = self.modelAnswer!
            }
            if self.question != nil {
                map["question"] = self.question!
            }
            if self.recallDocs != nil {
                map["recall_docs"] = self.recallDocs!
            }
            if self.standardAnswer != nil {
                map["standard_answer"] = self.standardAnswer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["model_answer"] as? String {
                self.modelAnswer = value
            }
            if let value = dict["question"] as? String {
                self.question = value
            }
            if let value = dict["recall_docs"] as? [String] {
                self.recallDocs = value
            }
            if let value = dict["standard_answer"] as? String {
                self.standardAnswer = value
            }
        }
    }
    public class EvaluateConfig : Tea.TeaModel {
        public var model: String?

        public var prompt: String?

        public var runAllStep: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["model"] = self.model!
            }
            if self.prompt != nil {
                map["prompt"] = self.prompt!
            }
            if self.runAllStep != nil {
                map["run_all_step"] = self.runAllStep!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["model"] as? String {
                self.model = value
            }
            if let value = dict["prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["run_all_step"] as? Bool {
                self.runAllStep = value
            }
        }
    }
    public var appName: String?

    public var data: [CreateRagEvaluatorTaskRequest.Data]?

    public var dataSourceConfig: Any?

    public var emails: [String]?

    public var evaluateConfig: CreateRagEvaluatorTaskRequest.EvaluateConfig?

    public var hasDataSource: Bool?

    public var metrics: [Any]?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluateConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["app_name"] = self.appName!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.dataSourceConfig != nil {
            map["data_source_config"] = self.dataSourceConfig!
        }
        if self.emails != nil {
            map["emails"] = self.emails!
        }
        if self.evaluateConfig != nil {
            map["evaluate_config"] = self.evaluateConfig?.toMap()
        }
        if self.hasDataSource != nil {
            map["has_data_source"] = self.hasDataSource!
        }
        if self.metrics != nil {
            map["metrics"] = self.metrics!
        }
        if self.taskName != nil {
            map["task_name"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["app_name"] as? String {
            self.appName = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [CreateRagEvaluatorTaskRequest.Data] = []
            for v in value {
                if v != nil {
                    var model = CreateRagEvaluatorTaskRequest.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["data_source_config"] as? Any {
            self.dataSourceConfig = value
        }
        if let value = dict["emails"] as? [String] {
            self.emails = value
        }
        if let value = dict["evaluate_config"] as? [String: Any?] {
            var model = CreateRagEvaluatorTaskRequest.EvaluateConfig()
            model.fromMap(value)
            self.evaluateConfig = model
        }
        if let value = dict["has_data_source"] as? Bool {
            self.hasDataSource = value
        }
        if let value = dict["metrics"] as? [Any] {
            self.metrics = value
        }
        if let value = dict["task_name"] as? String {
            self.taskName = value
        }
    }
}

public class CreateRagEvaluatorTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: CreateRagEvaluatorTaskResponseBody.Result?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateRagEvaluatorTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateRagEvaluatorTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRagEvaluatorTaskResponseBody?

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
            var model = CreateRagEvaluatorTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public var computeResource: Int32?

        public var docSize: Int32?

        public var spec: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.computeResource != nil {
                map["computeResource"] = self.computeResource!
            }
            if self.docSize != nil {
                map["docSize"] = self.docSize!
            }
            if self.spec != nil {
                map["spec"] = self.spec!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["computeResource"] as? Int32 {
                self.computeResource = value
            }
            if let value = dict["docSize"] as? Int32 {
                self.docSize = value
            }
            if let value = dict["spec"] as? String {
                self.spec = value
            }
        }
    }
    public var chargeType: String?

    public var engineType: String?

    public var name: String?

    public var quota: CreateWorkspaceRequest.Quota?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.engineType != nil {
            map["engineType"] = self.engineType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["engineType"] as? String {
            self.engineType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["quota"] as? [String: Any?] {
            var model = CreateWorkspaceRequest.Quota()
            model.fromMap(value)
            self.quota = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if self.tagKey != nil {
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var chargeType: String?

        public var commodityCode: String?

        public var description_: String?

        public var domainName: String?

        public var engineType: String?

        public var id: String?

        public var instanceId: String?

        public var name: String?

        public var quota: CreateWorkspaceResponseBody.Result.Quota?

        public var resourceGroupId: String?

        public var tags: [CreateWorkspaceResponseBody.Result.Tags]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domainName != nil {
                map["domainName"] = self.domainName!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domainName"] as? String {
                self.domainName = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = CreateWorkspaceResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [CreateWorkspaceResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = CreateWorkspaceResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateWorkspaceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateWorkspaceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCapabilityRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteCapabilityResponseBody : Tea.TeaModel {
    public var httpCode: Int64?

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
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DeleteCapabilityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCapabilityResponseBody?

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
            var model = DeleteCapabilityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteConfigRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var configType: String?

        public var deleted: Bool?

        public var id: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configType != nil {
                map["configType"] = self.configType!
            }
            if self.deleted != nil {
                map["deleted"] = self.deleted!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configType"] as? String {
                self.configType = value
            }
            if let value = dict["deleted"] as? Bool {
                self.deleted = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var result: DeleteConfigResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DeleteConfigResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DeleteConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConfigResponseBody?

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
            var model = DeleteConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCredentialsRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteCredentialsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCredentialsResponseBody?

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
            var model = DeleteCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExperienceDataRequest : Tea.TeaModel {
    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class DeleteExperienceDataResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteExperienceDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperienceDataResponseBody?

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
            var model = DeleteExperienceDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFunctionInstanceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteFunctionInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DeleteFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFunctionInstanceResponseBody?

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
            var model = DeleteFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteOfflineTaskRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteOfflineTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Bool {
            self.result = value
        }
    }
}

public class DeleteOfflineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOfflineTaskResponseBody?

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
            var model = DeleteOfflineTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRagEvaluatorTaskRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteRagEvaluatorTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRagEvaluatorTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRagEvaluatorTaskResponseBody?

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
            var model = DeleteRagEvaluatorTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWorkspaceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteWorkspaceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["instanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
        }
    }
    public var requestId: String?

    public var result: DeleteWorkspaceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DeleteWorkspaceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DeleteWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceResponseBody?

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
            var model = DeleteWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCapabilityRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DescribeCapabilityResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int64?

        public var isDefault: Bool?

        public var itemCategory: String?

        public var itemDesc: String?

        public var itemName: String?

        public var itemValue: [String: Any]?

        public var status: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.itemCategory != nil {
                map["itemCategory"] = self.itemCategory!
            }
            if self.itemDesc != nil {
                map["itemDesc"] = self.itemDesc!
            }
            if self.itemName != nil {
                map["itemName"] = self.itemName!
            }
            if self.itemValue != nil {
                map["itemValue"] = self.itemValue!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["isDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["itemCategory"] as? String {
                self.itemCategory = value
            }
            if let value = dict["itemDesc"] as? String {
                self.itemDesc = value
            }
            if let value = dict["itemName"] as? String {
                self.itemName = value
            }
            if let value = dict["itemValue"] as? [String: Any] {
                self.itemValue = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var httpCode: Int64?

    public var requestId: String?

    public var result: DescribeCapabilityResponseBody.Result?

    public var status: String?

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
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeCapabilityResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DescribeCapabilityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCapabilityResponseBody?

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
            var model = DescribeCapabilityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAsyncTaskRequest : Tea.TeaModel {
    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class GetAsyncTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int64?

        public var dataId: Int32?

        public var id: String?

        public var name: String?

        public var result: String?

        public var serviceId: String?

        public var serviceType: String?

        public var status: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.dataId != nil {
                map["dataId"] = self.dataId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["dataId"] as? Int32 {
                self.dataId = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["result"] as? String {
                self.result = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: GetAsyncTaskResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetAsyncTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsyncTaskResponseBody?

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
            var model = GetAsyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConfigRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var configData: [String: Any]?

        public var configType: String?

        public var createdAt: Int64?

        public var updatedAt: Int64?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configData != nil {
                map["configData"] = self.configData!
            }
            if self.configType != nil {
                map["configType"] = self.configType!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configData"] as? [String: Any] {
                self.configData = value
            }
            if let value = dict["configType"] as? String {
                self.configType = value
            }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var result: GetConfigResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetConfigResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConfigResponseBody?

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
            var model = GetConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCredentialsRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetCredentialsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appGroupId: Int64?

        public var enabled: Bool?

        public var token: String?

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
            if self.appGroupId != nil {
                map["appGroupId"] = self.appGroupId!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appGroupId"] as? Int64 {
                self.appGroupId = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: GetCredentialsResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetCredentialsResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCredentialsResponseBody?

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
            var model = GetCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperienceDataRequest : Tea.TeaModel {
    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class GetExperienceDataResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var contentType: String?

        public var created: Int64?

        public var dataSize: Int64?

        public var dataType: String?

        public var dataValue: String?

        public var id: Int64?

        public var name: String?

        public var serviceType: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.dataSize != nil {
                map["dataSize"] = self.dataSize!
            }
            if self.dataType != nil {
                map["dataType"] = self.dataType!
            }
            if self.dataValue != nil {
                map["dataValue"] = self.dataValue!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contentType"] as? String {
                self.contentType = value
            }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["dataSize"] as? Int64 {
                self.dataSize = value
            }
            if let value = dict["dataType"] as? String {
                self.dataType = value
            }
            if let value = dict["dataValue"] as? String {
                self.dataValue = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: GetExperienceDataResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetExperienceDataResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetExperienceDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperienceDataResponseBody?

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
            var model = GetExperienceDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFunctionInstanceRequest : Tea.TeaModel {
    public var output: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.output != nil {
            map["output"] = self.output!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["output"] as? String {
            self.output = value
        }
    }
}

public class GetFunctionInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Belongs : Tea.TeaModel {
            public var category: String?

            public var domain: String?

            public var language: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.language != nil {
                    map["language"] = self.language!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["domain"] as? String {
                    self.domain = value
                }
                if let value = dict["language"] as? String {
                    self.language = value
                }
            }
        }
        public class CreateParameters : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public class Task : Tea.TeaModel {
            public var dagStatus: String?

            public var lastRunTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dagStatus != nil {
                    map["dagStatus"] = self.dagStatus!
                }
                if self.lastRunTime != nil {
                    map["lastRunTime"] = self.lastRunTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dagStatus"] as? String {
                    self.dagStatus = value
                }
                if let value = dict["lastRunTime"] as? Int64 {
                    self.lastRunTime = value
                }
            }
        }
        public var belongs: GetFunctionInstanceResponseBody.Result.Belongs?

        public var createParameters: [GetFunctionInstanceResponseBody.Result.CreateParameters]?

        public var createTime: Int64?

        public var cron: String?

        public var description_: String?

        public var extendInfo: String?

        public var functionName: String?

        public var functionType: String?

        public var instanceName: String?

        public var modelType: String?

        public var source: String?

        public var status: String?

        public var task: GetFunctionInstanceResponseBody.Result.Task?

        public var versionId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.belongs?.validate()
            try self.task?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.belongs != nil {
                map["belongs"] = self.belongs?.toMap()
            }
            if self.createParameters != nil {
                var tmp : [Any] = []
                for k in self.createParameters! {
                    tmp.append(k.toMap())
                }
                map["createParameters"] = tmp
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.extendInfo != nil {
                map["extendInfo"] = self.extendInfo!
            }
            if self.functionName != nil {
                map["functionName"] = self.functionName!
            }
            if self.functionType != nil {
                map["functionType"] = self.functionType!
            }
            if self.instanceName != nil {
                map["instanceName"] = self.instanceName!
            }
            if self.modelType != nil {
                map["modelType"] = self.modelType!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.task != nil {
                map["task"] = self.task?.toMap()
            }
            if self.versionId != nil {
                map["versionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["belongs"] as? [String: Any?] {
                var model = GetFunctionInstanceResponseBody.Result.Belongs()
                model.fromMap(value)
                self.belongs = model
            }
            if let value = dict["createParameters"] as? [Any?] {
                var tmp : [GetFunctionInstanceResponseBody.Result.CreateParameters] = []
                for v in value {
                    if v != nil {
                        var model = GetFunctionInstanceResponseBody.Result.CreateParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.createParameters = tmp
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["extendInfo"] as? String {
                self.extendInfo = value
            }
            if let value = dict["functionName"] as? String {
                self.functionName = value
            }
            if let value = dict["functionType"] as? String {
                self.functionType = value
            }
            if let value = dict["instanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["modelType"] as? String {
                self.modelType = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["task"] as? [String: Any?] {
                var model = GetFunctionInstanceResponseBody.Result.Task()
                model.fromMap(value)
                self.task = model
            }
            if let value = dict["versionId"] as? Int64 {
                self.versionId = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: GetFunctionInstanceResponseBody.Result?

    public var status: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetFunctionInstanceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class GetFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionInstanceResponseBody?

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
            var model = GetFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOfflineTaskRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetOfflineTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var computeResource: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.taskName != nil {
                    map["taskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? String {
                    self.computeResource = value
                }
                if let value = dict["taskName"] as? String {
                    self.taskName = value
                }
            }
        }
        public class Processors : Tea.TeaModel {
            public var input: [String: Any]?

            public var name: String?

            public var parameters: [String: Any]?

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
                if self.input != nil {
                    map["input"] = self.input!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["input"] as? [String: Any] {
                    self.input = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Sink : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Source : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Status : Tea.TeaModel {
            public var createTime: Int64?

            public var deleteTime: Int64?

            public var errorMessage: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.deleteTime != nil {
                    map["deleteTime"] = self.deleteTime!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["deleteTime"] as? Int64 {
                    self.deleteTime = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var meta: GetOfflineTaskResponseBody.Result.Meta?

        public var parameters: [String: Any]?

        public var processors: [GetOfflineTaskResponseBody.Result.Processors]?

        public var sink: [GetOfflineTaskResponseBody.Result.Sink]?

        public var source: [GetOfflineTaskResponseBody.Result.Source]?

        public var status: GetOfflineTaskResponseBody.Result.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meta?.validate()
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meta != nil {
                map["meta"] = self.meta?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.processors != nil {
                var tmp : [Any] = []
                for k in self.processors! {
                    tmp.append(k.toMap())
                }
                map["processors"] = tmp
            }
            if self.sink != nil {
                var tmp : [Any] = []
                for k in self.sink! {
                    tmp.append(k.toMap())
                }
                map["sink"] = tmp
            }
            if self.source != nil {
                var tmp : [Any] = []
                for k in self.source! {
                    tmp.append(k.toMap())
                }
                map["source"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["meta"] as? [String: Any?] {
                var model = GetOfflineTaskResponseBody.Result.Meta()
                model.fromMap(value)
                self.meta = model
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["processors"] as? [Any?] {
                var tmp : [GetOfflineTaskResponseBody.Result.Processors] = []
                for v in value {
                    if v != nil {
                        var model = GetOfflineTaskResponseBody.Result.Processors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.processors = tmp
            }
            if let value = dict["sink"] as? [Any?] {
                var tmp : [GetOfflineTaskResponseBody.Result.Sink] = []
                for v in value {
                    if v != nil {
                        var model = GetOfflineTaskResponseBody.Result.Sink()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sink = tmp
            }
            if let value = dict["source"] as? [Any?] {
                var tmp : [GetOfflineTaskResponseBody.Result.Source] = []
                for v in value {
                    if v != nil {
                        var model = GetOfflineTaskResponseBody.Result.Source()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.source = tmp
            }
            if let value = dict["status"] as? [String: Any?] {
                var model = GetOfflineTaskResponseBody.Result.Status()
                model.fromMap(value)
                self.status = model
            }
        }
    }
    public var requestId: String?

    public var result: GetOfflineTaskResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetOfflineTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetOfflineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOfflineTaskResponseBody?

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
            var model = GetOfflineTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOfflineTaskLogRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetOfflineTaskLogResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Network : Tea.TeaModel {
            public class PrivateEs : Tea.TeaModel {
                public class WhiteIpGroup : Tea.TeaModel {
                    public var groupName: String?

                    public var ips: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.groupName != nil {
                            map["groupName"] = self.groupName!
                        }
                        if self.ips != nil {
                            map["ips"] = self.ips!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["groupName"] as? String {
                            self.groupName = value
                        }
                        if let value = dict["ips"] as? [String] {
                            self.ips = value
                        }
                    }
                }
                public var domain: String?

                public var enabled: Bool?

                public var whiteIpGroup: [GetOfflineTaskLogResponseBody.Result.Network.PrivateEs.WhiteIpGroup]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.domain != nil {
                        map["domain"] = self.domain!
                    }
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.whiteIpGroup != nil {
                        var tmp : [Any] = []
                        for k in self.whiteIpGroup! {
                            tmp.append(k.toMap())
                        }
                        map["whiteIpGroup"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["domain"] as? String {
                        self.domain = value
                    }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["whiteIpGroup"] as? [Any?] {
                        var tmp : [GetOfflineTaskLogResponseBody.Result.Network.PrivateEs.WhiteIpGroup] = []
                        for v in value {
                            if v != nil {
                                var model = GetOfflineTaskLogResponseBody.Result.Network.PrivateEs.WhiteIpGroup()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.whiteIpGroup = tmp
                    }
                }
            }
            public class PublicEs : Tea.TeaModel {
                public class WhiteIpGroup : Tea.TeaModel {
                    public var groupName: String?

                    public var ips: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.groupName != nil {
                            map["groupName"] = self.groupName!
                        }
                        if self.ips != nil {
                            map["ips"] = self.ips!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["groupName"] as? String {
                            self.groupName = value
                        }
                        if let value = dict["ips"] as? [String] {
                            self.ips = value
                        }
                    }
                }
                public var domain: String?

                public var enabled: Bool?

                public var whiteIpGroup: [GetOfflineTaskLogResponseBody.Result.Network.PublicEs.WhiteIpGroup]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.domain != nil {
                        map["domain"] = self.domain!
                    }
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.whiteIpGroup != nil {
                        var tmp : [Any] = []
                        for k in self.whiteIpGroup! {
                            tmp.append(k.toMap())
                        }
                        map["whiteIpGroup"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["domain"] as? String {
                        self.domain = value
                    }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["whiteIpGroup"] as? [Any?] {
                        var tmp : [GetOfflineTaskLogResponseBody.Result.Network.PublicEs.WhiteIpGroup] = []
                        for v in value {
                            if v != nil {
                                var model = GetOfflineTaskLogResponseBody.Result.Network.PublicEs.WhiteIpGroup()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.whiteIpGroup = tmp
                    }
                }
            }
            public var privateEs: GetOfflineTaskLogResponseBody.Result.Network.PrivateEs?

            public var publicEs: GetOfflineTaskLogResponseBody.Result.Network.PublicEs?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.privateEs?.validate()
                try self.publicEs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.privateEs != nil {
                    map["privateEs"] = self.privateEs?.toMap()
                }
                if self.publicEs != nil {
                    map["publicEs"] = self.publicEs?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["privateEs"] as? [String: Any?] {
                    var model = GetOfflineTaskLogResponseBody.Result.Network.PrivateEs()
                    model.fromMap(value)
                    self.privateEs = model
                }
                if let value = dict["publicEs"] as? [String: Any?] {
                    var model = GetOfflineTaskLogResponseBody.Result.Network.PublicEs()
                    model.fromMap(value)
                    self.publicEs = model
                }
            }
        }
        public var network: GetOfflineTaskLogResponseBody.Result.Network?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.network?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["network"] as? [String: Any?] {
                var model = GetOfflineTaskLogResponseBody.Result.Network()
                model.fromMap(value)
                self.network = model
            }
        }
    }
    public var requestId: String?

    public var result: GetOfflineTaskLogResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetOfflineTaskLogResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetOfflineTaskLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOfflineTaskLogResponseBody?

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
            var model = GetOfflineTaskLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRagEvaluatorTaskRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetRagEvaluatorTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class GetRagEvaluatorTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRagEvaluatorTaskResponseBody?

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
            var model = GetRagEvaluatorTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableColumnsRequest : Tea.TeaModel {
    public var params: String?

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
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? String {
            self.params = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetTableColumnsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var comment: String?

        public var name: String?

        public var primary: Bool?

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
            if self.comment != nil {
                map["comment"] = self.comment!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.primary != nil {
                map["primary"] = self.primary!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["comment"] as? String {
                self.comment = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["primary"] as? Bool {
                self.primary = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: [GetTableColumnsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [GetTableColumnsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = GetTableColumnsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class GetTableColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableColumnsResponseBody?

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
            var model = GetTableColumnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableFieldsRequest : Tea.TeaModel {
    public var params: String?

    public var rawType: Bool?

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
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.rawType != nil {
            map["rawType"] = self.rawType!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? String {
            self.params = value
        }
        if let value = dict["rawType"] as? Bool {
            self.rawType = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetTableFieldsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class GetTableFieldsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableFieldsResponseBody?

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
            var model = GetTableFieldsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTablesRequest : Tea.TeaModel {
    public var params: String?

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
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? String {
            self.params = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetTablesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String] {
            self.result = value
        }
    }
}

public class GetTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTablesResponseBody?

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
            var model = GetTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkspaceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetWorkspaceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if self.tagKey != nil {
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var apiToken: String?

        public var chargeType: String?

        public var commodityCode: String?

        public var description_: String?

        public var domainName: String?

        public var engineType: String?

        public var id: String?

        public var instanceId: String?

        public var name: String?

        public var quota: GetWorkspaceResponseBody.Result.Quota?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [GetWorkspaceResponseBody.Result.Tags]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiToken != nil {
                map["apiToken"] = self.apiToken!
            }
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domainName != nil {
                map["domainName"] = self.domainName!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiToken"] as? String {
                self.apiToken = value
            }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domainName"] as? String {
                self.domainName = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = GetWorkspaceResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [GetWorkspaceResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkspaceResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: GetWorkspaceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetWorkspaceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkspaceResponseBody?

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
            var model = GetWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAsyncTasksRequest : Tea.TeaModel {
    public var dataId: Int32?

    public var dryRun: Bool?

    public var serviceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataId != nil {
            map["dataId"] = self.dataId!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataId"] as? Int32 {
            self.dataId = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
    }
}

public class ListAsyncTasksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int64?

        public var dataId: Int32?

        public var id: String?

        public var name: String?

        public var result: String?

        public var serviceId: String?

        public var serviceType: String?

        public var status: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.dataId != nil {
                map["dataId"] = self.dataId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["dataId"] as? Int32 {
                self.dataId = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["result"] as? String {
                self.result = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListAsyncTasksResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListAsyncTasksResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListAsyncTasksResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListAsyncTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAsyncTasksResponseBody?

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
            var model = ListAsyncTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCapabilitiesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class ListCapabilitiesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int64?

        public var isDefault: Bool?

        public var itemCategory: String?

        public var itemDesc: String?

        public var itemName: String?

        public var itemValue: [String: Any]?

        public var status: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.itemCategory != nil {
                map["itemCategory"] = self.itemCategory!
            }
            if self.itemDesc != nil {
                map["itemDesc"] = self.itemDesc!
            }
            if self.itemName != nil {
                map["itemName"] = self.itemName!
            }
            if self.itemValue != nil {
                map["itemValue"] = self.itemValue!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["isDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["itemCategory"] as? String {
                self.itemCategory = value
            }
            if let value = dict["itemDesc"] as? String {
                self.itemDesc = value
            }
            if let value = dict["itemName"] as? String {
                self.itemName = value
            }
            if let value = dict["itemValue"] as? [String: Any] {
                self.itemValue = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var httpCode: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var result: [ListCapabilitiesResponseBody.Result]?

    public var status: String?

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
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListCapabilitiesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListCapabilitiesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListCapabilitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCapabilitiesResponseBody?

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
            var model = ListCapabilitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConfigsRequest : Tea.TeaModel {
    public var filter: String?

    public var page: Int32?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListConfigsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var configData: [String: Any]?

        public var configType: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configData != nil {
                map["configData"] = self.configData!
            }
            if self.configType != nil {
                map["configType"] = self.configType!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configData"] as? [String: Any] {
                self.configData = value
            }
            if let value = dict["configType"] as? String {
                self.configType = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var page: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var result: [ListConfigsResponseBody.Result]?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListConfigsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListConfigsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConfigsResponseBody?

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
            var model = ListConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCredentialsRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListCredentialsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appGroupId: Int64?

        public var enabled: Bool?

        public var token: String?

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
            if self.appGroupId != nil {
                map["appGroupId"] = self.appGroupId!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appGroupId"] as? Int64 {
                self.appGroupId = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListCredentialsResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListCredentialsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListCredentialsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCredentialsResponseBody?

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
            var model = ListCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperienceDataRequest : Tea.TeaModel {
    public var dataType: String?

    public var dryRun: Bool?

    public var serviceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
    }
}

public class ListExperienceDataResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var contentType: String?

        public var created: Int64?

        public var dataSize: Int64?

        public var dataType: String?

        public var dataValue: String?

        public var id: Int64?

        public var name: String?

        public var serviceType: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.dataSize != nil {
                map["dataSize"] = self.dataSize!
            }
            if self.dataType != nil {
                map["dataType"] = self.dataType!
            }
            if self.dataValue != nil {
                map["dataValue"] = self.dataValue!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contentType"] as? String {
                self.contentType = value
            }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["dataSize"] as? Int64 {
                self.dataSize = value
            }
            if let value = dict["dataType"] as? String {
                self.dataType = value
            }
            if let value = dict["dataValue"] as? String {
                self.dataValue = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListExperienceDataResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListExperienceDataResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListExperienceDataResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListExperienceDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperienceDataResponseBody?

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
            var model = ListExperienceDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFunctionInstancesRequest : Tea.TeaModel {
    public var functionType: String?

    public var modelType: String?

    public var output: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionType != nil {
            map["functionType"] = self.functionType!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.output != nil {
            map["output"] = self.output!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionType"] as? String {
            self.functionType = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["output"] as? String {
            self.output = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
    }
}

public class ListFunctionInstancesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Belongs : Tea.TeaModel {
            public var category: String?

            public var domain: String?

            public var language: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.language != nil {
                    map["language"] = self.language!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["domain"] as? String {
                    self.domain = value
                }
                if let value = dict["language"] as? String {
                    self.language = value
                }
            }
        }
        public class CreateParameters : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var belongs: ListFunctionInstancesResponseBody.Result.Belongs?

        public var createParameters: [ListFunctionInstancesResponseBody.Result.CreateParameters]?

        public var createTime: Int64?

        public var cron: String?

        public var description_: String?

        public var extendInfo: String?

        public var functionName: String?

        public var functionType: String?

        public var instanceName: String?

        public var modelType: String?

        public var source: String?

        public var status: String?

        public var usageParameters: [[String: Any]]?

        public var versionId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.belongs?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.belongs != nil {
                map["belongs"] = self.belongs?.toMap()
            }
            if self.createParameters != nil {
                var tmp : [Any] = []
                for k in self.createParameters! {
                    tmp.append(k.toMap())
                }
                map["createParameters"] = tmp
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.extendInfo != nil {
                map["extendInfo"] = self.extendInfo!
            }
            if self.functionName != nil {
                map["functionName"] = self.functionName!
            }
            if self.functionType != nil {
                map["functionType"] = self.functionType!
            }
            if self.instanceName != nil {
                map["instanceName"] = self.instanceName!
            }
            if self.modelType != nil {
                map["modelType"] = self.modelType!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.usageParameters != nil {
                map["usageParameters"] = self.usageParameters!
            }
            if self.versionId != nil {
                map["versionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["belongs"] as? [String: Any?] {
                var model = ListFunctionInstancesResponseBody.Result.Belongs()
                model.fromMap(value)
                self.belongs = model
            }
            if let value = dict["createParameters"] as? [Any?] {
                var tmp : [ListFunctionInstancesResponseBody.Result.CreateParameters] = []
                for v in value {
                    if v != nil {
                        var model = ListFunctionInstancesResponseBody.Result.CreateParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.createParameters = tmp
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["extendInfo"] as? String {
                self.extendInfo = value
            }
            if let value = dict["functionName"] as? String {
                self.functionName = value
            }
            if let value = dict["functionType"] as? String {
                self.functionType = value
            }
            if let value = dict["instanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["modelType"] as? String {
                self.modelType = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["usageParameters"] as? [[String: Any]] {
                self.usageParameters = value
            }
            if let value = dict["versionId"] as? Int64 {
                self.versionId = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: [ListFunctionInstancesResponseBody.Result]?

    public var status: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListFunctionInstancesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListFunctionInstancesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListFunctionInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionInstancesResponseBody?

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
            var model = ListFunctionInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFunctionRestrictionsRequest : Tea.TeaModel {
    public var modelType: String?

    public var region: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
    }
}

public class ListFunctionRestrictionsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var meta: [String: Any]?

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
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["meta"] as? [String: Any] {
                self.meta = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Double?

    public var message: String?

    public var requestId: String?

    public var result: [ListFunctionRestrictionsResponseBody.Result]?

    public var status: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["latency"] as? Double {
            self.latency = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListFunctionRestrictionsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListFunctionRestrictionsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListFunctionRestrictionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionRestrictionsResponseBody?

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
            var model = ListFunctionRestrictionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOfflineTaskRequest : Tea.TeaModel {
    public var labels: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var taskName: String?

    public var taskStatus: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.taskStatus != nil {
            map["taskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["labels"] as? [String] {
            self.labels = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["taskStatus"] as? [String] {
            self.taskStatus = value
        }
    }
}

public class ListOfflineTaskShrinkRequest : Tea.TeaModel {
    public var labelsShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var taskName: String?

    public var taskStatusShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelsShrink != nil {
            map["labels"] = self.labelsShrink!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.taskStatusShrink != nil {
            map["taskStatus"] = self.taskStatusShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["labels"] as? String {
            self.labelsShrink = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["taskStatus"] as? String {
            self.taskStatusShrink = value
        }
    }
}

public class ListOfflineTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var labels: [String]?

            public var regionId: String?

            public var taskName: String?

            public var workspaceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Labels"] as? [String] {
                    self.labels = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public class Processors : Tea.TeaModel {
            public var input: [String: String]?

            public var name: String?

            public var output: [String: String]?

            public var parameters: [String: String]?

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
                if self.input != nil {
                    map["Input"] = self.input!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.output != nil {
                    map["Output"] = self.output!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Input"] as? [String: String] {
                    self.input = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Output"] as? [String: String] {
                    self.output = value
                }
                if let value = dict["Parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Sink : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["Schema"] = self.schema!
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
                if let value = dict["Parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["PrimaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["Schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Source : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["Schema"] = self.schema!
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
                if let value = dict["Parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["PrimaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["Schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Status : Tea.TeaModel {
            public var createTime: Int64?

            public var metricData: [String: String]?

            public var status: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
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
                if self.metricData != nil {
                    map["MetricData"] = self.metricData!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["MetricData"] as? [String: String] {
                    self.metricData = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public var meta: ListOfflineTaskResponseBody.Result.Meta?

        public var processors: [ListOfflineTaskResponseBody.Result.Processors]?

        public var sink: [ListOfflineTaskResponseBody.Result.Sink]?

        public var source: [ListOfflineTaskResponseBody.Result.Source]?

        public var status: ListOfflineTaskResponseBody.Result.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meta?.validate()
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meta != nil {
                map["Meta"] = self.meta?.toMap()
            }
            if self.processors != nil {
                var tmp : [Any] = []
                for k in self.processors! {
                    tmp.append(k.toMap())
                }
                map["Processors"] = tmp
            }
            if self.sink != nil {
                var tmp : [Any] = []
                for k in self.sink! {
                    tmp.append(k.toMap())
                }
                map["Sink"] = tmp
            }
            if self.source != nil {
                var tmp : [Any] = []
                for k in self.source! {
                    tmp.append(k.toMap())
                }
                map["Source"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Meta"] as? [String: Any?] {
                var model = ListOfflineTaskResponseBody.Result.Meta()
                model.fromMap(value)
                self.meta = model
            }
            if let value = dict["Processors"] as? [Any?] {
                var tmp : [ListOfflineTaskResponseBody.Result.Processors] = []
                for v in value {
                    if v != nil {
                        var model = ListOfflineTaskResponseBody.Result.Processors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.processors = tmp
            }
            if let value = dict["Sink"] as? [Any?] {
                var tmp : [ListOfflineTaskResponseBody.Result.Sink] = []
                for v in value {
                    if v != nil {
                        var model = ListOfflineTaskResponseBody.Result.Sink()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sink = tmp
            }
            if let value = dict["Source"] as? [Any?] {
                var tmp : [ListOfflineTaskResponseBody.Result.Source] = []
                for v in value {
                    if v != nil {
                        var model = ListOfflineTaskResponseBody.Result.Source()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.source = tmp
            }
            if let value = dict["Status"] as? [String: Any?] {
                var model = ListOfflineTaskResponseBody.Result.Status()
                model.fromMap(value)
                self.status = model
            }
        }
    }
    public var requestId: String?

    public var result: [ListOfflineTaskResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListOfflineTaskResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListOfflineTaskResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListOfflineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOfflineTaskResponseBody?

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
            var model = ListOfflineTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOfflineTaskErrorLogsRequest : Tea.TeaModel {
    public var endTime: Int32?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["startTime"] as? Int32 {
            self.startTime = value
        }
    }
}

public class ListOfflineTaskErrorLogsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var request: String?

        public var response: String?

        public var retry: String?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.request != nil {
                map["request"] = self.request!
            }
            if self.response != nil {
                map["response"] = self.response!
            }
            if self.retry != nil {
                map["retry"] = self.retry!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["request"] as? String {
                self.request = value
            }
            if let value = dict["response"] as? String {
                self.response = value
            }
            if let value = dict["retry"] as? String {
                self.retry = value
            }
            if let value = dict["timestamp"] as? String {
                self.timestamp = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListOfflineTaskErrorLogsResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListOfflineTaskErrorLogsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListOfflineTaskErrorLogsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListOfflineTaskErrorLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOfflineTaskErrorLogsResponseBody?

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
            var model = ListOfflineTaskErrorLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRagEvaluatorTasksRequest : Tea.TeaModel {
    public var pageNumber: String?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class ListRagEvaluatorTasksResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: [String: Any]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRagEvaluatorTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRagEvaluatorTasksResponseBody?

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
            var model = ListRagEvaluatorTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public var modelType: String?

    public var name: String?

    public var serviceId: String?

    public var serviceType: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["serviceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chargeWay: [String]?

        public var description_: String?

        public var meta: [String: Any]?

        public var modelType: String?

        public var name: String?

        public var serviceId: String?

        public var serviceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeWay != nil {
                map["chargeWay"] = self.chargeWay!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.modelType != nil {
                map["modelType"] = self.modelType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeWay"] as? [String] {
                self.chargeWay = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["meta"] as? [String: Any] {
                self.meta = value
            }
            if let value = dict["modelType"] as? String {
                self.modelType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListServicesResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListServicesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListServicesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

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
            var model = ListServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var sortBy: Int32?

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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.sortBy != nil {
            map["sortBy"] = self.sortBy!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["sortBy"] as? Int32 {
            self.sortBy = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if self.tagKey != nil {
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var apiToken: String?

        public var chargeType: String?

        public var description_: String?

        public var domainName: String?

        public var engineType: String?

        public var id: String?

        public var instanceId: String?

        public var name: String?

        public var quota: ListWorkspacesResponseBody.Result.Quota?

        public var resourceGroupId: String?

        public var tags: [ListWorkspacesResponseBody.Result.Tags]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiToken != nil {
                map["apiToken"] = self.apiToken!
            }
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domainName != nil {
                map["domainName"] = self.domainName!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiToken"] as? String {
                self.apiToken = value
            }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domainName"] as? String {
                self.domainName = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = ListWorkspacesResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListWorkspacesResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListWorkspacesResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListWorkspacesResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListWorkspacesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspacesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

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
            var model = ListWorkspacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyOfflineTaskRequest : Tea.TeaModel {
    public class Meta : Tea.TeaModel {
        public var apiKey: String?

        public var computeResource: String?

        public var labels: [String]?

        public var regionId: String?

        public var taskName: String?

        public override init() {
            super.init()
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
            if self.computeResource != nil {
                map["computeResource"] = self.computeResource!
            }
            if self.labels != nil {
                map["labels"] = self.labels!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["computeResource"] as? String {
                self.computeResource = value
            }
            if let value = dict["labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
        }
    }
    public class Processors : Tea.TeaModel {
        public var input: [String: Any]?

        public var name: String?

        public var output: [String: Any]?

        public var parameters: [String: Any]?

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
            if self.input != nil {
                map["input"] = self.input!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.output != nil {
                map["output"] = self.output!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["input"] as? [String: Any] {
                self.input = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["output"] as? [String: Any] {
                self.output = value
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Sink : Tea.TeaModel {
        public var name: String?

        public var parameters: [String: String]?

        public var primaryKey: String?

        public var schema: [[String: String]]?

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
                map["name"] = self.name!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.primaryKey != nil {
                map["primaryKey"] = self.primaryKey!
            }
            if self.schema != nil {
                map["schema"] = self.schema!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parameters"] as? [String: String] {
                self.parameters = value
            }
            if let value = dict["primaryKey"] as? String {
                self.primaryKey = value
            }
            if let value = dict["schema"] as? [[String: String]] {
                self.schema = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Source : Tea.TeaModel {
        public var name: String?

        public var parameters: [String: String]?

        public var primaryKey: String?

        public var schema: [[String: String]]?

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
                map["name"] = self.name!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.primaryKey != nil {
                map["primaryKey"] = self.primaryKey!
            }
            if self.schema != nil {
                map["schema"] = self.schema!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parameters"] as? [String: String] {
                self.parameters = value
            }
            if let value = dict["primaryKey"] as? String {
                self.primaryKey = value
            }
            if let value = dict["schema"] as? [[String: String]] {
                self.schema = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Status : Tea.TeaModel {
        public var createTime: Int64?

        public var deleteTime: Int64?

        public var errorMessage: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.deleteTime != nil {
                map["deleteTime"] = self.deleteTime!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["deleteTime"] as? Int64 {
                self.deleteTime = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var meta: ModifyOfflineTaskRequest.Meta?

    public var parameters: [String: Any]?

    public var processors: [ModifyOfflineTaskRequest.Processors]?

    public var sink: [ModifyOfflineTaskRequest.Sink]?

    public var source: [ModifyOfflineTaskRequest.Source]?

    public var status: ModifyOfflineTaskRequest.Status?

    public var dryRun: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.meta?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meta != nil {
            map["meta"] = self.meta?.toMap()
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.processors != nil {
            var tmp : [Any] = []
            for k in self.processors! {
                tmp.append(k.toMap())
            }
            map["processors"] = tmp
        }
        if self.sink != nil {
            var tmp : [Any] = []
            for k in self.sink! {
                tmp.append(k.toMap())
            }
            map["sink"] = tmp
        }
        if self.source != nil {
            var tmp : [Any] = []
            for k in self.source! {
                tmp.append(k.toMap())
            }
            map["source"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["meta"] as? [String: Any?] {
            var model = ModifyOfflineTaskRequest.Meta()
            model.fromMap(value)
            self.meta = model
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["processors"] as? [Any?] {
            var tmp : [ModifyOfflineTaskRequest.Processors] = []
            for v in value {
                if v != nil {
                    var model = ModifyOfflineTaskRequest.Processors()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.processors = tmp
        }
        if let value = dict["sink"] as? [Any?] {
            var tmp : [ModifyOfflineTaskRequest.Sink] = []
            for v in value {
                if v != nil {
                    var model = ModifyOfflineTaskRequest.Sink()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sink = tmp
        }
        if let value = dict["source"] as? [Any?] {
            var tmp : [ModifyOfflineTaskRequest.Source] = []
            for v in value {
                if v != nil {
                    var model = ModifyOfflineTaskRequest.Source()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.source = tmp
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = ModifyOfflineTaskRequest.Status()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyOfflineTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var computeResource: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.taskName != nil {
                    map["taskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? String {
                    self.computeResource = value
                }
                if let value = dict["taskName"] as? String {
                    self.taskName = value
                }
            }
        }
        public class Processors : Tea.TeaModel {
            public var input: [String: Any]?

            public var name: String?

            public var parameters: [String: Any]?

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
                if self.input != nil {
                    map["input"] = self.input!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["input"] as? [String: Any] {
                    self.input = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Sink : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Source : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Status : Tea.TeaModel {
            public var createTime: String?

            public var deleteTime: String?

            public var errorMessage: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.deleteTime != nil {
                    map["deleteTime"] = self.deleteTime!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["deleteTime"] as? String {
                    self.deleteTime = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var meta: ModifyOfflineTaskResponseBody.Result.Meta?

        public var parameters: [String: Any]?

        public var processors: [ModifyOfflineTaskResponseBody.Result.Processors]?

        public var sink: [ModifyOfflineTaskResponseBody.Result.Sink]?

        public var source: [ModifyOfflineTaskResponseBody.Result.Source]?

        public var status: ModifyOfflineTaskResponseBody.Result.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meta?.validate()
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meta != nil {
                map["meta"] = self.meta?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.processors != nil {
                var tmp : [Any] = []
                for k in self.processors! {
                    tmp.append(k.toMap())
                }
                map["processors"] = tmp
            }
            if self.sink != nil {
                var tmp : [Any] = []
                for k in self.sink! {
                    tmp.append(k.toMap())
                }
                map["sink"] = tmp
            }
            if self.source != nil {
                var tmp : [Any] = []
                for k in self.source! {
                    tmp.append(k.toMap())
                }
                map["source"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["meta"] as? [String: Any?] {
                var model = ModifyOfflineTaskResponseBody.Result.Meta()
                model.fromMap(value)
                self.meta = model
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["processors"] as? [Any?] {
                var tmp : [ModifyOfflineTaskResponseBody.Result.Processors] = []
                for v in value {
                    if v != nil {
                        var model = ModifyOfflineTaskResponseBody.Result.Processors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.processors = tmp
            }
            if let value = dict["sink"] as? [Any?] {
                var tmp : [ModifyOfflineTaskResponseBody.Result.Sink] = []
                for v in value {
                    if v != nil {
                        var model = ModifyOfflineTaskResponseBody.Result.Sink()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sink = tmp
            }
            if let value = dict["source"] as? [Any?] {
                var tmp : [ModifyOfflineTaskResponseBody.Result.Source] = []
                for v in value {
                    if v != nil {
                        var model = ModifyOfflineTaskResponseBody.Result.Source()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.source = tmp
            }
            if let value = dict["status"] as? [String: Any?] {
                var model = ModifyOfflineTaskResponseBody.Result.Status()
                model.fromMap(value)
                self.status = model
            }
        }
    }
    public var requestId: String?

    public var result: ModifyOfflineTaskResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ModifyOfflineTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ModifyOfflineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOfflineTaskResponseBody?

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
            var model = ModifyOfflineTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyOfflineTaskLogRequest : Tea.TeaModel {
    public class Network : Tea.TeaModel {
        public class PrivateEs : Tea.TeaModel {
            public class WhiteIpGroup : Tea.TeaModel {
                public var groupName: String?

                public var ips: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.groupName != nil {
                        map["groupName"] = self.groupName!
                    }
                    if self.ips != nil {
                        map["ips"] = self.ips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["groupName"] as? String {
                        self.groupName = value
                    }
                    if let value = dict["ips"] as? [String] {
                        self.ips = value
                    }
                }
            }
            public var enabled: Bool?

            public var whiteIpGroup: [ModifyOfflineTaskLogRequest.Network.PrivateEs.WhiteIpGroup]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.whiteIpGroup != nil {
                    var tmp : [Any] = []
                    for k in self.whiteIpGroup! {
                        tmp.append(k.toMap())
                    }
                    map["whiteIpGroup"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["whiteIpGroup"] as? [Any?] {
                    var tmp : [ModifyOfflineTaskLogRequest.Network.PrivateEs.WhiteIpGroup] = []
                    for v in value {
                        if v != nil {
                            var model = ModifyOfflineTaskLogRequest.Network.PrivateEs.WhiteIpGroup()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.whiteIpGroup = tmp
                }
            }
        }
        public class PublicEs : Tea.TeaModel {
            public class WhiteIpGroup : Tea.TeaModel {
                public var groupName: String?

                public var ips: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.groupName != nil {
                        map["groupName"] = self.groupName!
                    }
                    if self.ips != nil {
                        map["ips"] = self.ips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["groupName"] as? String {
                        self.groupName = value
                    }
                    if let value = dict["ips"] as? [String] {
                        self.ips = value
                    }
                }
            }
            public var enabled: Bool?

            public var whiteIpGroup: [ModifyOfflineTaskLogRequest.Network.PublicEs.WhiteIpGroup]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.whiteIpGroup != nil {
                    var tmp : [Any] = []
                    for k in self.whiteIpGroup! {
                        tmp.append(k.toMap())
                    }
                    map["whiteIpGroup"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["whiteIpGroup"] as? [Any?] {
                    var tmp : [ModifyOfflineTaskLogRequest.Network.PublicEs.WhiteIpGroup] = []
                    for v in value {
                        if v != nil {
                            var model = ModifyOfflineTaskLogRequest.Network.PublicEs.WhiteIpGroup()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.whiteIpGroup = tmp
                }
            }
        }
        public var privateEs: ModifyOfflineTaskLogRequest.Network.PrivateEs?

        public var publicEs: ModifyOfflineTaskLogRequest.Network.PublicEs?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.privateEs?.validate()
            try self.publicEs?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.privateEs != nil {
                map["privateEs"] = self.privateEs?.toMap()
            }
            if self.publicEs != nil {
                map["publicEs"] = self.publicEs?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["privateEs"] as? [String: Any?] {
                var model = ModifyOfflineTaskLogRequest.Network.PrivateEs()
                model.fromMap(value)
                self.privateEs = model
            }
            if let value = dict["publicEs"] as? [String: Any?] {
                var model = ModifyOfflineTaskLogRequest.Network.PublicEs()
                model.fromMap(value)
                self.publicEs = model
            }
        }
    }
    public var network: ModifyOfflineTaskLogRequest.Network?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.network?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.network != nil {
            map["network"] = self.network?.toMap()
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["network"] as? [String: Any?] {
            var model = ModifyOfflineTaskLogRequest.Network()
            model.fromMap(value)
            self.network = model
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyOfflineTaskLogResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class ModifyOfflineTaskLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOfflineTaskLogResponseBody?

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
            var model = ModifyOfflineTaskLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumeFunctionInstanceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class ResumeFunctionInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ResumeFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeFunctionInstanceResponseBody?

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
            var model = ResumeFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartOfflineTaskRequest : Tea.TeaModel {
    public var parallelism: Int32?

    public var timestamp: Int64?

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
        if self.parallelism != nil {
            map["parallelism"] = self.parallelism!
        }
        if self.timestamp != nil {
            map["timestamp"] = self.timestamp!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["parallelism"] as? Int32 {
            self.parallelism = value
        }
        if let value = dict["timestamp"] as? Int64 {
            self.timestamp = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartOfflineTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var computeResource: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.taskName != nil {
                    map["taskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? String {
                    self.computeResource = value
                }
                if let value = dict["taskName"] as? String {
                    self.taskName = value
                }
            }
        }
        public class Processors : Tea.TeaModel {
            public var input: [String: Any]?

            public var name: String?

            public var parameters: [String: Any]?

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
                if self.input != nil {
                    map["input"] = self.input!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["input"] as? [String: Any] {
                    self.input = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Sink : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Source : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Status : Tea.TeaModel {
            public var createTime: Int64?

            public var deleteTime: Int64?

            public var errorMessage: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.deleteTime != nil {
                    map["deleteTime"] = self.deleteTime!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["deleteTime"] as? Int64 {
                    self.deleteTime = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var meta: StartOfflineTaskResponseBody.Result.Meta?

        public var parameters: [String: Any]?

        public var processors: [StartOfflineTaskResponseBody.Result.Processors]?

        public var sink: [StartOfflineTaskResponseBody.Result.Sink]?

        public var source: [StartOfflineTaskResponseBody.Result.Source]?

        public var status: StartOfflineTaskResponseBody.Result.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meta?.validate()
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meta != nil {
                map["meta"] = self.meta?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.processors != nil {
                var tmp : [Any] = []
                for k in self.processors! {
                    tmp.append(k.toMap())
                }
                map["processors"] = tmp
            }
            if self.sink != nil {
                var tmp : [Any] = []
                for k in self.sink! {
                    tmp.append(k.toMap())
                }
                map["sink"] = tmp
            }
            if self.source != nil {
                var tmp : [Any] = []
                for k in self.source! {
                    tmp.append(k.toMap())
                }
                map["source"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["meta"] as? [String: Any?] {
                var model = StartOfflineTaskResponseBody.Result.Meta()
                model.fromMap(value)
                self.meta = model
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["processors"] as? [Any?] {
                var tmp : [StartOfflineTaskResponseBody.Result.Processors] = []
                for v in value {
                    if v != nil {
                        var model = StartOfflineTaskResponseBody.Result.Processors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.processors = tmp
            }
            if let value = dict["sink"] as? [Any?] {
                var tmp : [StartOfflineTaskResponseBody.Result.Sink] = []
                for v in value {
                    if v != nil {
                        var model = StartOfflineTaskResponseBody.Result.Sink()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sink = tmp
            }
            if let value = dict["source"] as? [Any?] {
                var tmp : [StartOfflineTaskResponseBody.Result.Source] = []
                for v in value {
                    if v != nil {
                        var model = StartOfflineTaskResponseBody.Result.Source()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.source = tmp
            }
            if let value = dict["status"] as? [String: Any?] {
                var model = StartOfflineTaskResponseBody.Result.Status()
                model.fromMap(value)
                self.status = model
            }
        }
    }
    public var requestId: String?

    public var result: StartOfflineTaskResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = StartOfflineTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class StartOfflineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartOfflineTaskResponseBody?

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
            var model = StartOfflineTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopOfflineTaskRequest : Tea.TeaModel {
    public var parallelism: Int32?

    public var timestamp: Int64?

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
        if self.parallelism != nil {
            map["parallelism"] = self.parallelism!
        }
        if self.timestamp != nil {
            map["timestamp"] = self.timestamp!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["parallelism"] as? Int32 {
            self.parallelism = value
        }
        if let value = dict["timestamp"] as? Int64 {
            self.timestamp = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopOfflineTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var computeResource: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.taskName != nil {
                    map["taskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? String {
                    self.computeResource = value
                }
                if let value = dict["taskName"] as? String {
                    self.taskName = value
                }
            }
        }
        public class Processors : Tea.TeaModel {
            public var input: [String: Any]?

            public var name: String?

            public var parameters: [String: Any]?

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
                if self.input != nil {
                    map["input"] = self.input!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["input"] as? [String: Any] {
                    self.input = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Sink : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Source : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var primaryKey: String?

            public var schema: [[String: String]]?

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
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.primaryKey != nil {
                    map["primaryKey"] = self.primaryKey!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["primaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["schema"] as? [[String: String]] {
                    self.schema = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Status : Tea.TeaModel {
            public var createTime: Int64?

            public var deleteTime: Int64?

            public var errorMessage: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.deleteTime != nil {
                    map["deleteTime"] = self.deleteTime!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["deleteTime"] as? Int64 {
                    self.deleteTime = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var meta: StopOfflineTaskResponseBody.Result.Meta?

        public var parameters: [String: Any]?

        public var processors: [StopOfflineTaskResponseBody.Result.Processors]?

        public var sink: [StopOfflineTaskResponseBody.Result.Sink]?

        public var source: [StopOfflineTaskResponseBody.Result.Source]?

        public var status: StopOfflineTaskResponseBody.Result.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meta?.validate()
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meta != nil {
                map["meta"] = self.meta?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.processors != nil {
                var tmp : [Any] = []
                for k in self.processors! {
                    tmp.append(k.toMap())
                }
                map["processors"] = tmp
            }
            if self.sink != nil {
                var tmp : [Any] = []
                for k in self.sink! {
                    tmp.append(k.toMap())
                }
                map["sink"] = tmp
            }
            if self.source != nil {
                var tmp : [Any] = []
                for k in self.source! {
                    tmp.append(k.toMap())
                }
                map["source"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["meta"] as? [String: Any?] {
                var model = StopOfflineTaskResponseBody.Result.Meta()
                model.fromMap(value)
                self.meta = model
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["processors"] as? [Any?] {
                var tmp : [StopOfflineTaskResponseBody.Result.Processors] = []
                for v in value {
                    if v != nil {
                        var model = StopOfflineTaskResponseBody.Result.Processors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.processors = tmp
            }
            if let value = dict["sink"] as? [Any?] {
                var tmp : [StopOfflineTaskResponseBody.Result.Sink] = []
                for v in value {
                    if v != nil {
                        var model = StopOfflineTaskResponseBody.Result.Sink()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sink = tmp
            }
            if let value = dict["source"] as? [Any?] {
                var tmp : [StopOfflineTaskResponseBody.Result.Source] = []
                for v in value {
                    if v != nil {
                        var model = StopOfflineTaskResponseBody.Result.Source()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.source = tmp
            }
            if let value = dict["status"] as? [String: Any?] {
                var model = StopOfflineTaskResponseBody.Result.Status()
                model.fromMap(value)
                self.status = model
            }
        }
    }
    public var requestId: String?

    public var result: StopOfflineTaskResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = StopOfflineTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class StopOfflineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopOfflineTaskResponseBody?

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
            var model = StopOfflineTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCapabilityRequest : Tea.TeaModel {
    public var itemDesc: String?

    public var itemValue: [String: Any]?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.itemDesc != nil {
            map["itemDesc"] = self.itemDesc!
        }
        if self.itemValue != nil {
            map["itemValue"] = self.itemValue!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["itemDesc"] as? String {
            self.itemDesc = value
        }
        if let value = dict["itemValue"] as? [String: Any] {
            self.itemValue = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateCapabilityResponseBody : Tea.TeaModel {
    public var httpCode: Int64?

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
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateCapabilityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCapabilityResponseBody?

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
            var model = UpdateCapabilityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConfigRequest : Tea.TeaModel {
    public var configData: [String: Any]?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configData != nil {
            map["configData"] = self.configData!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configData"] as? [String: Any] {
            self.configData = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var configData: [String: Any]?

        public var configType: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configData != nil {
                map["configData"] = self.configData!
            }
            if self.configType != nil {
                map["configType"] = self.configType!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configData"] as? [String: Any] {
                self.configData = value
            }
            if let value = dict["configType"] as? String {
                self.configType = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var result: UpdateConfigResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateConfigResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class UpdateConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConfigResponseBody?

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
            var model = UpdateConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCredentialsRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateCredentialsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appGroupId: Int64?

        public var enabled: Bool?

        public var token: String?

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
            if self.appGroupId != nil {
                map["appGroupId"] = self.appGroupId!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appGroupId"] as? Int64 {
                self.appGroupId = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: UpdateCredentialsResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateCredentialsResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class UpdateCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCredentialsResponseBody?

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
            var model = UpdateCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFunctionInstanceRequest : Tea.TeaModel {
    public class CreateParameters : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var createParameters: [UpdateFunctionInstanceRequest.CreateParameters]?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createParameters != nil {
            var tmp : [Any] = []
            for k in self.createParameters! {
                tmp.append(k.toMap())
            }
            map["createParameters"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createParameters"] as? [Any?] {
            var tmp : [UpdateFunctionInstanceRequest.CreateParameters] = []
            for v in value {
                if v != nil {
                    var model = UpdateFunctionInstanceRequest.CreateParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.createParameters = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateFunctionInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFunctionInstanceResponseBody?

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
            var model = UpdateFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkspaceRequest : Tea.TeaModel {
    public var description_: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class UpdateWorkspaceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if self.tagKey != nil {
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var chargeType: String?

        public var description_: String?

        public var domainName: String?

        public var engineType: String?

        public var id: String?

        public var instanceId: String?

        public var name: String?

        public var produced: Int32?

        public var quota: UpdateWorkspaceResponseBody.Result.Quota?

        public var resourceGroupId: String?

        public var tags: [UpdateWorkspaceResponseBody.Result.Tags]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domainName != nil {
                map["domainName"] = self.domainName!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.produced != nil {
                map["produced"] = self.produced!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domainName"] as? String {
                self.domainName = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["produced"] as? Int32 {
                self.produced = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = UpdateWorkspaceResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [UpdateWorkspaceResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = UpdateWorkspaceResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: UpdateWorkspaceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateWorkspaceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class UpdateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceResponseBody?

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
            var model = UpdateWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
