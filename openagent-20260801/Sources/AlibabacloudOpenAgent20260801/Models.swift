import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelRunHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xOpenAgentIdempotencyKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xOpenAgentIdempotencyKey != nil {
            map["X-OpenAgent-Idempotency-Key"] = self.xOpenAgentIdempotencyKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-OpenAgent-Idempotency-Key"] as? String {
            self.xOpenAgentIdempotencyKey = value
        }
    }
}

public class CancelRunRequest : Tea.TeaModel {
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
        if self.reason != nil {
            map["reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["reason"] as? String {
            self.reason = value
        }
    }
}

public class CancelRunResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var runId: String?

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
            if self.runId != nil {
                map["runId"] = self.runId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["runId"] as? String {
                self.runId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var data: CancelRunResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CancelRunResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRunResponseBody?

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
            var model = CancelRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSessionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xOpenAgentIdempotencyKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xOpenAgentIdempotencyKey != nil {
            map["X-OpenAgent-Idempotency-Key"] = self.xOpenAgentIdempotencyKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-OpenAgent-Idempotency-Key"] as? String {
            self.xOpenAgentIdempotencyKey = value
        }
    }
}

public class CreateSessionRequest : Tea.TeaModel {
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
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class CreateSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var pinned: Bool?

        public var sessionId: String?

        public var status: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.pinned != nil {
                map["pinned"] = self.pinned!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["pinned"] as? Bool {
                self.pinned = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
        }
    }
    public var data: CreateSessionResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateSessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSessionResponseBody?

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
            var model = CreateSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSessionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xOpenAgentIdempotencyKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xOpenAgentIdempotencyKey != nil {
            map["X-OpenAgent-Idempotency-Key"] = self.xOpenAgentIdempotencyKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-OpenAgent-Idempotency-Key"] as? String {
            self.xOpenAgentIdempotencyKey = value
        }
    }
}

public class DeleteSessionRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class DeleteSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {

