import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateServiceWorkOrderRequest : Tea.TeaModel {
    public var creator: String?

    public var customerId: String?

    public var durationDay: String?

    public var isAttachment: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Creator") {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("CustomerId") {
            self.customerId = dict["CustomerId"] as! String
        }
        if dict.keys.contains("DurationDay") {
            self.durationDay = dict["DurationDay"] as! String
        }
        if dict.keys.contains("IsAttachment") {
            self.isAttachment = dict["IsAttachment"] as! String
        }
        if dict.keys.contains("IsWorkOrderNotify") {
            self.isWorkOrderNotify = dict["IsWorkOrderNotify"] as! String
        }
        if dict.keys.contains("NotifyDay") {
            self.notifyDay = dict["NotifyDay"] as! String
        }
        if dict.keys.contains("NotifyId") {
            self.notifyId = dict["NotifyId"] as! Int64
        }
        if dict.keys.contains("OperateRemark") {
            self.operateRemark = dict["OperateRemark"] as! String
        }
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("WorkOrderDetail") {
            self.workOrderDetail = dict["WorkOrderDetail"] as! String
        }
        if dict.keys.contains("WorkOrderName") {
            self.workOrderName = dict["WorkOrderName"] as! String
        }
        if dict.keys.contains("WorkOrderSource") {
            self.workOrderSource = dict["WorkOrderSource"] as! String
        }
        if dict.keys.contains("WorkOrderStatus") {
            self.workOrderStatus = dict["WorkOrderStatus"] as! String
        }
        if dict.keys.contains("WorkOrderType") {
            self.workOrderType = dict["WorkOrderType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompleteTime") {
                self.completeTime = dict["CompleteTime"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("CustomerId") {
                self.customerId = dict["CustomerId"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("WorkOrderDetail") {
                self.workOrderDetail = dict["WorkOrderDetail"] as! String
            }
            if dict.keys.contains("WorkOrderName") {
                self.workOrderName = dict["WorkOrderName"] as! String
            }
            if dict.keys.contains("WorkOrderSource") {
                self.workOrderSource = dict["WorkOrderSource"] as! String
            }
            if dict.keys.contains("WorkOrderStatus") {
                self.workOrderStatus = dict["WorkOrderStatus"] as! String
            }
            if dict.keys.contains("WorkOrderType") {
                self.workOrderType = dict["WorkOrderType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateServiceWorkOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceWorkOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttachmentName") {
            self.attachmentName = dict["AttachmentName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ForwardOwnerId") {
            self.forwardOwnerId = dict["ForwardOwnerId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("IsAttachment") {
            self.isAttachment = dict["IsAttachment"] as! String
        }
        if dict.keys.contains("IsWorkOrderNotify") {
            self.isWorkOrderNotify = dict["IsWorkOrderNotify"] as! String
        }
        if dict.keys.contains("NotifyId") {
            self.notifyId = dict["NotifyId"] as! Int64
        }
        if dict.keys.contains("OperateRemark") {
            self.operateRemark = dict["OperateRemark"] as! String
        }
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("UpgradeOwnerId") {
            self.upgradeOwnerId = dict["UpgradeOwnerId"] as! String
        }
        if dict.keys.contains("WorkOrderDetail") {
            self.workOrderDetail = dict["WorkOrderDetail"] as! String
        }
        if dict.keys.contains("WorkOrderName") {
            self.workOrderName = dict["WorkOrderName"] as! String
        }
        if dict.keys.contains("WorkOrderStatus") {
            self.workOrderStatus = dict["WorkOrderStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisposeServiceWorkOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("OptRemark") {
            self.optRemark = dict["OptRemark"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TaskIds") {
            self.taskIds = dict["TaskIds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisposeWorkTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateType") {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("SuspEventSource") {
            self.suspEventSource = dict["SuspEventSource"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("DealCount") {
                    self.dealCount = dict["DealCount"] as! Int64
                }
                if dict.keys.contains("FindCount") {
                    self.findCount = dict["FindCount"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EcsTrendList") {
                var tmp : [GetAttackedAssetDealResponseBody.Data.EcsTrendList] = []
                for v in dict["EcsTrendList"] as! [Any] {
                    var model = GetAttackedAssetDealResponseBody.Data.EcsTrendList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetAttackedAssetDealResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAttackedAssetDealResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateType") {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("SuspEventSource") {
            self.suspEventSource = dict["SuspEventSource"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("DealCount") {
                    self.dealCount = dict["DealCount"] as! Int64
                }
                if dict.keys.contains("FindCount") {
                    self.findCount = dict["FindCount"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TrendDTOList") {
                var tmp : [GetBaselineSummaryResponseBody.Data.TrendDTOList] = []
                for v in dict["TrendDTOList"] as! [Any] {
                    var model = GetBaselineSummaryResponseBody.Data.TrendDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetBaselineSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBaselineSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CveId") {
                    self.cveId = dict["CveId"] as! String
                }
                if dict.keys.contains("CvssScore") {
                    self.cvssScore = dict["CvssScore"] as! String
                }
                if dict.keys.contains("FixSuggestion") {
                    self.fixSuggestion = dict["FixSuggestion"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VulDetails") {
                var tmp : [GetDetailByIdResponseBody.Data.VulDetails] = []
                for v in dict["VulDetails"] as! [Any] {
                    var model = GetDetailByIdResponseBody.Data.VulDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetDetailByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDetailByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocumentDownloadUrlRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDocumentDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeliveredBy") {
            self.deliveredBy = dict["DeliveredBy"] as! String
        }
        if dict.keys.contains("DocumentName") {
            self.documentName = dict["DocumentName"] as! String
        }
        if dict.keys.contains("DocumentType") {
            self.documentType = dict["DocumentType"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReportType") {
            self.reportType = dict["ReportType"] as! String
        }
    }
}

public class GetDocumentPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deliveredBy: String?

        public var documentName: String?

        public var documentType: String?

        public var id: Int64?

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
            if self.uploadTime != nil {
                map["UploadTime"] = self.uploadTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeliveredBy") {
                self.deliveredBy = dict["DeliveredBy"] as! String
            }
            if dict.keys.contains("DocumentName") {
                self.documentName = dict["DocumentName"] as! String
            }
            if dict.keys.contains("DocumentType") {
                self.documentType = dict["DocumentType"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("UploadTime") {
                self.uploadTime = dict["UploadTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetDocumentPageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetDocumentPageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") {
            var model = GetDocumentPageResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDocumentPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportType") {
            self.reportType = dict["ReportType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DocumentCount") {
                self.documentCount = dict["DocumentCount"] as! Int64
            }
            if dict.keys.contains("Frequency") {
                self.frequency = dict["Frequency"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetDocumentSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDocumentSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateType") {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("SuspEventSource") {
            self.suspEventSource = dict["SuspEventSource"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UploadTime") {
                self.uploadTime = dict["UploadTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetRecentDocumentResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetRecentDocumentResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetRecentDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateType") {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("SuspEventSource") {
            self.suspEventSource = dict["SuspEventSource"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NoProtectionCount") {
                    self.noProtectionCount = dict["NoProtectionCount"] as! Int64
                }
                if dict.keys.contains("ProtectionCount") {
                    self.protectionCount = dict["ProtectionCount"] as! Int64
                }
                if dict.keys.contains("ProtectionGrowthRate") {
                    self.protectionGrowthRate = dict["ProtectionGrowthRate"] as! String
                }
                if dict.keys.contains("ProtectionRate") {
                    self.protectionRate = dict["ProtectionRate"] as! String
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NoProtectionCount") {
                    self.noProtectionCount = dict["NoProtectionCount"] as! Int64
                }
                if dict.keys.contains("ProtectionCount") {
                    self.protectionCount = dict["ProtectionCount"] as! Int64
                }
                if dict.keys.contains("ProtectionGrowthRate") {
                    self.protectionGrowthRate = dict["ProtectionGrowthRate"] as! String
                }
                if dict.keys.contains("ProtectionRate") {
                    self.protectionRate = dict["ProtectionRate"] as! String
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NoProtectionCount") {
                    self.noProtectionCount = dict["NoProtectionCount"] as! Int64
                }
                if dict.keys.contains("ProtectionCount") {
                    self.protectionCount = dict["ProtectionCount"] as! Int64
                }
                if dict.keys.contains("ProtectionGrowthRate") {
                    self.protectionGrowthRate = dict["ProtectionGrowthRate"] as! String
                }
                if dict.keys.contains("ProtectionRate") {
                    self.protectionRate = dict["ProtectionRate"] as! String
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CfwProtection") {
                var model = GetSafetyCoverResponseBody.Data.CfwProtection()
                model.fromMap(dict["CfwProtection"] as! [String: Any])
                self.cfwProtection = model
            }
            if dict.keys.contains("EcsProtection") {
                var model = GetSafetyCoverResponseBody.Data.EcsProtection()
                model.fromMap(dict["EcsProtection"] as! [String: Any])
                self.ecsProtection = model
            }
            if dict.keys.contains("WafProtection") {
                var model = GetSafetyCoverResponseBody.Data.WafProtection()
                model.fromMap(dict["WafProtection"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetSafetyCoverResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSafetyCoverResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmEndTime") {
            self.alarmEndTime = dict["AlarmEndTime"] as! Int64
        }
        if dict.keys.contains("AlarmStartTime") {
            self.alarmStartTime = dict["AlarmStartTime"] as! Int64
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmEventType") {
                self.alarmEventType = dict["AlarmEventType"] as! String
            }
            if dict.keys.contains("AlarmId") {
                self.alarmId = dict["AlarmId"] as! Int64
            }
            if dict.keys.contains("AlarmName") {
                self.alarmName = dict["AlarmName"] as! String
            }
            if dict.keys.contains("AlarmSource") {
                self.alarmSource = dict["AlarmSource"] as! String
            }
            if dict.keys.contains("AlarmTime") {
                self.alarmTime = dict["AlarmTime"] as! String
            }
            if dict.keys.contains("AnalysisResult") {
                self.analysisResult = dict["AnalysisResult"] as! String
            }
            if dict.keys.contains("DealTime") {
                self.dealTime = dict["DealTime"] as! String
            }
            if dict.keys.contains("EventLevel") {
                self.eventLevel = dict["EventLevel"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InternetIp") {
                self.internetIp = dict["InternetIp"] as! String
            }
            if dict.keys.contains("IntranetIp") {
                self.intranetIp = dict["IntranetIp"] as! String
            }
            if dict.keys.contains("OccurrenceTime") {
                self.occurrenceTime = dict["OccurrenceTime"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetSuspEventPageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetSuspEventPageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") {
            var model = GetSuspEventPageResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSuspEventPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateType") {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("SuspEventSource") {
            self.suspEventSource = dict["SuspEventSource"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Date") {
                        self.date = dict["Date"] as! String
                    }
                    if dict.keys.contains("DdosCount") {
                        self.ddosCount = dict["DdosCount"] as! Int64
                    }
                    if dict.keys.contains("EipCount") {
                        self.eipCount = dict["EipCount"] as! Int64
                    }
                    if dict.keys.contains("WafCount") {
                        self.wafCount = dict["WafCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TrendList") {
                    var tmp : [GetSuspEventSummaryResponseBody.Data.NetworkAttackTrendDTO.TrendList] = []
                    for v in dict["TrendList"] as! [Any] {
                        var model = GetSuspEventSummaryResponseBody.Data.NetworkAttackTrendDTO.TrendList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedCount") {
                    self.completedCount = dict["CompletedCount"] as! Int64
                }
                if dict.keys.contains("HandingCount") {
                    self.handingCount = dict["HandingCount"] as! Int64
                }
                if dict.keys.contains("HandingRate") {
                    self.handingRate = dict["HandingRate"] as! String
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
                if dict.keys.contains("TotalGrowthRate") {
                    self.totalGrowthRate = dict["TotalGrowthRate"] as! String
                }
                if dict.keys.contains("WaitHandleCount") {
                    self.waitHandleCount = dict["WaitHandleCount"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventName") {
                        self.eventName = dict["EventName"] as! String
                    }
                    if dict.keys.contains("TaskCount") {
                        self.taskCount = dict["TaskCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SuspEventList") {
                    var tmp : [GetSuspEventSummaryResponseBody.Data.SuspEventTopDTO.SuspEventList] = []
                    for v in dict["SuspEventList"] as! [Any] {
                        var model = GetSuspEventSummaryResponseBody.Data.SuspEventTopDTO.SuspEventList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Date") {
                        self.date = dict["Date"] as! String
                    }
                    if dict.keys.contains("DealCount") {
                        self.dealCount = dict["DealCount"] as! Int64
                    }
                    if dict.keys.contains("FindCount") {
                        self.findCount = dict["FindCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TrendList") {
                    var tmp : [GetSuspEventSummaryResponseBody.Data.SuspEventTrendDTO.TrendList] = []
                    for v in dict["TrendList"] as! [Any] {
                        var model = GetSuspEventSummaryResponseBody.Data.SuspEventTrendDTO.TrendList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NetworkAttackTrendDTO") {
                var model = GetSuspEventSummaryResponseBody.Data.NetworkAttackTrendDTO()
                model.fromMap(dict["NetworkAttackTrendDTO"] as! [String: Any])
                self.networkAttackTrendDTO = model
            }
            if dict.keys.contains("SuspEventDealSummaryDTO") {
                var model = GetSuspEventSummaryResponseBody.Data.SuspEventDealSummaryDTO()
                model.fromMap(dict["SuspEventDealSummaryDTO"] as! [String: Any])
                self.suspEventDealSummaryDTO = model
            }
            if dict.keys.contains("SuspEventTopDTO") {
                var model = GetSuspEventSummaryResponseBody.Data.SuspEventTopDTO()
                model.fromMap(dict["SuspEventTopDTO"] as! [String: Any])
                self.suspEventTopDTO = model
            }
            if dict.keys.contains("SuspEventTrendDTO") {
                var model = GetSuspEventSummaryResponseBody.Data.SuspEventTrendDTO()
                model.fromMap(dict["SuspEventTrendDTO"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetSuspEventSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSuspEventSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompletedCount") {
                self.completedCount = dict["CompletedCount"] as! Int64
            }
            if dict.keys.contains("HandingCount") {
                self.handingCount = dict["HandingCount"] as! Int64
            }
            if dict.keys.contains("HighCount") {
                self.highCount = dict["HighCount"] as! Int64
            }
            if dict.keys.contains("LowCount") {
                self.lowCount = dict["LowCount"] as! Int64
            }
            if dict.keys.contains("MediumCount") {
                self.mediumCount = dict["MediumCount"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("WaitHandleCount") {
                self.waitHandleCount = dict["WaitHandleCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetSuspPageSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSuspPageSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomerType") {
                self.customerType = dict["CustomerType"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetUserStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasName") {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Dealed") {
            self.dealed = dict["Dealed"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ScanType") {
            self.scanType = dict["ScanType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("AsapCount") {
                self.asapCount = dict["AsapCount"] as! Int32
            }
            if dict.keys.contains("CustomerId") {
                self.customerId = dict["CustomerId"] as! String
            }
            if dict.keys.contains("CveUrlPrefix") {
                self.cveUrlPrefix = dict["CveUrlPrefix"] as! String
            }
            if dict.keys.contains("Dealed") {
                self.dealed = dict["Dealed"] as! String
            }
            if dict.keys.contains("FindTime") {
                self.findTime = dict["FindTime"] as! String
            }
            if dict.keys.contains("HandledCount") {
                self.handledCount = dict["HandledCount"] as! Int32
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LaterCount") {
                self.laterCount = dict["LaterCount"] as! Int32
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NntfCount") {
                self.nntfCount = dict["NntfCount"] as! Int32
            }
            if dict.keys.contains("Related") {
                self.related = dict["Related"] as! String
            }
            if dict.keys.contains("RelatedCveCount") {
                self.relatedCveCount = dict["RelatedCveCount"] as! Int32
            }
            if dict.keys.contains("ScanType") {
                self.scanType = dict["ScanType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
            if dict.keys.contains("TotalFixCount") {
                self.totalFixCount = dict["TotalFixCount"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetVulItemPageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetVulItemPageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") {
            var model = GetVulItemPageResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetVulItemPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompletedCount") {
                self.completedCount = dict["CompletedCount"] as! Int64
            }
            if dict.keys.contains("HandingCount") {
                self.handingCount = dict["HandingCount"] as! Int64
            }
            if dict.keys.contains("HighCount") {
                self.highCount = dict["HighCount"] as! Int64
            }
            if dict.keys.contains("LowCount") {
                self.lowCount = dict["LowCount"] as! Int64
            }
            if dict.keys.contains("MediumCount") {
                self.mediumCount = dict["MediumCount"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("WaitHandleCount") {
                self.waitHandleCount = dict["WaitHandleCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetVulPageSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetVulPageSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateType") {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("SuspEventSource") {
            self.suspEventSource = dict["SuspEventSource"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("DealCount") {
                    self.dealCount = dict["DealCount"] as! Int64
                }
                if dict.keys.contains("FindCount") {
                    self.findCount = dict["FindCount"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompletedCount") {
                self.completedCount = dict["CompletedCount"] as! Int64
            }
            if dict.keys.contains("DealRate") {
                self.dealRate = dict["DealRate"] as! String
            }
            if dict.keys.contains("TrendList") {
                var tmp : [GetVulSummaryResponseBody.Data.TrendList] = []
                for v in dict["TrendList"] as! [Any] {
                    var model = GetVulSummaryResponseBody.Data.TrendList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.trendList = tmp
            }
            if dict.keys.contains("WaitHandleCount") {
                self.waitHandleCount = dict["WaitHandleCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetVulSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetVulSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateType") {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("SuspEventSource") {
            self.suspEventSource = dict["SuspEventSource"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DealAverageDuration") {
                self.dealAverageDuration = dict["DealAverageDuration"] as! Int64
            }
            if dict.keys.contains("DealAverageDurationGrowthRate") {
                self.dealAverageDurationGrowthRate = dict["DealAverageDurationGrowthRate"] as! String
            }
            if dict.keys.contains("DealWorkTaskCount") {
                self.dealWorkTaskCount = dict["DealWorkTaskCount"] as! Int64
            }
            if dict.keys.contains("DealWorkTaskCountRate") {
                self.dealWorkTaskCountRate = dict["DealWorkTaskCountRate"] as! String
            }
            if dict.keys.contains("WorkTaskCount") {
                self.workTaskCount = dict["WorkTaskCount"] as! Int64
            }
            if dict.keys.contains("WorkTaskDealRate") {
                self.workTaskDealRate = dict["WorkTaskDealRate"] as! String
            }
            if dict.keys.contains("WorkTaskDealRateGrowthRate") {
                self.workTaskDealRateGrowthRate = dict["WorkTaskDealRateGrowthRate"] as! String
            }
            if dict.keys.contains("WorkTaskGrowthRate") {
                self.workTaskGrowthRate = dict["WorkTaskGrowthRate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetWorkTaskSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetWorkTaskSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthStatus") {
            self.authStatus = dict["AuthStatus"] as! Int32
        }
        if dict.keys.contains("CmAuthStatus") {
            self.cmAuthStatus = dict["CmAuthStatus"] as! Int32
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MonitorAuthStatus") {
            self.monitorAuthStatus = dict["MonitorAuthStatus"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Aliuid") {
                self.aliuid = dict["Aliuid"] as! String
            }
            if dict.keys.contains("AuthStatus") {
                self.authStatus = dict["AuthStatus"] as! Int32
            }
            if dict.keys.contains("CmAuthStatus") {
                self.cmAuthStatus = dict["CmAuthStatus"] as! Int32
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("MonitorAuthStatus") {
                self.monitorAuthStatus = dict["MonitorAuthStatus"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OwnId") {
                self.ownId = dict["OwnId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [PageServiceCustomerResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PageServiceCustomerResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") {
            var model = PageServiceCustomerResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PageServiceCustomerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCustomEventRequest : Tea.TeaModel {
    public var customerId: String?

    public var dataSource: String?

    public var eventDescription: String?

    public var eventDetails: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerId") {
            self.customerId = dict["CustomerId"] as! String
        }
        if dict.keys.contains("DataSource") {
            self.dataSource = dict["DataSource"] as! String
        }
        if dict.keys.contains("EventDescription") {
            self.eventDescription = dict["EventDescription"] as! String
        }
        if dict.keys.contains("EventDetails") {
            self.eventDetails = dict["EventDetails"] as! String
        }
        if dict.keys.contains("EventName") {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("EventType") {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("FindTime") {
            self.findTime = dict["FindTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IsSend") {
            self.isSend = dict["IsSend"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! String
        }
        if dict.keys.contains("OccurrenceTime") {
            self.occurrenceTime = dict["OccurrenceTime"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("UniqueId") {
            self.uniqueId = dict["UniqueId"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomerId") {
                self.customerId = dict["CustomerId"] as! String
            }
            if dict.keys.contains("CustomerName") {
                self.customerName = dict["CustomerName"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("EventType") {
                self.eventType = dict["EventType"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("WorkTaskName") {
                self.workTaskName = dict["WorkTaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SendCustomEventResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendCustomEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
