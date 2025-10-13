import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApplyCoordinationForCoordinatorRequest : Tea.TeaModel {
    public class CoordinationResourceCandidates : Tea.TeaModel {
        public var ownerEndUserId: String?

        public var ownerWyId: String?

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
            if self.ownerEndUserId != nil {
                map["OwnerEndUserId"] = self.ownerEndUserId!
            }
            if self.ownerWyId != nil {
                map["OwnerWyId"] = self.ownerWyId!
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
            if let value = dict["OwnerEndUserId"] as? String {
                self.ownerEndUserId = value
            }
            if let value = dict["OwnerWyId"] as? String {
                self.ownerWyId = value
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
    public var coordinationResourceCandidates: [ApplyCoordinationForCoordinatorRequest.CoordinationResourceCandidates]?

    public var initiatorType: String?

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
        if self.coordinationResourceCandidates != nil {
            var tmp : [Any] = []
            for k in self.coordinationResourceCandidates! {
                tmp.append(k.toMap())
            }
            map["CoordinationResourceCandidates"] = tmp
        }
        if self.initiatorType != nil {
            map["InitiatorType"] = self.initiatorType!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoordinationResourceCandidates"] as? [Any?] {
            var tmp : [ApplyCoordinationForCoordinatorRequest.CoordinationResourceCandidates] = []
            for v in value {
                if v != nil {
                    var model = ApplyCoordinationForCoordinatorRequest.CoordinationResourceCandidates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.coordinationResourceCandidates = tmp
        }
        if let value = dict["InitiatorType"] as? String {
            self.initiatorType = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class ApplyCoordinationForCoordinatorResponseBody : Tea.TeaModel {
    public class CoordinateFlowModels : Tea.TeaModel {
        public var coId: String?

        public var coordinateStatus: String?

        public var coordinateTicket: String?

        public var coordinatorUserId: String?

        public var ownerUserId: String?

        public var resourceId: String?

        public var resourceName: String?

        public override init() {
            super.init()
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
            if self.coordinatorUserId != nil {
                map["CoordinatorUserId"] = self.coordinatorUserId!
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
            if let value = dict["CoordinatorUserId"] as? String {
                self.coordinatorUserId = value
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
        }
    }
    public var coordinateFlowModels: [ApplyCoordinationForCoordinatorResponseBody.CoordinateFlowModels]?

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
        if self.coordinateFlowModels != nil {
            var tmp : [Any] = []
            for k in self.coordinateFlowModels! {
                tmp.append(k.toMap())
            }
            map["CoordinateFlowModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoordinateFlowModels"] as? [Any?] {
            var tmp : [ApplyCoordinationForCoordinatorResponseBody.CoordinateFlowModels] = []
            for v in value {
                if v != nil {
                    var model = ApplyCoordinationForCoordinatorResponseBody.CoordinateFlowModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.coordinateFlowModels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ApplyCoordinationForCoordinatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyCoordinationForCoordinatorResponseBody?

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
            var model = ApplyCoordinationForCoordinatorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelCoordinationRequest : Tea.TeaModel {
    public var coIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coIds != nil {
            map["CoIds"] = self.coIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoIds"] as? [String] {
            self.coIds = value
        }
    }
}

public class CancelCoordinationResponseBody : Tea.TeaModel {
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

public class CancelCoordinationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelCoordinationResponseBody?

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
            var model = CancelCoordinationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCoordinationTicketRequest : Tea.TeaModel {
    public var coId: String?

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
        if self.coId != nil {
            map["CoId"] = self.coId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoId"] as? String {
            self.coId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetCoordinationTicketResponseBody : Tea.TeaModel {
    public class CoordinateTicketModel : Tea.TeaModel {
        public var coId: String?

        public var coordinateTicket: String?

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
            if self.coId != nil {
                map["CoId"] = self.coId!
            }
            if self.coordinateTicket != nil {
                map["CoordinateTicket"] = self.coordinateTicket!
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
            if let value = dict["CoId"] as? String {
                self.coId = value
            }
            if let value = dict["CoordinateTicket"] as? String {
                self.coordinateTicket = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var coordinateTicketModel: GetCoordinationTicketResponseBody.CoordinateTicketModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.coordinateTicketModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coordinateTicketModel != nil {
            map["CoordinateTicketModel"] = self.coordinateTicketModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoordinateTicketModel"] as? [String: Any?] {
            var model = GetCoordinationTicketResponseBody.CoordinateTicketModel()
            model.fromMap(value)
            self.coordinateTicketModel = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCoordinationTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCoordinationTicketResponseBody?

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
            var model = GetCoordinationTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
