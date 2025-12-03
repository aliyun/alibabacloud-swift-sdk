import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApplyCoordinationWithCodeRequest : Tea.TeaModel {
    public var coordinationCode: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var sessionId: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coordinationCode != nil {
            map["CoordinationCode"] = self.coordinationCode!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoordinationCode"] as? String {
            self.coordinationCode = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class ApplyCoordinationWithCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var coId: String?

        public var coordinateStatus: String?

        public var coordinateTicket: String?

        public var coordinatorAliUid: Int64?

        public var coordinatorUserId: String?

        public var ownerAliUid: Int64?

        public var ownerUserId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceRegionId: String?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coId != nil {
                map["CoId"] = self.coId!
            }
            if self.coordinateStatus != nil {
                map["CoordinateStatus"] = self.coordinateStatus!
            }
            if self.coordinateTicket != nil {
                map["CoordinateTicket"] = self.coordinateTicket!
            }
            if self.coordinatorAliUid != nil {
                map["CoordinatorAliUid"] = self.coordinatorAliUid!
            }
            if self.coordinatorUserId != nil {
                map["CoordinatorUserId"] = self.coordinatorUserId!
            }
            if self.ownerAliUid != nil {
                map["OwnerAliUid"] = self.ownerAliUid!
            }
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceRegionId != nil {
                map["ResourceRegionId"] = self.resourceRegionId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CoId"] as? String {
                self.coId = value
            }
            if let value = dict["CoordinateStatus"] as? String {
                self.coordinateStatus = value
            }
            if let value = dict["CoordinateTicket"] as? String {
                self.coordinateTicket = value
            }
            if let value = dict["CoordinatorAliUid"] as? Int64 {
                self.coordinatorAliUid = value
            }
            if let value = dict["CoordinatorUserId"] as? String {
                self.coordinatorUserId = value
            }
            if let value = dict["OwnerAliUid"] as? Int64 {
                self.ownerAliUid = value
            }
            if let value = dict["OwnerUserId"] as? String {
                self.ownerUserId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceRegionId"] as? String {
                self.resourceRegionId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var data: ApplyCoordinationWithCodeResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ApplyCoordinationWithCodeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ApplyCoordinationWithCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyCoordinationWithCodeResponseBody?

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
            var model = ApplyCoordinationWithCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EndAllCoordinationByOwnerRequest : Tea.TeaModel {
    public var loginRegionId: String?

    public var loginToken: String?

    public var resourceId: String?

    public var resourceRegionId: String?

    public var resourceType: String?

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
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class EndAllCoordinationByOwnerResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EndAllCoordinationByOwnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EndAllCoordinationByOwnerResponseBody?

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
            var model = EndAllCoordinationByOwnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateCoordinationCodeRequest : Tea.TeaModel {
    public var loginRegionId: String?

    public var loginToken: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceRegionId: String?

    public var resourceType: String?

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
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GenerateCoordinationCodeResponseBody : Tea.TeaModel {
    public var coordinationCode: String?

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
        if self.coordinationCode != nil {
            map["CoordinationCode"] = self.coordinationCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoordinationCode"] as? String {
            self.coordinationCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateCoordinationCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCoordinationCodeResponseBody?

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
            var model = GenerateCoordinationCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
