import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConfirmDjbhReportRequest : Tea.TeaModel {
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class ConfirmDjbhReportResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class ConfirmDjbhReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmDjbhReportResponseBody?

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
            var model = ConfirmDjbhReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceLinkedRoleRequest : Tea.TeaModel {
    public var lang: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateServiceLinkedRoleResponseBody : Tea.TeaModel {
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

public class CreateServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceLinkedRoleResponseBody?

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
            var model = CreateServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceWorkOrderRequest : Tea.TeaModel {
    public var creator: String?

    public var customerId: String?

    public var durationDay: String?

    public var isAttachment: String?

    public var isMilestone: String?

    public var isWorkOrderNotify: String?

    public var notifyDay: String?

    public var notifyId: Int64?

    public var operateRemark: String?

    public var operateType: String?

    public var operator_: String?

    public var ownerId: String?

    public var startTime: Int64?

    public var workOrderDetail: String?

    public var workOrderName: String?

    public var workOrderSource: String?

    public var workOrderStatus: String?

    public var workOrderType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.durationDay != nil {
            map["DurationDay"] = self.durationDay!
        }
        if self.isAttachment != nil {
            map["IsAttachment"] = self.isAttachment!
        }
        if self.isMilestone != nil {
            map["IsMilestone"] = self.isMilestone!
        }
        if self.isWorkOrderNotify != nil {
            map["IsWorkOrderNotify"] = self.isWorkOrderNotify!
        }
        if self.notifyDay != nil {
            map["NotifyDay"] = self.notifyDay!
        }
        if self.notifyId != nil {
            map["NotifyId"] = self.notifyId!
        }
        if self.operateRemark != nil {
            map["OperateRemark"] = self.operateRemark!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.workOrderDetail != nil {
            map["WorkOrderDetail"] = self.workOrderDetail!
        }
        if self.workOrderName != nil {
            map["WorkOrderName"] = self.workOrderName!
        }
        if self.workOrderSource != nil {
            map["WorkOrderSource"] = self.workOrderSource!
        }
        if self.workOrderStatus != nil {
            map["WorkOrderStatus"] = self.workOrderStatus!
        }
        if self.workOrderType != nil {
            map["WorkOrderType"] = self.workOrderType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["CustomerId"] as? String {
            self.customerId = value
        }
        if let value = dict["DurationDay"] as? String {
            self.durationDay = value
        }
        if let value = dict["IsAttachment"] as? String {
            self.isAttachment = value
        }
        if let value = dict["IsMilestone"] as? String {
            self.isMilestone = value
        }
        if let value = dict["IsWorkOrderNotify"] as? String {
            self.isWorkOrderNotify = value
        }
        if let value = dict["NotifyDay"] as? String {
            self.notifyDay = value
        }
        if let value = dict["NotifyId"] as? Int64 {
            self.notifyId = value
        }
        if let value = dict["OperateRemark"] as? String {
            self.operateRemark = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["WorkOrderDetail"] as? String {
            self.workOrderDetail = value
        }
        if let value = dict["WorkOrderName"] as? String {
            self.workOrderName = value
        }
        if let value = dict["WorkOrderSource"] as? String {
            self.workOrderSource = value
        }
        if let value = dict["WorkOrderStatus"] as? String {
            self.workOrderStatus = value
        }
        if let value = dict["WorkOrderType"] as? String {
            self.workOrderType = value
        }
    }
}

public class CreateServiceWorkOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var completeTime: Int64?

        public var createTime: Int64?

        public var creator: String?

        public var customerId: String?

        public var endTime: Int64?

        public var id: Int64?

        public var ownerId: String?

        public var startTime: Int64?

        public var workOrderDetail: String?

        public var workOrderName: String?

        public var workOrderSource: String?

        public var workOrderStatus: String?

        public var workOrderType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completeTime != nil {
                map["CompleteTime"] = self.completeTime!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.workOrderDetail != nil {
                map["WorkOrderDetail"] = self.workOrderDetail!
            }
            if self.workOrderName != nil {
                map["WorkOrderName"] = self.workOrderName!
            }
            if self.workOrderSource != nil {
                map["WorkOrderSource"] = self.workOrderSource!
            }
            if self.workOrderStatus != nil {
                map["WorkOrderStatus"] = self.workOrderStatus!
            }
            if self.workOrderType != nil {
                map["WorkOrderType"] = self.workOrderType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompleteTime"] as? Int64 {
                self.completeTime = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["CustomerId"] as? String {
                self.customerId = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["WorkOrderDetail"] as? String {
                self.workOrderDetail = value
            }
            if let value = dict["WorkOrderName"] as? String {
                self.workOrderName = value
            }
            if let value = dict["WorkOrderSource"] as? String {
                self.workOrderSource = value
            }
            if let value = dict["WorkOrderStatus"] as? String {
                self.workOrderStatus = value
            }
            if let value = dict["WorkOrderType"] as? String {
                self.workOrderType = value
            }
        }
    }
    public var code: String?

    public var data: CreateServiceWorkOrderResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateServiceWorkOrderResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateServiceWorkOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceWorkOrderResponseBody?

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
            var model = CreateServiceWorkOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDjbhReportRequest : Tea.TeaModel {
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class DeleteDjbhReportResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class DeleteDjbhReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDjbhReportResponseBody?

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
            var model = DeleteDjbhReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceLinkedRoleRequest : Tea.TeaModel {
    public var lang: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var entityRoleGrant: Bool?

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
        if self.entityRoleGrant != nil {
            map["EntityRoleGrant"] = self.entityRoleGrant!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityRoleGrant"] as? Bool {
            self.entityRoleGrant = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceLinkedRoleResponseBody?

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
            var model = DescribeServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisposeServiceWorkOrderRequest : Tea.TeaModel {
    public var attachmentName: String?

    public var endTime: Int64?

    public var forwardOwnerId: String?

    public var id: Int64?

    public var isAttachment: String?

    public var isWorkOrderNotify: String?

    public var notifyId: Int64?

    public var operateRemark: String?

    public var operateType: String?

    public var operator_: String?

    public var startTime: Int64?

    public var upgradeOwnerId: String?

    public var workOrderDetail: String?

    public var workOrderName: String?

    public var workOrderStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachmentName != nil {
            map["AttachmentName"] = self.attachmentName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.forwardOwnerId != nil {
            map["ForwardOwnerId"] = self.forwardOwnerId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.isAttachment != nil {
            map["IsAttachment"] = self.isAttachment!
        }
        if self.isWorkOrderNotify != nil {
            map["IsWorkOrderNotify"] = self.isWorkOrderNotify!
        }
        if self.notifyId != nil {
            map["NotifyId"] = self.notifyId!
        }
        if self.operateRemark != nil {
            map["OperateRemark"] = self.operateRemark!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.upgradeOwnerId != nil {
            map["UpgradeOwnerId"] = self.upgradeOwnerId!
        }
        if self.workOrderDetail != nil {
            map["WorkOrderDetail"] = self.workOrderDetail!
        }
        if self.workOrderName != nil {
            map["WorkOrderName"] = self.workOrderName!
        }
        if self.workOrderStatus != nil {
            map["WorkOrderStatus"] = self.workOrderStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttachmentName"] as? String {
            self.attachmentName = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ForwardOwnerId"] as? String {
            self.forwardOwnerId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["IsAttachment"] as? String {
            self.isAttachment = value
        }
        if let value = dict["IsWorkOrderNotify"] as? String {
            self.isWorkOrderNotify = value
        }
        if let value = dict["NotifyId"] as? Int64 {
            self.notifyId = value
        }
        if let value = dict["OperateRemark"] as? String {
            self.operateRemark = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["UpgradeOwnerId"] as? String {
            self.upgradeOwnerId = value
        }
        if let value = dict["WorkOrderDetail"] as? String {
            self.workOrderDetail = value
        }
        if let value = dict["WorkOrderName"] as? String {
            self.workOrderName = value
        }
        if let value = dict["WorkOrderStatus"] as? String {
            self.workOrderStatus = value
        }
    }
}

public class DisposeServiceWorkOrderResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DisposeServiceWorkOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisposeServiceWorkOrderResponseBody?

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
            var model = DisposeServiceWorkOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisposeWorkTaskRequest : Tea.TeaModel {
    public var operator_: String?

    public var optRemark: String?

    public var status: Int32?

    public var taskIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.optRemark != nil {
            map["OptRemark"] = self.optRemark!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskIds != nil {
            map["TaskIds"] = self.taskIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["OptRemark"] as? String {
            self.optRemark = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TaskIds"] as? String {
            self.taskIds = value
        }
    }
}

public class DisposeWorkTaskResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DisposeWorkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisposeWorkTaskResponseBody?

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
            var model = DisposeWorkTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlarmDetailByIdRequest : Tea.TeaModel {
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class GetAlarmDetailByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EventDetails : Tea.TeaModel {
            public var nameDisplay: String?

            public var type: String?

            public var value: String?

            public var valueDisplay: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nameDisplay != nil {
                    map["NameDisplay"] = self.nameDisplay!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueDisplay != nil {
                    map["ValueDisplay"] = self.valueDisplay!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NameDisplay"] as? String {
                    self.nameDisplay = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["ValueDisplay"] as? String {
                    self.valueDisplay = value
                }
            }
        }
        public var alarmEventType: String?

        public var alarmEventTypeDisplay: String?

        public var alarmId: Int64?

        public var alarmName: String?

        public var alarmSource: String?

        public var alarmTime: String?

        public var analysisResult: String?

        public var containHwMode: Bool?

        public var dealTime: String?

        public var desc: String?

        public var eventDetails: [GetAlarmDetailByIdResponseBody.Data.EventDetails]?

        public var eventLevel: String?

        public var id: Int64?

        public var instanceName: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var occurrenceTime: String?

        public var ownerId: String?

        public var remark: String?

        public var status: String?

        public var tacticDisplayName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmEventType != nil {
                map["AlarmEventType"] = self.alarmEventType!
            }
            if self.alarmEventTypeDisplay != nil {
                map["AlarmEventTypeDisplay"] = self.alarmEventTypeDisplay!
            }
            if self.alarmId != nil {
                map["AlarmId"] = self.alarmId!
            }
            if self.alarmName != nil {
                map["AlarmName"] = self.alarmName!
            }
            if self.alarmSource != nil {
                map["AlarmSource"] = self.alarmSource!
            }
            if self.alarmTime != nil {
                map["AlarmTime"] = self.alarmTime!
            }
            if self.analysisResult != nil {
                map["AnalysisResult"] = self.analysisResult!
            }
            if self.containHwMode != nil {
                map["ContainHwMode"] = self.containHwMode!
            }
            if self.dealTime != nil {
                map["DealTime"] = self.dealTime!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.eventDetails != nil {
                var tmp : [Any] = []
                for k in self.eventDetails! {
                    tmp.append(k.toMap())
                }
                map["EventDetails"] = tmp
            }
            if self.eventLevel != nil {
                map["EventLevel"] = self.eventLevel!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.occurrenceTime != nil {
                map["OccurrenceTime"] = self.occurrenceTime!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tacticDisplayName != nil {
                map["TacticDisplayName"] = self.tacticDisplayName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmEventType"] as? String {
                self.alarmEventType = value
            }
            if let value = dict["AlarmEventTypeDisplay"] as? String {
                self.alarmEventTypeDisplay = value
            }
            if let value = dict["AlarmId"] as? Int64 {
                self.alarmId = value
            }
            if let value = dict["AlarmName"] as? String {
                self.alarmName = value
            }
            if let value = dict["AlarmSource"] as? String {
                self.alarmSource = value
            }
            if let value = dict["AlarmTime"] as? String {
                self.alarmTime = value
            }
            if let value = dict["AnalysisResult"] as? String {
                self.analysisResult = value
            }
            if let value = dict["ContainHwMode"] as? Bool {
                self.containHwMode = value
            }
            if let value = dict["DealTime"] as? String {
                self.dealTime = value
            }
            if let value = dict["Desc"] as? String {
                self.desc = value
            }
            if let value = dict["EventDetails"] as? [Any?] {
                var tmp : [GetAlarmDetailByIdResponseBody.Data.EventDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetAlarmDetailByIdResponseBody.Data.EventDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.eventDetails = tmp
            }
            if let value = dict["EventLevel"] as? String {
                self.eventLevel = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["OccurrenceTime"] as? String {
                self.occurrenceTime = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TacticDisplayName"] as? String {
                self.tacticDisplayName = value
            }
        }
    }
    public var code: String?

    public var data: GetAlarmDetailByIdResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAlarmDetailByIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAlarmDetailByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlarmDetailByIdResponseBody?

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
            var model = GetAlarmDetailByIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAttackedAssetDealRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetAttackedAssetDealResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EcsTrendList : Tea.TeaModel {
            public var date: String?

            public var dealCount: Int64?

            public var findCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.dealCount != nil {
                    map["DealCount"] = self.dealCount!
                }
                if self.findCount != nil {
                    map["FindCount"] = self.findCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? String {
                    self.date = value
                }
                if let value = dict["DealCount"] as? Int64 {
                    self.dealCount = value
                }
                if let value = dict["FindCount"] as? Int64 {
                    self.findCount = value
                }
            }
        }
        public var ecsTrendList: [GetAttackedAssetDealResponseBody.Data.EcsTrendList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsTrendList != nil {
                var tmp : [Any] = []
                for k in self.ecsTrendList! {
                    tmp.append(k.toMap())
                }
                map["EcsTrendList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EcsTrendList"] as? [Any?] {
                var tmp : [GetAttackedAssetDealResponseBody.Data.EcsTrendList] = []
                for v in value {
                    if v != nil {
                        var model = GetAttackedAssetDealResponseBody.Data.EcsTrendList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ecsTrendList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetAttackedAssetDealResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAttackedAssetDealResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAttackedAssetDealResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAttackedAssetDealResponseBody?

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
            var model = GetAttackedAssetDealResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBaselineSummaryRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetBaselineSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TrendDTOList : Tea.TeaModel {
            public var date: String?

            public var dealCount: Int64?

            public var findCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.dealCount != nil {
                    map["DealCount"] = self.dealCount!
                }
                if self.findCount != nil {
                    map["FindCount"] = self.findCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? String {
                    self.date = value
                }
                if let value = dict["DealCount"] as? Int64 {
                    self.dealCount = value
                }
                if let value = dict["FindCount"] as? Int64 {
                    self.findCount = value
                }
            }
        }
        public var trendDTOList: [GetBaselineSummaryResponseBody.Data.TrendDTOList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trendDTOList != nil {
                var tmp : [Any] = []
                for k in self.trendDTOList! {
                    tmp.append(k.toMap())
                }
                map["TrendDTOList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TrendDTOList"] as? [Any?] {
                var tmp : [GetBaselineSummaryResponseBody.Data.TrendDTOList] = []
                for v in value {
                    if v != nil {
                        var model = GetBaselineSummaryResponseBody.Data.TrendDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.trendDTOList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetBaselineSummaryResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetBaselineSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetBaselineSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBaselineSummaryResponseBody?

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
            var model = GetBaselineSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsoleScoreRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetConsoleScoreResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetConsoleScoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsoleScoreResponseBody?

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
            var model = GetConsoleScoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDetailByIdRequest : Tea.TeaModel {
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class GetDetailByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VulDetails : Tea.TeaModel {
            public var cveId: String?

            public var cvssScore: String?

            public var fixSuggestion: String?

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
                if self.cveId != nil {
                    map["CveId"] = self.cveId!
                }
                if self.cvssScore != nil {
                    map["CvssScore"] = self.cvssScore!
                }
                if self.fixSuggestion != nil {
                    map["FixSuggestion"] = self.fixSuggestion!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CveId"] as? String {
                    self.cveId = value
                }
                if let value = dict["CvssScore"] as? String {
                    self.cvssScore = value
                }
                if let value = dict["FixSuggestion"] as? String {
                    self.fixSuggestion = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
            }
        }
        public var vulDetails: [GetDetailByIdResponseBody.Data.VulDetails]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vulDetails != nil {
                var tmp : [Any] = []
                for k in self.vulDetails! {
                    tmp.append(k.toMap())
                }
                map["VulDetails"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VulDetails"] as? [Any?] {
                var tmp : [GetDetailByIdResponseBody.Data.VulDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetDetailByIdResponseBody.Data.VulDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vulDetails = tmp
            }
        }
    }
    public var code: String?

    public var data: GetDetailByIdResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDetailByIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDetailByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDetailByIdResponseBody?

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
            var model = GetDetailByIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentDownloadUrlRequest : Tea.TeaModel {
    public var fileKey: String?

    public var id: Int64?

    public var reportType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileKey"] as? String {
            self.fileKey = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ReportType"] as? String {
            self.reportType = value
        }
    }
}

public class GetDocumentDownloadUrlResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDocumentDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentDownloadUrlResponseBody?

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
            var model = GetDocumentDownloadUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentPageRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var deliveredBy: String?

    public var documentName: String?

    public var documentType: String?

    public var pageSize: Int32?

    public var reportType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deliveredBy != nil {
            map["DeliveredBy"] = self.deliveredBy!
        }
        if self.documentName != nil {
            map["DocumentName"] = self.documentName!
        }
        if self.documentType != nil {
            map["DocumentType"] = self.documentType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DeliveredBy"] as? String {
            self.deliveredBy = value
        }
        if let value = dict["DocumentName"] as? String {
            self.documentName = value
        }
        if let value = dict["DocumentType"] as? String {
            self.documentType = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReportType"] as? String {
            self.reportType = value
        }
    }
}

public class GetDocumentPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deliveredBy: String?

        public var documentName: String?

        public var documentType: String?

        public var id: Int64?

        public var reportStatus: String?

        public var uploadTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveredBy != nil {
                map["DeliveredBy"] = self.deliveredBy!
            }
            if self.documentName != nil {
                map["DocumentName"] = self.documentName!
            }
            if self.documentType != nil {
                map["DocumentType"] = self.documentType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.reportStatus != nil {
                map["ReportStatus"] = self.reportStatus!
            }
            if self.uploadTime != nil {
                map["UploadTime"] = self.uploadTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveredBy"] as? String {
                self.deliveredBy = value
            }
            if let value = dict["DocumentName"] as? String {
                self.documentName = value
            }
            if let value = dict["DocumentType"] as? String {
                self.documentType = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ReportStatus"] as? String {
                self.reportStatus = value
            }
            if let value = dict["UploadTime"] as? String {
                self.uploadTime = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: [GetDocumentPageResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageInfo: GetDocumentPageResponseBody.PageInfo?

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
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetDocumentPageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetDocumentPageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = GetDocumentPageResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDocumentPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentPageResponseBody?

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
            var model = GetDocumentPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentSummaryRequest : Tea.TeaModel {
    public var reportType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportType"] as? String {
            self.reportType = value
        }
    }
}

public class GetDocumentSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var documentCount: Int64?

        public var frequency: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.documentCount != nil {
                map["DocumentCount"] = self.documentCount!
            }
            if self.frequency != nil {
                map["Frequency"] = self.frequency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DocumentCount"] as? Int64 {
                self.documentCount = value
            }
            if let value = dict["Frequency"] as? Int64 {
                self.frequency = value
            }
        }
    }
    public var code: String?

    public var data: GetDocumentSummaryResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDocumentSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDocumentSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentSummaryResponseBody?

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
            var model = GetDocumentSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRecentDocumentRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetRecentDocumentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

        public var name: String?

        public var uploadTime: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.uploadTime != nil {
                map["UploadTime"] = self.uploadTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["UploadTime"] as? String {
                self.uploadTime = value
            }
        }
    }
    public var code: String?

    public var data: [GetRecentDocumentResponseBody.Data]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetRecentDocumentResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetRecentDocumentResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetRecentDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRecentDocumentResponseBody?

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
            var model = GetRecentDocumentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSafetyCoverRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetSafetyCoverResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CfwProtection : Tea.TeaModel {
            public var noProtectionCount: Int64?

            public var protectionCount: Int64?

            public var protectionGrowthRate: String?

            public var protectionRate: String?

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
                if self.noProtectionCount != nil {
                    map["NoProtectionCount"] = self.noProtectionCount!
                }
                if self.protectionCount != nil {
                    map["ProtectionCount"] = self.protectionCount!
                }
                if self.protectionGrowthRate != nil {
                    map["ProtectionGrowthRate"] = self.protectionGrowthRate!
                }
                if self.protectionRate != nil {
                    map["ProtectionRate"] = self.protectionRate!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NoProtectionCount"] as? Int64 {
                    self.noProtectionCount = value
                }
                if let value = dict["ProtectionCount"] as? Int64 {
                    self.protectionCount = value
                }
                if let value = dict["ProtectionGrowthRate"] as? String {
                    self.protectionGrowthRate = value
                }
                if let value = dict["ProtectionRate"] as? String {
                    self.protectionRate = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class EcsProtection : Tea.TeaModel {
            public var noProtectionCount: Int64?

            public var protectionCount: Int64?

            public var protectionGrowthRate: String?

            public var protectionRate: String?

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
                if self.noProtectionCount != nil {
                    map["NoProtectionCount"] = self.noProtectionCount!
                }
                if self.protectionCount != nil {
                    map["ProtectionCount"] = self.protectionCount!
                }
                if self.protectionGrowthRate != nil {
                    map["ProtectionGrowthRate"] = self.protectionGrowthRate!
                }
                if self.protectionRate != nil {
                    map["ProtectionRate"] = self.protectionRate!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NoProtectionCount"] as? Int64 {
                    self.noProtectionCount = value
                }
                if let value = dict["ProtectionCount"] as? Int64 {
                    self.protectionCount = value
                }
                if let value = dict["ProtectionGrowthRate"] as? String {
                    self.protectionGrowthRate = value
                }
                if let value = dict["ProtectionRate"] as? String {
                    self.protectionRate = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class WafProtection : Tea.TeaModel {
            public var noProtectionCount: Int64?

            public var protectionCount: Int64?

            public var protectionGrowthRate: String?

            public var protectionRate: String?

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
                if self.noProtectionCount != nil {
                    map["NoProtectionCount"] = self.noProtectionCount!
                }
                if self.protectionCount != nil {
                    map["ProtectionCount"] = self.protectionCount!
                }
                if self.protectionGrowthRate != nil {
                    map["ProtectionGrowthRate"] = self.protectionGrowthRate!
                }
                if self.protectionRate != nil {
                    map["ProtectionRate"] = self.protectionRate!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NoProtectionCount"] as? Int64 {
                    self.noProtectionCount = value
                }
                if let value = dict["ProtectionCount"] as? Int64 {
                    self.protectionCount = value
                }
                if let value = dict["ProtectionGrowthRate"] as? String {
                    self.protectionGrowthRate = value
                }
                if let value = dict["ProtectionRate"] as? String {
                    self.protectionRate = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public var cfwProtection: GetSafetyCoverResponseBody.Data.CfwProtection?

        public var ecsProtection: GetSafetyCoverResponseBody.Data.EcsProtection?

        public var wafProtection: GetSafetyCoverResponseBody.Data.WafProtection?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cfwProtection?.validate()
            try self.ecsProtection?.validate()
            try self.wafProtection?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cfwProtection != nil {
                map["CfwProtection"] = self.cfwProtection?.toMap()
            }
            if self.ecsProtection != nil {
                map["EcsProtection"] = self.ecsProtection?.toMap()
            }
            if self.wafProtection != nil {
                map["WafProtection"] = self.wafProtection?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CfwProtection"] as? [String: Any?] {
                var model = GetSafetyCoverResponseBody.Data.CfwProtection()
                model.fromMap(value)
                self.cfwProtection = model
            }
            if let value = dict["EcsProtection"] as? [String: Any?] {
                var model = GetSafetyCoverResponseBody.Data.EcsProtection()
                model.fromMap(value)
                self.ecsProtection = model
            }
            if let value = dict["WafProtection"] as? [String: Any?] {
                var model = GetSafetyCoverResponseBody.Data.WafProtection()
                model.fromMap(value)
                self.wafProtection = model
            }
        }
    }
    public var code: String?

    public var data: GetSafetyCoverResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSafetyCoverResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSafetyCoverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSafetyCoverResponseBody?

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
            var model = GetSafetyCoverResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSowListRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetSowListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var completeTime: String?

        public var operateRemark: String?

        public var progress: String?

        public var recordCount: Int32?

        public var startTime: String?

        public var taskTypeName: String?

        public var workOrderName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completeTime != nil {
                map["CompleteTime"] = self.completeTime!
            }
            if self.operateRemark != nil {
                map["OperateRemark"] = self.operateRemark!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.recordCount != nil {
                map["RecordCount"] = self.recordCount!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.taskTypeName != nil {
                map["TaskTypeName"] = self.taskTypeName!
            }
            if self.workOrderName != nil {
                map["WorkOrderName"] = self.workOrderName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompleteTime"] as? String {
                self.completeTime = value
            }
            if let value = dict["OperateRemark"] as? String {
                self.operateRemark = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["RecordCount"] as? Int32 {
                self.recordCount = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["TaskTypeName"] as? String {
                self.taskTypeName = value
            }
            if let value = dict["WorkOrderName"] as? String {
                self.workOrderName = value
            }
        }
    }
    public var code: String?

    public var data: [GetSowListResponseBody.Data]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetSowListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetSowListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSowListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSowListResponseBody?

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
            var model = GetSowListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSuspEventPageRequest : Tea.TeaModel {
    public var alarmEndTime: Int64?

    public var alarmStartTime: Int64?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var source: String?

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
        if self.alarmEndTime != nil {
            map["AlarmEndTime"] = self.alarmEndTime!
        }
        if self.alarmStartTime != nil {
            map["AlarmStartTime"] = self.alarmStartTime!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmEndTime"] as? Int64 {
            self.alarmEndTime = value
        }
        if let value = dict["AlarmStartTime"] as? Int64 {
            self.alarmStartTime = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class GetSuspEventPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alarmEventType: String?

        public var alarmId: Int64?

        public var alarmName: String?

        public var alarmSource: String?

        public var alarmTime: String?

        public var analysisResult: String?

        public var dealTime: String?

        public var eventLevel: String?

        public var id: Int64?

        public var instanceName: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var occurrenceTime: String?

        public var ownerId: String?

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
            if self.alarmEventType != nil {
                map["AlarmEventType"] = self.alarmEventType!
            }
            if self.alarmId != nil {
                map["AlarmId"] = self.alarmId!
            }
            if self.alarmName != nil {
                map["AlarmName"] = self.alarmName!
            }
            if self.alarmSource != nil {
                map["AlarmSource"] = self.alarmSource!
            }
            if self.alarmTime != nil {
                map["AlarmTime"] = self.alarmTime!
            }
            if self.analysisResult != nil {
                map["AnalysisResult"] = self.analysisResult!
            }
            if self.dealTime != nil {
                map["DealTime"] = self.dealTime!
            }
            if self.eventLevel != nil {
                map["EventLevel"] = self.eventLevel!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.occurrenceTime != nil {
                map["OccurrenceTime"] = self.occurrenceTime!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmEventType"] as? String {
                self.alarmEventType = value
            }
            if let value = dict["AlarmId"] as? Int64 {
                self.alarmId = value
            }
            if let value = dict["AlarmName"] as? String {
                self.alarmName = value
            }
            if let value = dict["AlarmSource"] as? String {
                self.alarmSource = value
            }
            if let value = dict["AlarmTime"] as? String {
                self.alarmTime = value
            }
            if let value = dict["AnalysisResult"] as? String {
                self.analysisResult = value
            }
            if let value = dict["DealTime"] as? String {
                self.dealTime = value
            }
            if let value = dict["EventLevel"] as? String {
                self.eventLevel = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["OccurrenceTime"] as? String {
                self.occurrenceTime = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: [GetSuspEventPageResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageInfo: GetSuspEventPageResponseBody.PageInfo?

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
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetSuspEventPageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetSuspEventPageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = GetSuspEventPageResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSuspEventPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSuspEventPageResponseBody?

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
            var model = GetSuspEventPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSuspEventSummaryRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetSuspEventSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NetworkAttackTrendDTO : Tea.TeaModel {
            public class TrendList : Tea.TeaModel {
                public var date: String?

                public var ddosCount: Int64?

                public var eipCount: Int64?

                public var wafCount: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.date != nil {
                        map["Date"] = self.date!
                    }
                    if self.ddosCount != nil {
                        map["DdosCount"] = self.ddosCount!
                    }
                    if self.eipCount != nil {
                        map["EipCount"] = self.eipCount!
                    }
                    if self.wafCount != nil {
                        map["WafCount"] = self.wafCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Date"] as? String {
                        self.date = value
                    }
                    if let value = dict["DdosCount"] as? Int64 {
                        self.ddosCount = value
                    }
                    if let value = dict["EipCount"] as? Int64 {
                        self.eipCount = value
                    }
                    if let value = dict["WafCount"] as? Int64 {
                        self.wafCount = value
                    }
                }
            }
            public var trendList: [GetSuspEventSummaryResponseBody.Data.NetworkAttackTrendDTO.TrendList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.trendList != nil {
                    var tmp : [Any] = []
                    for k in self.trendList! {
                        tmp.append(k.toMap())
                    }
                    map["TrendList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TrendList"] as? [Any?] {
                    var tmp : [GetSuspEventSummaryResponseBody.Data.NetworkAttackTrendDTO.TrendList] = []
                    for v in value {
                        if v != nil {
                            var model = GetSuspEventSummaryResponseBody.Data.NetworkAttackTrendDTO.TrendList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.trendList = tmp
                }
            }
        }
        public class SuspEventDealSummaryDTO : Tea.TeaModel {
            public var completedCount: Int64?

            public var handingCount: Int64?

            public var handingRate: String?

            public var totalCount: Int64?

            public var totalGrowthRate: String?

            public var waitHandleCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedCount != nil {
                    map["CompletedCount"] = self.completedCount!
                }
                if self.handingCount != nil {
                    map["HandingCount"] = self.handingCount!
                }
                if self.handingRate != nil {
                    map["HandingRate"] = self.handingRate!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalGrowthRate != nil {
                    map["TotalGrowthRate"] = self.totalGrowthRate!
                }
                if self.waitHandleCount != nil {
                    map["WaitHandleCount"] = self.waitHandleCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CompletedCount"] as? Int64 {
                    self.completedCount = value
                }
                if let value = dict["HandingCount"] as? Int64 {
                    self.handingCount = value
                }
                if let value = dict["HandingRate"] as? String {
                    self.handingRate = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
                if let value = dict["TotalGrowthRate"] as? String {
                    self.totalGrowthRate = value
                }
                if let value = dict["WaitHandleCount"] as? Int64 {
                    self.waitHandleCount = value
                }
            }
        }
        public class SuspEventTopDTO : Tea.TeaModel {
            public class SuspEventList : Tea.TeaModel {
                public var eventName: String?

                public var taskCount: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.eventName != nil {
                        map["EventName"] = self.eventName!
                    }
                    if self.taskCount != nil {
                        map["TaskCount"] = self.taskCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EventName"] as? String {
                        self.eventName = value
                    }
                    if let value = dict["TaskCount"] as? Int64 {
                        self.taskCount = value
                    }
                }
            }
            public var suspEventList: [GetSuspEventSummaryResponseBody.Data.SuspEventTopDTO.SuspEventList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.suspEventList != nil {
                    var tmp : [Any] = []
                    for k in self.suspEventList! {
                        tmp.append(k.toMap())
                    }
                    map["SuspEventList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SuspEventList"] as? [Any?] {
                    var tmp : [GetSuspEventSummaryResponseBody.Data.SuspEventTopDTO.SuspEventList] = []
                    for v in value {
                        if v != nil {
                            var model = GetSuspEventSummaryResponseBody.Data.SuspEventTopDTO.SuspEventList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.suspEventList = tmp
                }
            }
        }
        public class SuspEventTrendDTO : Tea.TeaModel {
            public class TrendList : Tea.TeaModel {
                public var date: String?

                public var dealCount: Int64?

                public var findCount: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.date != nil {
                        map["Date"] = self.date!
                    }
                    if self.dealCount != nil {
                        map["DealCount"] = self.dealCount!
                    }
                    if self.findCount != nil {
                        map["FindCount"] = self.findCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Date"] as? String {
                        self.date = value
                    }
                    if let value = dict["DealCount"] as? Int64 {
                        self.dealCount = value
                    }
                    if let value = dict["FindCount"] as? Int64 {
                        self.findCount = value
                    }
                }
            }
            public var trendList: [GetSuspEventSummaryResponseBody.Data.SuspEventTrendDTO.TrendList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.trendList != nil {
                    var tmp : [Any] = []
                    for k in self.trendList! {
                        tmp.append(k.toMap())
                    }
                    map["TrendList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TrendList"] as? [Any?] {
                    var tmp : [GetSuspEventSummaryResponseBody.Data.SuspEventTrendDTO.TrendList] = []
                    for v in value {
                        if v != nil {
                            var model = GetSuspEventSummaryResponseBody.Data.SuspEventTrendDTO.TrendList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.trendList = tmp
                }
            }
        }
        public var networkAttackTrendDTO: GetSuspEventSummaryResponseBody.Data.NetworkAttackTrendDTO?

        public var suspEventDealSummaryDTO: GetSuspEventSummaryResponseBody.Data.SuspEventDealSummaryDTO?

        public var suspEventTopDTO: GetSuspEventSummaryResponseBody.Data.SuspEventTopDTO?

        public var suspEventTrendDTO: GetSuspEventSummaryResponseBody.Data.SuspEventTrendDTO?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.networkAttackTrendDTO?.validate()
            try self.suspEventDealSummaryDTO?.validate()
            try self.suspEventTopDTO?.validate()
            try self.suspEventTrendDTO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.networkAttackTrendDTO != nil {
                map["NetworkAttackTrendDTO"] = self.networkAttackTrendDTO?.toMap()
            }
            if self.suspEventDealSummaryDTO != nil {
                map["SuspEventDealSummaryDTO"] = self.suspEventDealSummaryDTO?.toMap()
            }
            if self.suspEventTopDTO != nil {
                map["SuspEventTopDTO"] = self.suspEventTopDTO?.toMap()
            }
            if self.suspEventTrendDTO != nil {
                map["SuspEventTrendDTO"] = self.suspEventTrendDTO?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NetworkAttackTrendDTO"] as? [String: Any?] {
                var model = GetSuspEventSummaryResponseBody.Data.NetworkAttackTrendDTO()
                model.fromMap(value)
                self.networkAttackTrendDTO = model
            }
            if let value = dict["SuspEventDealSummaryDTO"] as? [String: Any?] {
                var model = GetSuspEventSummaryResponseBody.Data.SuspEventDealSummaryDTO()
                model.fromMap(value)
                self.suspEventDealSummaryDTO = model
            }
            if let value = dict["SuspEventTopDTO"] as? [String: Any?] {
                var model = GetSuspEventSummaryResponseBody.Data.SuspEventTopDTO()
                model.fromMap(value)
                self.suspEventTopDTO = model
            }
            if let value = dict["SuspEventTrendDTO"] as? [String: Any?] {
                var model = GetSuspEventSummaryResponseBody.Data.SuspEventTrendDTO()
                model.fromMap(value)
                self.suspEventTrendDTO = model
            }
        }
    }
    public var code: String?

    public var data: GetSuspEventSummaryResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSuspEventSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSuspEventSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSuspEventSummaryResponseBody?

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
            var model = GetSuspEventSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSuspPageSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var completedCount: Int64?

        public var handingCount: Int64?

        public var highCount: Int64?

        public var lowCount: Int64?

        public var mediumCount: Int64?

        public var totalCount: Int64?

        public var waitHandleCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completedCount != nil {
                map["CompletedCount"] = self.completedCount!
            }
            if self.handingCount != nil {
                map["HandingCount"] = self.handingCount!
            }
            if self.highCount != nil {
                map["HighCount"] = self.highCount!
            }
            if self.lowCount != nil {
                map["LowCount"] = self.lowCount!
            }
            if self.mediumCount != nil {
                map["MediumCount"] = self.mediumCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.waitHandleCount != nil {
                map["WaitHandleCount"] = self.waitHandleCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompletedCount"] as? Int64 {
                self.completedCount = value
            }
            if let value = dict["HandingCount"] as? Int64 {
                self.handingCount = value
            }
            if let value = dict["HighCount"] as? Int64 {
                self.highCount = value
            }
            if let value = dict["LowCount"] as? Int64 {
                self.lowCount = value
            }
            if let value = dict["MediumCount"] as? Int64 {
                self.mediumCount = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["WaitHandleCount"] as? Int64 {
                self.waitHandleCount = value
            }
        }
    }
    public var code: String?

    public var data: GetSuspPageSummaryResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSuspPageSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSuspPageSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSuspPageSummaryResponseBody?

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
            var model = GetSuspPageSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customerType: String?

        public var endDate: String?

        public var instanceId: String?

        public var startDate: String?

        public var status: String?

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
            if self.customerType != nil {
                map["CustomerType"] = self.customerType!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomerType"] as? String {
                self.customerType = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var code: String?

    public var data: GetUserStatusResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUserStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserStatusResponseBody?

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
            var model = GetUserStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVulItemPageRequest : Tea.TeaModel {
    public var aliasName: String?

    public var currentPage: Int32?

    public var dealed: String?

    public var level: String?

    public var name: String?

    public var pageSize: Int32?

    public var scanType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dealed != nil {
            map["Dealed"] = self.dealed!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.scanType != nil {
            map["ScanType"] = self.scanType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Dealed"] as? String {
            self.dealed = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ScanType"] as? String {
            self.scanType = value
        }
    }
}

public class GetVulItemPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliasName: String?

        public var asapCount: Int32?

        public var customerId: String?

        public var cveUrlPrefix: String?

        public var dealed: String?

        public var findTime: String?

        public var handledCount: Int32?

        public var id: Int64?

        public var laterCount: Int32?

        public var level: String?

        public var name: String?

        public var nntfCount: Int32?

        public var related: String?

        public var relatedCveCount: Int32?

        public var scanType: String?

        public var tags: String?

        public var totalFixCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.asapCount != nil {
                map["AsapCount"] = self.asapCount!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.cveUrlPrefix != nil {
                map["CveUrlPrefix"] = self.cveUrlPrefix!
            }
            if self.dealed != nil {
                map["Dealed"] = self.dealed!
            }
            if self.findTime != nil {
                map["FindTime"] = self.findTime!
            }
            if self.handledCount != nil {
                map["HandledCount"] = self.handledCount!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.laterCount != nil {
                map["LaterCount"] = self.laterCount!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nntfCount != nil {
                map["NntfCount"] = self.nntfCount!
            }
            if self.related != nil {
                map["Related"] = self.related!
            }
            if self.relatedCveCount != nil {
                map["RelatedCveCount"] = self.relatedCveCount!
            }
            if self.scanType != nil {
                map["ScanType"] = self.scanType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.totalFixCount != nil {
                map["TotalFixCount"] = self.totalFixCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["AsapCount"] as? Int32 {
                self.asapCount = value
            }
            if let value = dict["CustomerId"] as? String {
                self.customerId = value
            }
            if let value = dict["CveUrlPrefix"] as? String {
                self.cveUrlPrefix = value
            }
            if let value = dict["Dealed"] as? String {
                self.dealed = value
            }
            if let value = dict["FindTime"] as? String {
                self.findTime = value
            }
            if let value = dict["HandledCount"] as? Int32 {
                self.handledCount = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LaterCount"] as? Int32 {
                self.laterCount = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NntfCount"] as? Int32 {
                self.nntfCount = value
            }
            if let value = dict["Related"] as? String {
                self.related = value
            }
            if let value = dict["RelatedCveCount"] as? Int32 {
                self.relatedCveCount = value
            }
            if let value = dict["ScanType"] as? String {
                self.scanType = value
            }
            if let value = dict["Tags"] as? String {
                self.tags = value
            }
            if let value = dict["TotalFixCount"] as? Int64 {
                self.totalFixCount = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: [GetVulItemPageResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageInfo: GetVulItemPageResponseBody.PageInfo?

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
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetVulItemPageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetVulItemPageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = GetVulItemPageResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVulItemPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVulItemPageResponseBody?

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
            var model = GetVulItemPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVulListByIdRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dealed: String?

    public var id: Int64?

    public var necessity: String?

    public var pageSize: Int32?

    public var remark: String?

    public var uuids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dealed != nil {
            map["Dealed"] = self.dealed!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.necessity != nil {
            map["Necessity"] = self.necessity!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Dealed"] as? String {
            self.dealed = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Necessity"] as? String {
            self.necessity = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Uuids"] as? String {
            self.uuids = value
        }
    }
}

public class GetVulListByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EffectMsgDTOS : Tea.TeaModel {
            public var matchList: String?

            public var path: String?

            public var softName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.matchList != nil {
                    map["MatchList"] = self.matchList!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.softName != nil {
                    map["SoftName"] = self.softName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MatchList"] as? String {
                    self.matchList = value
                }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["SoftName"] as? String {
                    self.softName = value
                }
            }
        }
        public var aliasName: String?

        public var effectMsgDTOS: [GetVulListByIdResponseBody.Data.EffectMsgDTOS]?

        public var firstTs: String?

        public var instanceName: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var lastTs: String?

        public var name: String?

        public var necessity: String?

        public var related: String?

        public var repairCmd: String?

        public var repairTs: String?

        public var status: String?

        public var tag: String?

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
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.effectMsgDTOS != nil {
                var tmp : [Any] = []
                for k in self.effectMsgDTOS! {
                    tmp.append(k.toMap())
                }
                map["EffectMsgDTOS"] = tmp
            }
            if self.firstTs != nil {
                map["FirstTs"] = self.firstTs!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.lastTs != nil {
                map["LastTs"] = self.lastTs!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.necessity != nil {
                map["Necessity"] = self.necessity!
            }
            if self.related != nil {
                map["Related"] = self.related!
            }
            if self.repairCmd != nil {
                map["RepairCmd"] = self.repairCmd!
            }
            if self.repairTs != nil {
                map["RepairTs"] = self.repairTs!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["EffectMsgDTOS"] as? [Any?] {
                var tmp : [GetVulListByIdResponseBody.Data.EffectMsgDTOS] = []
                for v in value {
                    if v != nil {
                        var model = GetVulListByIdResponseBody.Data.EffectMsgDTOS()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.effectMsgDTOS = tmp
            }
            if let value = dict["FirstTs"] as? String {
                self.firstTs = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["LastTs"] as? String {
                self.lastTs = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Necessity"] as? String {
                self.necessity = value
            }
            if let value = dict["Related"] as? String {
                self.related = value
            }
            if let value = dict["RepairCmd"] as? String {
                self.repairCmd = value
            }
            if let value = dict["RepairTs"] as? String {
                self.repairTs = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: [GetVulListByIdResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageInfo: GetVulListByIdResponseBody.PageInfo?

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
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetVulListByIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetVulListByIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = GetVulListByIdResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVulListByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVulListByIdResponseBody?

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
            var model = GetVulListByIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVulPageSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var completedCount: Int64?

        public var handingCount: Int64?

        public var highCount: Int64?

        public var lowCount: Int64?

        public var mediumCount: Int64?

        public var totalCount: Int64?

        public var waitHandleCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completedCount != nil {
                map["CompletedCount"] = self.completedCount!
            }
            if self.handingCount != nil {
                map["HandingCount"] = self.handingCount!
            }
            if self.highCount != nil {
                map["HighCount"] = self.highCount!
            }
            if self.lowCount != nil {
                map["LowCount"] = self.lowCount!
            }
            if self.mediumCount != nil {
                map["MediumCount"] = self.mediumCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.waitHandleCount != nil {
                map["WaitHandleCount"] = self.waitHandleCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompletedCount"] as? Int64 {
                self.completedCount = value
            }
            if let value = dict["HandingCount"] as? Int64 {
                self.handingCount = value
            }
            if let value = dict["HighCount"] as? Int64 {
                self.highCount = value
            }
            if let value = dict["LowCount"] as? Int64 {
                self.lowCount = value
            }
            if let value = dict["MediumCount"] as? Int64 {
                self.mediumCount = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["WaitHandleCount"] as? Int64 {
                self.waitHandleCount = value
            }
        }
    }
    public var code: String?

    public var data: GetVulPageSummaryResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetVulPageSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVulPageSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVulPageSummaryResponseBody?

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
            var model = GetVulPageSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVulSummaryRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetVulSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TrendList : Tea.TeaModel {
            public var date: String?

            public var dealCount: Int64?

            public var findCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.dealCount != nil {
                    map["DealCount"] = self.dealCount!
                }
                if self.findCount != nil {
                    map["FindCount"] = self.findCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? String {
                    self.date = value
                }
                if let value = dict["DealCount"] as? Int64 {
                    self.dealCount = value
                }
                if let value = dict["FindCount"] as? Int64 {
                    self.findCount = value
                }
            }
        }
        public var completedCount: Int64?

        public var dealRate: String?

        public var trendList: [GetVulSummaryResponseBody.Data.TrendList]?

        public var waitHandleCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completedCount != nil {
                map["CompletedCount"] = self.completedCount!
            }
            if self.dealRate != nil {
                map["DealRate"] = self.dealRate!
            }
            if self.trendList != nil {
                var tmp : [Any] = []
                for k in self.trendList! {
                    tmp.append(k.toMap())
                }
                map["TrendList"] = tmp
            }
            if self.waitHandleCount != nil {
                map["WaitHandleCount"] = self.waitHandleCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompletedCount"] as? Int64 {
                self.completedCount = value
            }
            if let value = dict["DealRate"] as? String {
                self.dealRate = value
            }
            if let value = dict["TrendList"] as? [Any?] {
                var tmp : [GetVulSummaryResponseBody.Data.TrendList] = []
                for v in value {
                    if v != nil {
                        var model = GetVulSummaryResponseBody.Data.TrendList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.trendList = tmp
            }
            if let value = dict["WaitHandleCount"] as? Int64 {
                self.waitHandleCount = value
            }
        }
    }
    public var code: String?

    public var data: GetVulSummaryResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetVulSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVulSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVulSummaryResponseBody?

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
            var model = GetVulSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkTaskSummaryRequest : Tea.TeaModel {
    public var dateType: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var suspEventSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suspEventSource != nil {
            map["SuspEventSource"] = self.suspEventSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateType"] as? String {
            self.dateType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SuspEventSource"] as? String {
            self.suspEventSource = value
        }
    }
}

public class GetWorkTaskSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dealAverageDuration: Int64?

        public var dealAverageDurationGrowthRate: String?

        public var dealWorkTaskCount: Int64?

        public var dealWorkTaskCountRate: String?

        public var workTaskCount: Int64?

        public var workTaskDealRate: String?

        public var workTaskDealRateGrowthRate: String?

        public var workTaskGrowthRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dealAverageDuration != nil {
                map["DealAverageDuration"] = self.dealAverageDuration!
            }
            if self.dealAverageDurationGrowthRate != nil {
                map["DealAverageDurationGrowthRate"] = self.dealAverageDurationGrowthRate!
            }
            if self.dealWorkTaskCount != nil {
                map["DealWorkTaskCount"] = self.dealWorkTaskCount!
            }
            if self.dealWorkTaskCountRate != nil {
                map["DealWorkTaskCountRate"] = self.dealWorkTaskCountRate!
            }
            if self.workTaskCount != nil {
                map["WorkTaskCount"] = self.workTaskCount!
            }
            if self.workTaskDealRate != nil {
                map["WorkTaskDealRate"] = self.workTaskDealRate!
            }
            if self.workTaskDealRateGrowthRate != nil {
                map["WorkTaskDealRateGrowthRate"] = self.workTaskDealRateGrowthRate!
            }
            if self.workTaskGrowthRate != nil {
                map["WorkTaskGrowthRate"] = self.workTaskGrowthRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DealAverageDuration"] as? Int64 {
                self.dealAverageDuration = value
            }
            if let value = dict["DealAverageDurationGrowthRate"] as? String {
                self.dealAverageDurationGrowthRate = value
            }
            if let value = dict["DealWorkTaskCount"] as? Int64 {
                self.dealWorkTaskCount = value
            }
            if let value = dict["DealWorkTaskCountRate"] as? String {
                self.dealWorkTaskCountRate = value
            }
            if let value = dict["WorkTaskCount"] as? Int64 {
                self.workTaskCount = value
            }
            if let value = dict["WorkTaskDealRate"] as? String {
                self.workTaskDealRate = value
            }
            if let value = dict["WorkTaskDealRateGrowthRate"] as? String {
                self.workTaskDealRateGrowthRate = value
            }
            if let value = dict["WorkTaskGrowthRate"] as? String {
                self.workTaskGrowthRate = value
            }
        }
    }
    public var code: String?

    public var data: GetWorkTaskSummaryResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkTaskSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetWorkTaskSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkTaskSummaryResponseBody?

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
            var model = GetWorkTaskSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PageServiceCustomerRequest : Tea.TeaModel {
    public var authStatus: Int32?

    public var cmAuthStatus: Int32?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var monitorAuthStatus: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authStatus != nil {
            map["AuthStatus"] = self.authStatus!
        }
        if self.cmAuthStatus != nil {
            map["CmAuthStatus"] = self.cmAuthStatus!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.monitorAuthStatus != nil {
            map["MonitorAuthStatus"] = self.monitorAuthStatus!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthStatus"] as? Int32 {
            self.authStatus = value
        }
        if let value = dict["CmAuthStatus"] as? Int32 {
            self.cmAuthStatus = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["MonitorAuthStatus"] as? Int32 {
            self.monitorAuthStatus = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class PageServiceCustomerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliuid: String?

        public var authStatus: Int32?

        public var cmAuthStatus: Int32?

        public var endTime: Int64?

        public var level: String?

        public var monitorAuthStatus: Int32?

        public var name: String?

        public var ownId: String?

        public var startTime: Int64?

        public var userId: String?

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
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.authStatus != nil {
                map["AuthStatus"] = self.authStatus!
            }
            if self.cmAuthStatus != nil {
                map["CmAuthStatus"] = self.cmAuthStatus!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.monitorAuthStatus != nil {
                map["MonitorAuthStatus"] = self.monitorAuthStatus!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ownId != nil {
                map["OwnId"] = self.ownId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Aliuid"] as? String {
                self.aliuid = value
            }
            if let value = dict["AuthStatus"] as? Int32 {
                self.authStatus = value
            }
            if let value = dict["CmAuthStatus"] as? Int32 {
                self.cmAuthStatus = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["MonitorAuthStatus"] as? Int32 {
                self.monitorAuthStatus = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OwnId"] as? String {
                self.ownId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: [PageServiceCustomerResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageInfo: PageServiceCustomerResponseBody.PageInfo?

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
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [PageServiceCustomerResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = PageServiceCustomerResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = PageServiceCustomerResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PageServiceCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageServiceCustomerResponseBody?

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
            var model = PageServiceCustomerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendCustomEventRequest : Tea.TeaModel {
    public var customerId: String?

    public var dataSource: String?

    public var eventDescription: String?

    public var eventDetails: String?

    public var eventMarkdown: String?

    public var eventName: String?

    public var eventType: String?

    public var findTime: Int64?

    public var instanceId: String?

    public var instanceName: String?

    public var isSend: String?

    public var level: String?

    public var occurrenceTime: Int64?

    public var ownerId: String?

    public var product: String?

    public var uniqueId: String?

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
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource!
        }
        if self.eventDescription != nil {
            map["EventDescription"] = self.eventDescription!
        }
        if self.eventDetails != nil {
            map["EventDetails"] = self.eventDetails!
        }
        if self.eventMarkdown != nil {
            map["EventMarkdown"] = self.eventMarkdown!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.findTime != nil {
            map["FindTime"] = self.findTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.isSend != nil {
            map["IsSend"] = self.isSend!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.occurrenceTime != nil {
            map["OccurrenceTime"] = self.occurrenceTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerId"] as? String {
            self.customerId = value
        }
        if let value = dict["DataSource"] as? String {
            self.dataSource = value
        }
        if let value = dict["EventDescription"] as? String {
            self.eventDescription = value
        }
        if let value = dict["EventDetails"] as? String {
            self.eventDetails = value
        }
        if let value = dict["EventMarkdown"] as? String {
            self.eventMarkdown = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["FindTime"] as? Int64 {
            self.findTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IsSend"] as? String {
            self.isSend = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["OccurrenceTime"] as? Int64 {
            self.occurrenceTime = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class SendCustomEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customerId: String?

        public var customerName: String?

        public var eventId: String?

        public var eventType: String?

        public var id: Int64?

        public var ownerId: String?

        public var ownerName: String?

        public var workTaskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.customerName != nil {
                map["CustomerName"] = self.customerName!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.workTaskName != nil {
                map["WorkTaskName"] = self.workTaskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomerId"] as? String {
                self.customerId = value
            }
            if let value = dict["CustomerName"] as? String {
                self.customerName = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["EventType"] as? String {
                self.eventType = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["OwnerName"] as? String {
                self.ownerName = value
            }
            if let value = dict["WorkTaskName"] as? String {
                self.workTaskName = value
            }
        }
    }
    public var code: String?

    public var data: SendCustomEventResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SendCustomEventResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendCustomEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCustomEventResponseBody?

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
            var model = SendCustomEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