        public override init() {
            super.init()
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
    public var data: DeleteSessionResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteSessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSessionResponseBody?

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
            var model = DeleteSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetReadonlyModeRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetReadonlyModeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configName: String?

        public var exists: Bool?

        public var gmtUpdate: String?

        public var value: String?

        public var valueType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configName != nil {
                map["configName"] = self.configName!
            }
            if self.exists != nil {
                map["exists"] = self.exists!
            }
            if self.gmtUpdate != nil {
                map["gmtUpdate"] = self.gmtUpdate!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            if self.valueType != nil {
                map["valueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configName"] as? String {
                self.configName = value
            }
            if let value = dict["exists"] as? Bool {
                self.exists = value
            }
            if let value = dict["gmtUpdate"] as? String {
                self.gmtUpdate = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
            if let value = dict["valueType"] as? String {
                self.valueType = value
            }
        }
    }
    public var data: GetReadonlyModeResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetReadonlyModeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetReadonlyModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetReadonlyModeResponseBody?

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
            var model = GetReadonlyModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRunRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetRunResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Outcome : Tea.TeaModel {
            public class Interrupts : Tea.TeaModel {
                public class Data : Tea.TeaModel {
                    public class ApiCalls : Tea.TeaModel {
                        public var action: String?

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
                            if self.action != nil {
                                map["action"] = self.action!
                            }
                            if self.description_ != nil {
                                map["description"] = self.description_!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["action"] as? String {
                                self.action = value
                            }
                            if let value = dict["description"] as? String {
                                self.description_ = value
                            }
                        }
                    }
                    public var apiCalls: [GetRunResponseBody.Data.Outcome.Interrupts.Data.ApiCalls]?

                    public var approvalId: String?

                    public var approvalUrl: String?

                    public var cancellable: Bool?

                    public var changeDigest: String?

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
                        if self.apiCalls != nil {
                            var tmp : [Any] = []
                            for k in self.apiCalls! {
                                tmp.append(k.toMap())
                            }
                            map["apiCalls"] = tmp
                        }
                        if self.approvalId != nil {
                            map["approvalId"] = self.approvalId!
                        }
                        if self.approvalUrl != nil {
                            map["approvalUrl"] = self.approvalUrl!
                        }
                        if self.cancellable != nil {
                            map["cancellable"] = self.cancellable!
                        }
                        if self.changeDigest != nil {
                            map["changeDigest"] = self.changeDigest!
                        }
                        if self.title != nil {
                            map["title"] = self.title!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["apiCalls"] as? [Any?] {
                            var tmp : [GetRunResponseBody.Data.Outcome.Interrupts.Data.ApiCalls] = []
                            for v in value {
                                if v != nil {
                                    var model = GetRunResponseBody.Data.Outcome.Interrupts.Data.ApiCalls()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.apiCalls = tmp
                        }
                        if let value = dict["approvalId"] as? String {
                            self.approvalId = value
                        }
                        if let value = dict["approvalUrl"] as? String {
                            self.approvalUrl = value
                        }
                        if let value = dict["cancellable"] as? Bool {
                            self.cancellable = value
                        }
                        if let value = dict["changeDigest"] as? String {
                            self.changeDigest = value
                        }
                        if let value = dict["title"] as? String {
                            self.title = value
                        }
                    }
                }
                public var data: GetRunResponseBody.Data.Outcome.Interrupts.Data?

                public var expiresAt: String?

                public var id: String?

                public var message: String?

                public var metadata: [String: Any]?

                public var reason: String?

                public var responseSchema: [String: Any]?

                public var toolCallId: String?

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
                        map["data"] = self.data?.toMap()
                    }
                    if self.expiresAt != nil {
                        map["expiresAt"] = self.expiresAt!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.message != nil {
                        map["message"] = self.message!
                    }
                    if self.metadata != nil {
                        map["metadata"] = self.metadata!
                    }
                    if self.reason != nil {
                        map["reason"] = self.reason!
                    }
                    if self.responseSchema != nil {
                        map["responseSchema"] = self.responseSchema!
                    }
                    if self.toolCallId != nil {
                        map["toolCallId"] = self.toolCallId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["data"] as? [String: Any?] {
                        var model = GetRunResponseBody.Data.Outcome.Interrupts.Data()
                        model.fromMap(value)
                        self.data = model
                    }
                    if let value = dict["expiresAt"] as? String {
                        self.expiresAt = value
                    }
                    if let value = dict["id"] as? String {
                        self.id = value
                    }
                    if let value = dict["message"] as? String {
                        self.message = value
                    }
                    if let value = dict["metadata"] as? [String: Any] {
                        self.metadata = value
                    }
                    if let value = dict["reason"] as? String {
                        self.reason = value
                    }
                    if let value = dict["responseSchema"] as? [String: Any] {
                        self.responseSchema = value
                    }
                    if let value = dict["toolCallId"] as? String {
                        self.toolCallId = value
                    }
                }
            }
            public var interrupts: [GetRunResponseBody.Data.Outcome.Interrupts]?

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
                if self.interrupts != nil {
                    var tmp : [Any] = []
                    for k in self.interrupts! {
                        tmp.append(k.toMap())
                    }
                    map["interrupts"] = tmp
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["interrupts"] as? [Any?] {
                    var tmp : [GetRunResponseBody.Data.Outcome.Interrupts] = []
                    for v in value {
                        if v != nil {
                            var model = GetRunResponseBody.Data.Outcome.Interrupts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.interrupts = tmp
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var createdAt: String?

        public var outcome: GetRunResponseBody.Data.Outcome?

        public var runId: String?

        public var sessionId: String?

        public var status: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.outcome?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.outcome != nil {
                map["outcome"] = self.outcome?.toMap()
            }
            if self.runId != nil {
                map["runId"] = self.runId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["outcome"] as? [String: Any?] {
                var model = GetRunResponseBody.Data.Outcome()
                model.fromMap(value)
                self.outcome = model
            }
            if let value = dict["runId"] as? String {
                self.runId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
        }
    }
    public var data: GetRunResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetRunResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRunResponseBody?

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
            var model = GetRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSessionRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var lastRunId: String?

        public var lastRunStatus: String?

        public var pinned: Bool?

        public var sessionId: String?

        public var status: String?

        public var title: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.lastRunId != nil {
                map["lastRunId"] = self.lastRunId!
            }
            if self.lastRunStatus != nil {
                map["lastRunStatus"] = self.lastRunStatus!
            }
            if self.pinned != nil {
                map["pinned"] = self.pinned!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["lastRunId"] as? String {
                self.lastRunId = value
            }
            if let value = dict["lastRunStatus"] as? String {
                self.lastRunStatus = value
            }
            if let value = dict["pinned"] as? Bool {
                self.pinned = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
        }
    }
    public var data: GetSessionResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetSessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSessionResponseBody?

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
            var model = GetSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMessagesRequest : Tea.TeaModel {
    public var maxResults: String?

    public var nextToken: String?

    public var runId: String?

    public override init() {
        super.init()
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
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
    }
}

public class ListMessagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Timeline : Tea.TeaModel {
            public class Message : Tea.TeaModel {
                public class InterruptOutcome : Tea.TeaModel {
                    public class Interrupts : Tea.TeaModel {
                        public class Data : Tea.TeaModel {
                            public class ApiCalls : Tea.TeaModel {
                                public var action: String?

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
                                    if self.action != nil {
                                        map["action"] = self.action!
                                    }
                                    if self.description_ != nil {
                                        map["description"] = self.description_!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["action"] as? String {
                                        self.action = value
                                    }
                                    if let value = dict["description"] as? String {
                                        self.description_ = value
                                    }
                                }
                            }
                            public var apiCalls: [ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome.Interrupts.Data.ApiCalls]?

                            public var approvalId: String?

                            public var approvalUrl: String?

                            public var cancellable: Bool?

                            public var changeDigest: String?

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
                                if self.apiCalls != nil {
                                    var tmp : [Any] = []
                                    for k in self.apiCalls! {
                                        tmp.append(k.toMap())
                                    }
                                    map["apiCalls"] = tmp
                                }
                                if self.approvalId != nil {
                                    map["approvalId"] = self.approvalId!
                                }
                                if self.approvalUrl != nil {
                                    map["approvalUrl"] = self.approvalUrl!
                                }
                                if self.cancellable != nil {
                                    map["cancellable"] = self.cancellable!
                                }
                                if self.changeDigest != nil {
                                    map["changeDigest"] = self.changeDigest!
                                }
                                if self.title != nil {
                                    map["title"] = self.title!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["apiCalls"] as? [Any?] {
                                    var tmp : [ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome.Interrupts.Data.ApiCalls] = []
                                    for v in value {
                                        if v != nil {
                                            var model = ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome.Interrupts.Data.ApiCalls()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.apiCalls = tmp
                                }
                                if let value = dict["approvalId"] as? String {
                                    self.approvalId = value
                                }
                                if let value = dict["approvalUrl"] as? String {
                                    self.approvalUrl = value
                                }
                                if let value = dict["cancellable"] as? Bool {
                                    self.cancellable = value
                                }
                                if let value = dict["changeDigest"] as? String {
                                    self.changeDigest = value
                                }
                                if let value = dict["title"] as? String {
                                    self.title = value
                                }
                            }
                        }
                        public var data: ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome.Interrupts.Data?

                        public var expiresAt: String?

                        public var id: String?

                        public var message: String?

                        public var metadata: [String: Any]?

                        public var reason: String?

                        public var responseSchema: [String: Any]?

                        public var toolCallId: String?

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
                                map["data"] = self.data?.toMap()
                            }
                            if self.expiresAt != nil {
                                map["expiresAt"] = self.expiresAt!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.message != nil {
                                map["message"] = self.message!
                            }
                            if self.metadata != nil {
                                map["metadata"] = self.metadata!
                            }
                            if self.reason != nil {
                                map["reason"] = self.reason!
                            }
                            if self.responseSchema != nil {
                                map["responseSchema"] = self.responseSchema!
                            }
                            if self.toolCallId != nil {
                                map["toolCallId"] = self.toolCallId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["data"] as? [String: Any?] {
                                var model = ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome.Interrupts.Data()
                                model.fromMap(value)
                                self.data = model
                            }
                            if let value = dict["expiresAt"] as? String {
                                self.expiresAt = value
                            }
                            if let value = dict["id"] as? String {
                                self.id = value
                            }
                            if let value = dict["message"] as? String {
                                self.message = value
                            }
                            if let value = dict["metadata"] as? [String: Any] {
                                self.metadata = value
                            }
                            if let value = dict["reason"] as? String {
                                self.reason = value
                            }
                            if let value = dict["responseSchema"] as? [String: Any] {
                                self.responseSchema = value
                            }
                            if let value = dict["toolCallId"] as? String {
                                self.toolCallId = value
                            }
                        }
                    }
                    public var interrupts: [ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome.Interrupts]?

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
                        if self.interrupts != nil {
                            var tmp : [Any] = []
                            for k in self.interrupts! {
                                tmp.append(k.toMap())
                            }
                            map["interrupts"] = tmp
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["interrupts"] as? [Any?] {
                            var tmp : [ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome.Interrupts] = []
                            for v in value {
                                if v != nil {
                                    var model = ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome.Interrupts()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.interrupts = tmp
                        }
                        if let value = dict["type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class ResumeInput : Tea.TeaModel {
                    public class Resume : Tea.TeaModel {
                        public var interruptId: String?

                        public var payload: Any?

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
                            if self.interruptId != nil {
                                map["interruptId"] = self.interruptId!
                            }
                            if self.payload != nil {
                                map["payload"] = self.payload!
                            }
                            if self.status != nil {
                                map["status"] = self.status!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["interruptId"] as? String {
                                self.interruptId = value
                            }
                            if let value = dict["payload"] as? Any {
                                self.payload = value
                            }
                            if let value = dict["status"] as? String {
                                self.status = value
                            }
                        }
                    }
                    public var resolvedAt: String?

                    public var resume: [ListMessagesResponseBody.Data.Timeline.Message.ResumeInput.Resume]?

                    public var runId: String?

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
                        if self.resolvedAt != nil {
                            map["resolvedAt"] = self.resolvedAt!
                        }
                        if self.resume != nil {
                            var tmp : [Any] = []
                            for k in self.resume! {
                                tmp.append(k.toMap())
                            }
                            map["resume"] = tmp
                        }
                        if self.runId != nil {
                            map["runId"] = self.runId!
                        }
                        if self.source != nil {
                            map["source"] = self.source!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["resolvedAt"] as? String {
                            self.resolvedAt = value
                        }
                        if let value = dict["resume"] as? [Any?] {
                            var tmp : [ListMessagesResponseBody.Data.Timeline.Message.ResumeInput.Resume] = []
                            for v in value {
                                if v != nil {
                                    var model = ListMessagesResponseBody.Data.Timeline.Message.ResumeInput.Resume()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.resume = tmp
                        }
                        if let value = dict["runId"] as? String {
                            self.runId = value
                        }
                        if let value = dict["source"] as? String {
                            self.source = value
                        }
                    }
                }
                public class ToolCalls : Tea.TeaModel {
                    public class Function : Tea.TeaModel {
                        public var arguments: String?

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
                            if self.arguments != nil {
                                map["arguments"] = self.arguments!
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["arguments"] as? String {
                                self.arguments = value
                            }
                            if let value = dict["name"] as? String {
                                self.name = value
                            }
                        }
                    }
                    public var encryptedValue: String?

                    public var function: ListMessagesResponseBody.Data.Timeline.Message.ToolCalls.Function?

                    public var id: String?

                    public var metadata: [String: Any]?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.function?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.encryptedValue != nil {
                            map["encryptedValue"] = self.encryptedValue!
                        }
                        if self.function != nil {
                            map["function"] = self.function?.toMap()
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.metadata != nil {
                            map["metadata"] = self.metadata!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["encryptedValue"] as? String {
                            self.encryptedValue = value
                        }
                        if let value = dict["function"] as? [String: Any?] {
                            var model = ListMessagesResponseBody.Data.Timeline.Message.ToolCalls.Function()
                            model.fromMap(value)
                            self.function = model
                        }
                        if let value = dict["id"] as? String {
                            self.id = value
                        }
                        if let value = dict["metadata"] as? [String: Any] {
                            self.metadata = value
                        }
                        if let value = dict["type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var activityType: String?

                public var content: Any?

                public var encryptedValue: String?

                public var error: String?

                public var id: String?

                public var interruptOutcome: ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome?

                public var metadata: [String: Any]?

                public var name: String?

                public var resumeInput: ListMessagesResponseBody.Data.Timeline.Message.ResumeInput?

                public var role: String?

                public var toolCallId: String?

                public var toolCalls: [ListMessagesResponseBody.Data.Timeline.Message.ToolCalls]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.interruptOutcome?.validate()
                    try self.resumeInput?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.activityType != nil {
                        map["activityType"] = self.activityType!
                    }
                    if self.content != nil {
                        map["content"] = self.content!
                    }
                    if self.encryptedValue != nil {
                        map["encryptedValue"] = self.encryptedValue!
                    }
                    if self.error != nil {
                        map["error"] = self.error!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.interruptOutcome != nil {
                        map["interruptOutcome"] = self.interruptOutcome?.toMap()
                    }
                    if self.metadata != nil {
                        map["metadata"] = self.metadata!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.resumeInput != nil {
                        map["resumeInput"] = self.resumeInput?.toMap()
                    }
                    if self.role != nil {
                        map["role"] = self.role!
                    }
                    if self.toolCallId != nil {
                        map["toolCallId"] = self.toolCallId!
                    }
                    if self.toolCalls != nil {
                        var tmp : [Any] = []
                        for k in self.toolCalls! {
                            tmp.append(k.toMap())
                        }
                        map["toolCalls"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["activityType"] as? String {
                        self.activityType = value
                    }
                    if let value = dict["content"] as? Any {
                        self.content = value
                    }
                    if let value = dict["encryptedValue"] as? String {
                        self.encryptedValue = value
                    }
                    if let value = dict["error"] as? String {
                        self.error = value
                    }
                    if let value = dict["id"] as? String {
                        self.id = value
                    }
                    if let value = dict["interruptOutcome"] as? [String: Any?] {
                        var model = ListMessagesResponseBody.Data.Timeline.Message.InterruptOutcome()
                        model.fromMap(value)
                        self.interruptOutcome = model
                    }
                    if let value = dict["metadata"] as? [String: Any] {
                        self.metadata = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["resumeInput"] as? [String: Any?] {
                        var model = ListMessagesResponseBody.Data.Timeline.Message.ResumeInput()
                        model.fromMap(value)
                        self.resumeInput = model
                    }
                    if let value = dict["role"] as? String {
                        self.role = value
                    }
                    if let value = dict["toolCallId"] as? String {
                        self.toolCallId = value
                    }
                    if let value = dict["toolCalls"] as? [Any?] {
                        var tmp : [ListMessagesResponseBody.Data.Timeline.Message.ToolCalls] = []
                        for v in value {
                            if v != nil {
                                var model = ListMessagesResponseBody.Data.Timeline.Message.ToolCalls()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.toolCalls = tmp
                    }
                }
            }
            public var message: ListMessagesResponseBody.Data.Timeline.Message?

            public var runId: String?

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
                if self.message != nil {
                    map["message"] = self.message?.toMap()
                }
                if self.runId != nil {
                    map["runId"] = self.runId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["message"] as? [String: Any?] {
                    var model = ListMessagesResponseBody.Data.Timeline.Message()
                    model.fromMap(value)
                    self.message = model
                }
                if let value = dict["runId"] as? String {
                    self.runId = value
                }
            }
        }
        public var nextToken: String?

        public var sessionId: String?

        public var timeline: [ListMessagesResponseBody.Data.Timeline]?

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
            if self.nextToken != nil {
                map["nextToken"] = self.nextToken!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.timeline != nil {
                var tmp : [Any] = []
                for k in self.timeline! {
                    tmp.append(k.toMap())
                }
                map["timeline"] = tmp
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["nextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["timeline"] as? [Any?] {
                var tmp : [ListMessagesResponseBody.Data.Timeline] = []
                for v in value {
                    if v != nil {
                        var model = ListMessagesResponseBody.Data.Timeline()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.timeline = tmp
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var data: ListMessagesResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ListMessagesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMessagesResponseBody?

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
            var model = ListMessagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSessionsRequest : Tea.TeaModel {
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListSessionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Sessions : Tea.TeaModel {
            public var createdAt: String?

            public var lastRunId: String?

            public var lastRunStatus: String?

            public var pinned: Bool?

            public var sessionId: String?

            public var status: String?

            public var title: String?

            public var updatedAt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.lastRunId != nil {
                    map["lastRunId"] = self.lastRunId!
                }
                if self.lastRunStatus != nil {
                    map["lastRunStatus"] = self.lastRunStatus!
                }
                if self.pinned != nil {
                    map["pinned"] = self.pinned!
                }
                if self.sessionId != nil {
                    map["sessionId"] = self.sessionId!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.updatedAt != nil {
                    map["updatedAt"] = self.updatedAt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createdAt"] as? String {
                    self.createdAt = value
                }
                if let value = dict["lastRunId"] as? String {
                    self.lastRunId = value
                }
                if let value = dict["lastRunStatus"] as? String {
                    self.lastRunStatus = value
                }
                if let value = dict["pinned"] as? Bool {
                    self.pinned = value
                }
                if let value = dict["sessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
                if let value = dict["updatedAt"] as? String {
                    self.updatedAt = value
                }
            }
        }
        public var nextToken: String?

        public var sessions: [ListSessionsResponseBody.Data.Sessions]?

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
            if self.nextToken != nil {
                map["nextToken"] = self.nextToken!
            }
            if self.sessions != nil {
                var tmp : [Any] = []
                for k in self.sessions! {
                    tmp.append(k.toMap())
                }
                map["sessions"] = tmp
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["nextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["sessions"] as? [Any?] {
                var tmp : [ListSessionsResponseBody.Data.Sessions] = []
                for v in value {
                    if v != nil {
                        var model = ListSessionsResponseBody.Data.Sessions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sessions = tmp
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var data: ListSessionsResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ListSessionsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListSessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSessionsResponseBody?

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
            var model = ListSessionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendMessageHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xOpenAgentIdempotencyKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xOpenAgentIdempotencyKey != nil {
            map["X-OpenAgent-Idempotency-Key"] = self.xOpenAgentIdempotencyKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-OpenAgent-Idempotency-Key"] as? String {
            self.xOpenAgentIdempotencyKey = value
        }
    }
}

public class SendMessageRequest : Tea.TeaModel {
    public class Resume : Tea.TeaModel {
        public var interruptId: String?

        public var payload: Any?

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
            if self.interruptId != nil {
                map["interruptId"] = self.interruptId!
            }
            if self.payload != nil {
                map["payload"] = self.payload!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["interruptId"] as? String {
                self.interruptId = value
            }
            if let value = dict["payload"] as? Any {
                self.payload = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var content: String?

    public var resume: [SendMessageRequest.Resume]?

    public var runId: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.resume != nil {
            var tmp : [Any] = []
            for k in self.resume! {
                tmp.append(k.toMap())
            }
            map["resume"] = tmp
        }
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["resume"] as? [Any?] {
            var tmp : [SendMessageRequest.Resume] = []
            for v in value {
                if v != nil {
                    var model = SendMessageRequest.Resume()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resume = tmp
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class SendMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
            map["body"] = self.body!
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
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class UpdateReadonlyModeRequest : Tea.TeaModel {
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
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class UpdateReadonlyModeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configName: String?

        public var exists: Bool?

        public var gmtUpdate: String?

        public var value: String?

        public var valueType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configName != nil {
                map["configName"] = self.configName!
            }
            if self.exists != nil {
                map["exists"] = self.exists!
            }
            if self.gmtUpdate != nil {
                map["gmtUpdate"] = self.gmtUpdate!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            if self.valueType != nil {
                map["valueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configName"] as? String {
                self.configName = value
            }
            if let value = dict["exists"] as? Bool {
                self.exists = value
            }
            if let value = dict["gmtUpdate"] as? String {
                self.gmtUpdate = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
            if let value = dict["valueType"] as? String {
                self.valueType = value
            }
        }
    }
    public var data: UpdateReadonlyModeResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateReadonlyModeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateReadonlyModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateReadonlyModeResponseBody?

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
            var model = UpdateReadonlyModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSessionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xOpenAgentIdempotencyKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xOpenAgentIdempotencyKey != nil {
            map["X-OpenAgent-Idempotency-Key"] = self.xOpenAgentIdempotencyKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-OpenAgent-Idempotency-Key"] as? String {
            self.xOpenAgentIdempotencyKey = value
        }
    }
}

public class UpdateSessionRequest : Tea.TeaModel {
    public var pinned: Bool?

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
        if self.pinned != nil {
            map["pinned"] = self.pinned!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pinned"] as? Bool {
            self.pinned = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class UpdateSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var lastRunId: String?

        public var lastRunStatus: String?

        public var pinned: Bool?

        public var sessionId: String?

        public var status: String?

        public var title: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.lastRunId != nil {
                map["lastRunId"] = self.lastRunId!
            }
            if self.lastRunStatus != nil {
                map["lastRunStatus"] = self.lastRunStatus!
            }
            if self.pinned != nil {
                map["pinned"] = self.pinned!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["lastRunId"] as? String {
                self.lastRunId = value
            }
            if let value = dict["lastRunStatus"] as? String {
                self.lastRunStatus = value
            }
            if let value = dict["pinned"] as? Bool {
                self.pinned = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
        }
    }
    public var data: UpdateSessionResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateSessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSessionResponseBody?

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
            var model = UpdateSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
