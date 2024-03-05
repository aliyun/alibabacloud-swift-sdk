import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataValue : Tea.TeaModel {
    public var docId: Int64?

    public var name: String?

    public var fileName: String?

    public var url: String?

    public var uploadTime: String?

    public var orderId: String?

    public var applyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        if self.uploadTime != nil {
            map["uploadTime"] = self.uploadTime!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.applyId != nil {
            map["applyId"] = self.applyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docId") && dict["docId"] != nil {
            self.docId = dict["docId"] as! Int64
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("fileName") && dict["fileName"] != nil {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
            self.url = dict["url"] as! String
        }
        if dict.keys.contains("uploadTime") && dict["uploadTime"] != nil {
            self.uploadTime = dict["uploadTime"] as! String
        }
        if dict.keys.contains("orderId") && dict["orderId"] != nil {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("applyId") && dict["applyId"] != nil {
            self.applyId = dict["applyId"] as! String
        }
    }
}

public class GetDownloadUrlRequest : Tea.TeaModel {
    public var fileId: Int64?

    public var fileKey: String?

    public var freeOrderApplyCode: String?

    public var orderId: String?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["fileId"] = self.fileId!
        }
        if self.fileKey != nil {
            map["fileKey"] = self.fileKey!
        }
        if self.freeOrderApplyCode != nil {
            map["freeOrderApplyCode"] = self.freeOrderApplyCode!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileId") && dict["fileId"] != nil {
            self.fileId = dict["fileId"] as! Int64
        }
        if dict.keys.contains("fileKey") && dict["fileKey"] != nil {
            self.fileKey = dict["fileKey"] as! String
        }
        if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
            self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
        }
        if dict.keys.contains("orderId") && dict["orderId"] != nil {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("scene") && dict["scene"] != nil {
            self.scene = dict["scene"] as! String
        }
    }
}

public class GetDownloadUrlResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDownloadUrlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnterpriseSupportPlanDetailRequest : Tea.TeaModel {
    public var freeOrderApplyCodes: [String]?

    public var orderIds: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.freeOrderApplyCodes != nil {
            map["freeOrderApplyCodes"] = self.freeOrderApplyCodes!
        }
        if self.orderIds != nil {
            map["orderIds"] = self.orderIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("freeOrderApplyCodes") && dict["freeOrderApplyCodes"] != nil {
            self.freeOrderApplyCodes = dict["freeOrderApplyCodes"] as! [String]
        }
        if dict.keys.contains("orderIds") && dict["orderIds"] != nil {
            self.orderIds = dict["orderIds"] as! [Int64]
        }
    }
}

public class GetEnterpriseSupportPlanDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DingGroups : Tea.TeaModel {
            public var mainDingDepartmentId: String?

            public var mainDingGroupId: String?

            public var mainDingGroupName: String?

            public var subDingDepartmentId: String?

            public var subDingGroupId: String?

            public var subDingGroupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mainDingDepartmentId != nil {
                    map["mainDingDepartmentId"] = self.mainDingDepartmentId!
                }
                if self.mainDingGroupId != nil {
                    map["mainDingGroupId"] = self.mainDingGroupId!
                }
                if self.mainDingGroupName != nil {
                    map["mainDingGroupName"] = self.mainDingGroupName!
                }
                if self.subDingDepartmentId != nil {
                    map["subDingDepartmentId"] = self.subDingDepartmentId!
                }
                if self.subDingGroupId != nil {
                    map["subDingGroupId"] = self.subDingGroupId!
                }
                if self.subDingGroupName != nil {
                    map["subDingGroupName"] = self.subDingGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("mainDingDepartmentId") && dict["mainDingDepartmentId"] != nil {
                    self.mainDingDepartmentId = dict["mainDingDepartmentId"] as! String
                }
                if dict.keys.contains("mainDingGroupId") && dict["mainDingGroupId"] != nil {
                    self.mainDingGroupId = dict["mainDingGroupId"] as! String
                }
                if dict.keys.contains("mainDingGroupName") && dict["mainDingGroupName"] != nil {
                    self.mainDingGroupName = dict["mainDingGroupName"] as! String
                }
                if dict.keys.contains("subDingDepartmentId") && dict["subDingDepartmentId"] != nil {
                    self.subDingDepartmentId = dict["subDingDepartmentId"] as! String
                }
                if dict.keys.contains("subDingGroupId") && dict["subDingGroupId"] != nil {
                    self.subDingGroupId = dict["subDingGroupId"] as! String
                }
                if dict.keys.contains("subDingGroupName") && dict["subDingGroupName"] != nil {
                    self.subDingGroupName = dict["subDingGroupName"] as! String
                }
            }
        }
        public class Docs : Tea.TeaModel {
            public var docId: Int64?

            public var fileName: String?

            public var freeOrderApplyCode: String?

            public var name: String?

            public var orderId: String?

            public var uploadTime: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.fileName != nil {
                    map["fileName"] = self.fileName!
                }
                if self.freeOrderApplyCode != nil {
                    map["freeOrderApplyCode"] = self.freeOrderApplyCode!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                if self.uploadTime != nil {
                    map["uploadTime"] = self.uploadTime!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docId") && dict["docId"] != nil {
                    self.docId = dict["docId"] as! Int64
                }
                if dict.keys.contains("fileName") && dict["fileName"] != nil {
                    self.fileName = dict["fileName"] as! String
                }
                if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                    self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("orderId") && dict["orderId"] != nil {
                    self.orderId = dict["orderId"] as! String
                }
                if dict.keys.contains("uploadTime") && dict["uploadTime"] != nil {
                    self.uploadTime = dict["uploadTime"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class Nodes : Tea.TeaModel {
            public class DocNode : Tea.TeaModel {
                public var docId: Int64?

                public var docName: String?

                public var docSubmitTime: String?

                public var fileName: String?

                public var freeOrderApplyCode: String?

                public var orderId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.docId != nil {
                        map["docId"] = self.docId!
                    }
                    if self.docName != nil {
                        map["docName"] = self.docName!
                    }
                    if self.docSubmitTime != nil {
                        map["docSubmitTime"] = self.docSubmitTime!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.freeOrderApplyCode != nil {
                        map["freeOrderApplyCode"] = self.freeOrderApplyCode!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("docId") && dict["docId"] != nil {
                        self.docId = dict["docId"] as! Int64
                    }
                    if dict.keys.contains("docName") && dict["docName"] != nil {
                        self.docName = dict["docName"] as! String
                    }
                    if dict.keys.contains("docSubmitTime") && dict["docSubmitTime"] != nil {
                        self.docSubmitTime = dict["docSubmitTime"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                        self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
                    }
                    if dict.keys.contains("orderId") && dict["orderId"] != nil {
                        self.orderId = dict["orderId"] as! String
                    }
                }
            }
            public class FinishNode : Tea.TeaModel {
                public var finishTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.finishTime != nil {
                        map["finishTime"] = self.finishTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("finishTime") && dict["finishTime"] != nil {
                        self.finishTime = dict["finishTime"] as! String
                    }
                }
            }
            public class FreeOrderAuditNode : Tea.TeaModel {
                public var auditTime: String?

                public var status: String?

                public var statusName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.auditTime != nil {
                        map["auditTime"] = self.auditTime!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.statusName != nil {
                        map["statusName"] = self.statusName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("auditTime") && dict["auditTime"] != nil {
                        self.auditTime = dict["auditTime"] as! String
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("statusName") && dict["statusName"] != nil {
                        self.statusName = dict["statusName"] as! String
                    }
                }
            }
            public class FreeOrderNode : Tea.TeaModel {
                public var applyTime: String?

                public var uid: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applyTime != nil {
                        map["applyTime"] = self.applyTime!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("applyTime") && dict["applyTime"] != nil {
                        self.applyTime = dict["applyTime"] as! String
                    }
                    if dict.keys.contains("uid") && dict["uid"] != nil {
                        self.uid = dict["uid"] as! Int64
                    }
                }
            }
            public class OrderNode : Tea.TeaModel {
                public var payTime: String?

                public var uid: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.payTime != nil {
                        map["payTime"] = self.payTime!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("payTime") && dict["payTime"] != nil {
                        self.payTime = dict["payTime"] as! String
                    }
                    if dict.keys.contains("uid") && dict["uid"] != nil {
                        self.uid = dict["uid"] as! Int64
                    }
                }
            }
            public class ServiceImplementation : Tea.TeaModel {
                public var endTime: String?

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
                    if self.endTime != nil {
                        map["endTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["startTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("endTime") && dict["endTime"] != nil {
                        self.endTime = dict["endTime"] as! String
                    }
                    if dict.keys.contains("startTime") && dict["startTime"] != nil {
                        self.startTime = dict["startTime"] as! String
                    }
                }
            }
            public var docNode: GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.DocNode?

            public var finishNode: GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.FinishNode?

            public var freeOrderAuditNode: GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.FreeOrderAuditNode?

            public var freeOrderNode: GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.FreeOrderNode?

            public var name: String?

            public var orderDate: Int64?

            public var orderNode: GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.OrderNode?

            public var serviceImplementation: GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.ServiceImplementation?

            public var status: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.docNode?.validate()
                try self.finishNode?.validate()
                try self.freeOrderAuditNode?.validate()
                try self.freeOrderNode?.validate()
                try self.orderNode?.validate()
                try self.serviceImplementation?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docNode != nil {
                    map["docNode"] = self.docNode?.toMap()
                }
                if self.finishNode != nil {
                    map["finishNode"] = self.finishNode?.toMap()
                }
                if self.freeOrderAuditNode != nil {
                    map["freeOrderAuditNode"] = self.freeOrderAuditNode?.toMap()
                }
                if self.freeOrderNode != nil {
                    map["freeOrderNode"] = self.freeOrderNode?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.orderDate != nil {
                    map["orderDate"] = self.orderDate!
                }
                if self.orderNode != nil {
                    map["orderNode"] = self.orderNode?.toMap()
                }
                if self.serviceImplementation != nil {
                    map["serviceImplementation"] = self.serviceImplementation?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docNode") && dict["docNode"] != nil {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.DocNode()
                    model.fromMap(dict["docNode"] as! [String: Any])
                    self.docNode = model
                }
                if dict.keys.contains("finishNode") && dict["finishNode"] != nil {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.FinishNode()
                    model.fromMap(dict["finishNode"] as! [String: Any])
                    self.finishNode = model
                }
                if dict.keys.contains("freeOrderAuditNode") && dict["freeOrderAuditNode"] != nil {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.FreeOrderAuditNode()
                    model.fromMap(dict["freeOrderAuditNode"] as! [String: Any])
                    self.freeOrderAuditNode = model
                }
                if dict.keys.contains("freeOrderNode") && dict["freeOrderNode"] != nil {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.FreeOrderNode()
                    model.fromMap(dict["freeOrderNode"] as! [String: Any])
                    self.freeOrderNode = model
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("orderDate") && dict["orderDate"] != nil {
                    self.orderDate = dict["orderDate"] as! Int64
                }
                if dict.keys.contains("orderNode") && dict["orderNode"] != nil {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.OrderNode()
                    model.fromMap(dict["orderNode"] as! [String: Any])
                    self.orderNode = model
                }
                if dict.keys.contains("serviceImplementation") && dict["serviceImplementation"] != nil {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes.ServiceImplementation()
                    model.fromMap(dict["serviceImplementation"] as! [String: Any])
                    self.serviceImplementation = model
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
            }
        }
        public class ServiceItems : Tea.TeaModel {
            public class OperateList : Tea.TeaModel {
                public var name: String?

                public var name1: String?

                public override init() {
                    super.init()
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
                    if self.name1 != nil {
                        map["name1"] = self.name1!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("name1") && dict["name1"] != nil {
                        self.name1 = dict["name1"] as! String
                    }
                }
            }
            public var content: String?

            public var desc: String?

            public var name: String?

            public var operateList: [GetEnterpriseSupportPlanDetailResponseBody.Data.ServiceItems.OperateList]?

            public override init() {
                super.init()
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
                if self.desc != nil {
                    map["desc"] = self.desc!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.operateList != nil {
                    var tmp : [Any] = []
                    for k in self.operateList! {
                        tmp.append(k.toMap())
                    }
                    map["operateList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") && dict["content"] != nil {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("desc") && dict["desc"] != nil {
                    self.desc = dict["desc"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("operateList") && dict["operateList"] != nil {
                    var tmp : [GetEnterpriseSupportPlanDetailResponseBody.Data.ServiceItems.OperateList] = []
                    for v in dict["operateList"] as! [Any] {
                        var model = GetEnterpriseSupportPlanDetailResponseBody.Data.ServiceItems.OperateList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.operateList = tmp
                }
            }
        }
        public var canApplyFreeOrder: Bool?

        public var customerId: Int64?

        public var dingGroups: [GetEnterpriseSupportPlanDetailResponseBody.Data.DingGroups]?

        public var docs: [GetEnterpriseSupportPlanDetailResponseBody.Data.Docs]?

        public var endTime: String?

        public var firstPayTime: String?

        public var freeOrderApplyCode: String?

        public var freeOrderApplyId: Int64?

        public var freeOrderApplyTime: String?

        public var freeOrderApprovedTime: String?

        public var freeOrderExpectStartTime: String?

        public var instanceId: String?

        public var nodes: [GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes]?

        public var orderIds: [Int64]?

        public var serviceItems: [GetEnterpriseSupportPlanDetailResponseBody.Data.ServiceItems]?

        public var serviceName: String?

        public var serviceStatus: String?

        public var serviceStatusName: String?

        public var serviceType: String?

        public var sortTime: String?

        public var startTime: String?

        public var taskNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canApplyFreeOrder != nil {
                map["canApplyFreeOrder"] = self.canApplyFreeOrder!
            }
            if self.customerId != nil {
                map["customerId"] = self.customerId!
            }
            if self.dingGroups != nil {
                var tmp : [Any] = []
                for k in self.dingGroups! {
                    tmp.append(k.toMap())
                }
                map["dingGroups"] = tmp
            }
            if self.docs != nil {
                var tmp : [Any] = []
                for k in self.docs! {
                    tmp.append(k.toMap())
                }
                map["docs"] = tmp
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.firstPayTime != nil {
                map["firstPayTime"] = self.firstPayTime!
            }
            if self.freeOrderApplyCode != nil {
                map["freeOrderApplyCode"] = self.freeOrderApplyCode!
            }
            if self.freeOrderApplyId != nil {
                map["freeOrderApplyId"] = self.freeOrderApplyId!
            }
            if self.freeOrderApplyTime != nil {
                map["freeOrderApplyTime"] = self.freeOrderApplyTime!
            }
            if self.freeOrderApprovedTime != nil {
                map["freeOrderApprovedTime"] = self.freeOrderApprovedTime!
            }
            if self.freeOrderExpectStartTime != nil {
                map["freeOrderExpectStartTime"] = self.freeOrderExpectStartTime!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["nodes"] = tmp
            }
            if self.orderIds != nil {
                map["orderIds"] = self.orderIds!
            }
            if self.serviceItems != nil {
                var tmp : [Any] = []
                for k in self.serviceItems! {
                    tmp.append(k.toMap())
                }
                map["serviceItems"] = tmp
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.serviceStatus != nil {
                map["serviceStatus"] = self.serviceStatus!
            }
            if self.serviceStatusName != nil {
                map["serviceStatusName"] = self.serviceStatusName!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.sortTime != nil {
                map["sortTime"] = self.sortTime!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.taskNum != nil {
                map["taskNum"] = self.taskNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("canApplyFreeOrder") && dict["canApplyFreeOrder"] != nil {
                self.canApplyFreeOrder = dict["canApplyFreeOrder"] as! Bool
            }
            if dict.keys.contains("customerId") && dict["customerId"] != nil {
                self.customerId = dict["customerId"] as! Int64
            }
            if dict.keys.contains("dingGroups") && dict["dingGroups"] != nil {
                var tmp : [GetEnterpriseSupportPlanDetailResponseBody.Data.DingGroups] = []
                for v in dict["dingGroups"] as! [Any] {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.DingGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dingGroups = tmp
            }
            if dict.keys.contains("docs") && dict["docs"] != nil {
                var tmp : [GetEnterpriseSupportPlanDetailResponseBody.Data.Docs] = []
                for v in dict["docs"] as! [Any] {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.Docs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.docs = tmp
            }
            if dict.keys.contains("endTime") && dict["endTime"] != nil {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("firstPayTime") && dict["firstPayTime"] != nil {
                self.firstPayTime = dict["firstPayTime"] as! String
            }
            if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
            }
            if dict.keys.contains("freeOrderApplyId") && dict["freeOrderApplyId"] != nil {
                self.freeOrderApplyId = dict["freeOrderApplyId"] as! Int64
            }
            if dict.keys.contains("freeOrderApplyTime") && dict["freeOrderApplyTime"] != nil {
                self.freeOrderApplyTime = dict["freeOrderApplyTime"] as! String
            }
            if dict.keys.contains("freeOrderApprovedTime") && dict["freeOrderApprovedTime"] != nil {
                self.freeOrderApprovedTime = dict["freeOrderApprovedTime"] as! String
            }
            if dict.keys.contains("freeOrderExpectStartTime") && dict["freeOrderExpectStartTime"] != nil {
                self.freeOrderExpectStartTime = dict["freeOrderExpectStartTime"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("nodes") && dict["nodes"] != nil {
                var tmp : [GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes] = []
                for v in dict["nodes"] as! [Any] {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("orderIds") && dict["orderIds"] != nil {
                self.orderIds = dict["orderIds"] as! [Int64]
            }
            if dict.keys.contains("serviceItems") && dict["serviceItems"] != nil {
                var tmp : [GetEnterpriseSupportPlanDetailResponseBody.Data.ServiceItems] = []
                for v in dict["serviceItems"] as! [Any] {
                    var model = GetEnterpriseSupportPlanDetailResponseBody.Data.ServiceItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceItems = tmp
            }
            if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("serviceStatus") && dict["serviceStatus"] != nil {
                self.serviceStatus = dict["serviceStatus"] as! String
            }
            if dict.keys.contains("serviceStatusName") && dict["serviceStatusName"] != nil {
                self.serviceStatusName = dict["serviceStatusName"] as! String
            }
            if dict.keys.contains("serviceType") && dict["serviceType"] != nil {
                self.serviceType = dict["serviceType"] as! String
            }
            if dict.keys.contains("sortTime") && dict["sortTime"] != nil {
                self.sortTime = dict["sortTime"] as! String
            }
            if dict.keys.contains("startTime") && dict["startTime"] != nil {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("taskNum") && dict["taskNum"] != nil {
                self.taskNum = dict["taskNum"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetEnterpriseSupportPlanDetailResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetEnterpriseSupportPlanDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetEnterpriseSupportPlanDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnterpriseSupportPlanDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnterpriseSupportPlanDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPreViewUrlRequest : Tea.TeaModel {
    public var applyCode: String?

    public var fileId: Int64?

    public var fileKey: String?

    public var orderId: String?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyCode != nil {
            map["applyCode"] = self.applyCode!
        }
        if self.fileId != nil {
            map["fileId"] = self.fileId!
        }
        if self.fileKey != nil {
            map["fileKey"] = self.fileKey!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applyCode") && dict["applyCode"] != nil {
            self.applyCode = dict["applyCode"] as! String
        }
        if dict.keys.contains("fileId") && dict["fileId"] != nil {
            self.fileId = dict["fileId"] as! Int64
        }
        if dict.keys.contains("fileKey") && dict["fileKey"] != nil {
            self.fileKey = dict["fileKey"] as! String
        }
        if dict.keys.contains("orderId") && dict["orderId"] != nil {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("scene") && dict["scene"] != nil {
            self.scene = dict["scene"] as! String
        }
    }
}

public class GetPreViewUrlResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetPreViewUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPreViewUrlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPreViewUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceDetailRequest : Tea.TeaModel {
    public var applyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyCode != nil {
            map["applyCode"] = self.applyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applyCode") && dict["applyCode"] != nil {
            self.applyCode = dict["applyCode"] as! String
        }
    }
}

public class GetServiceDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Appointments : Tea.TeaModel {
            public var huhangId: Int64?

            public var purchaseCode: Int32?

            public var purchaseDesc: String?

            public var supportDays: Int32?

            public var travelDays: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.huhangId != nil {
                    map["huhangId"] = self.huhangId!
                }
                if self.purchaseCode != nil {
                    map["purchaseCode"] = self.purchaseCode!
                }
                if self.purchaseDesc != nil {
                    map["purchaseDesc"] = self.purchaseDesc!
                }
                if self.supportDays != nil {
                    map["supportDays"] = self.supportDays!
                }
                if self.travelDays != nil {
                    map["travelDays"] = self.travelDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("huhangId") && dict["huhangId"] != nil {
                    self.huhangId = dict["huhangId"] as! Int64
                }
                if dict.keys.contains("purchaseCode") && dict["purchaseCode"] != nil {
                    self.purchaseCode = dict["purchaseCode"] as! Int32
                }
                if dict.keys.contains("purchaseDesc") && dict["purchaseDesc"] != nil {
                    self.purchaseDesc = dict["purchaseDesc"] as! String
                }
                if dict.keys.contains("supportDays") && dict["supportDays"] != nil {
                    self.supportDays = dict["supportDays"] as! Int32
                }
                if dict.keys.contains("travelDays") && dict["travelDays"] != nil {
                    self.travelDays = dict["travelDays"] as! Int32
                }
            }
        }
        public class PayOrders : Tea.TeaModel {
            public var amount: String?

            public var compassCommodityCode: String?

            public var compassCommodityName: String?

            public var creatorEmpId: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var modifierEmpId: String?

            public var operate: [String: Any]?

            public var orderDetail: Any?

            public var orderId: Int64?

            public var originalPrice: Double?

            public var payAmount: Double?

            public var payTime: String?

            public var productName: String?

            public var reneWalUrl: String?

            public var serviceContentMap: [String: Any]?

            public var status: Int32?

            public var statusStr: String?

            public var supportDays: Int32?

            public var uid: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["amount"] = self.amount!
                }
                if self.compassCommodityCode != nil {
                    map["compassCommodityCode"] = self.compassCommodityCode!
                }
                if self.compassCommodityName != nil {
                    map["compassCommodityName"] = self.compassCommodityName!
                }
                if self.creatorEmpId != nil {
                    map["creatorEmpId"] = self.creatorEmpId!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.modifierEmpId != nil {
                    map["modifierEmpId"] = self.modifierEmpId!
                }
                if self.operate != nil {
                    map["operate"] = self.operate!
                }
                if self.orderDetail != nil {
                    map["orderDetail"] = self.orderDetail!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                if self.originalPrice != nil {
                    map["originalPrice"] = self.originalPrice!
                }
                if self.payAmount != nil {
                    map["payAmount"] = self.payAmount!
                }
                if self.payTime != nil {
                    map["payTime"] = self.payTime!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.reneWalUrl != nil {
                    map["reneWalUrl"] = self.reneWalUrl!
                }
                if self.serviceContentMap != nil {
                    map["serviceContentMap"] = self.serviceContentMap!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.statusStr != nil {
                    map["statusStr"] = self.statusStr!
                }
                if self.supportDays != nil {
                    map["supportDays"] = self.supportDays!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("amount") && dict["amount"] != nil {
                    self.amount = dict["amount"] as! String
                }
                if dict.keys.contains("compassCommodityCode") && dict["compassCommodityCode"] != nil {
                    self.compassCommodityCode = dict["compassCommodityCode"] as! String
                }
                if dict.keys.contains("compassCommodityName") && dict["compassCommodityName"] != nil {
                    self.compassCommodityName = dict["compassCommodityName"] as! String
                }
                if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                    self.creatorEmpId = dict["creatorEmpId"] as! String
                }
                if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                    self.modifierEmpId = dict["modifierEmpId"] as! String
                }
                if dict.keys.contains("operate") && dict["operate"] != nil {
                    self.operate = dict["operate"] as! [String: Any]
                }
                if dict.keys.contains("orderDetail") && dict["orderDetail"] != nil {
                    self.orderDetail = dict["orderDetail"] as! Any
                }
                if dict.keys.contains("orderId") && dict["orderId"] != nil {
                    self.orderId = dict["orderId"] as! Int64
                }
                if dict.keys.contains("originalPrice") && dict["originalPrice"] != nil {
                    self.originalPrice = dict["originalPrice"] as! Double
                }
                if dict.keys.contains("payAmount") && dict["payAmount"] != nil {
                    self.payAmount = dict["payAmount"] as! Double
                }
                if dict.keys.contains("payTime") && dict["payTime"] != nil {
                    self.payTime = dict["payTime"] as! String
                }
                if dict.keys.contains("productName") && dict["productName"] != nil {
                    self.productName = dict["productName"] as! String
                }
                if dict.keys.contains("reneWalUrl") && dict["reneWalUrl"] != nil {
                    self.reneWalUrl = dict["reneWalUrl"] as! String
                }
                if dict.keys.contains("serviceContentMap") && dict["serviceContentMap"] != nil {
                    self.serviceContentMap = dict["serviceContentMap"] as! [String: Any]
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                    self.statusStr = dict["statusStr"] as! String
                }
                if dict.keys.contains("supportDays") && dict["supportDays"] != nil {
                    self.supportDays = dict["supportDays"] as! Int32
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class PerformanceOrders : Tea.TeaModel {
            public class ApplyFileVOList : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class ExtList : Tea.TeaModel {
                public var keyCode: String?

                public var name: String?

                public var value: Any?

                public var view: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.keyCode != nil {
                        map["keyCode"] = self.keyCode!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    if self.view != nil {
                        map["view"] = self.view!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("keyCode") && dict["keyCode"] != nil {
                        self.keyCode = dict["keyCode"] as! String
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("value") && dict["value"] != nil {
                        self.value = dict["value"] as! Any
                    }
                    if dict.keys.contains("view") && dict["view"] != nil {
                        self.view = dict["view"] as! String
                    }
                }
            }
            public class PerformanceNodeDTOS : Tea.TeaModel {
                public var display: Bool?

                public var extendInfo: Any?

                public var index: Int32?

                public var nodeName: String?

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
                    if self.display != nil {
                        map["display"] = self.display!
                    }
                    if self.extendInfo != nil {
                        map["extendInfo"] = self.extendInfo!
                    }
                    if self.index != nil {
                        map["index"] = self.index!
                    }
                    if self.nodeName != nil {
                        map["nodeName"] = self.nodeName!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("display") && dict["display"] != nil {
                        self.display = dict["display"] as! Bool
                    }
                    if dict.keys.contains("extendInfo") && dict["extendInfo"] != nil {
                        self.extendInfo = dict["extendInfo"] as! Any
                    }
                    if dict.keys.contains("index") && dict["index"] != nil {
                        self.index = dict["index"] as! Int32
                    }
                    if dict.keys.contains("nodeName") && dict["nodeName"] != nil {
                        self.nodeName = dict["nodeName"] as! String
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                }
            }
            public class PerformancePacks : Tea.TeaModel {
                public class ApplyFileVOList : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ExtList : Tea.TeaModel {
                    public var keyCode: String?

                    public var name: String?

                    public var value: Any?

                    public var view: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keyCode != nil {
                            map["keyCode"] = self.keyCode!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        if self.view != nil {
                            map["view"] = self.view!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("keyCode") && dict["keyCode"] != nil {
                            self.keyCode = dict["keyCode"] as! String
                        }
                        if dict.keys.contains("name") && dict["name"] != nil {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("value") && dict["value"] != nil {
                            self.value = dict["value"] as! Any
                        }
                        if dict.keys.contains("view") && dict["view"] != nil {
                            self.view = dict["view"] as! String
                        }
                    }
                }
                public class PerformanceNodeDTOS : Tea.TeaModel {
                    public var display: Bool?

                    public var extendInfo: Any?

                    public var index: Int32?

                    public var nodeName: String?

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
                        if self.display != nil {
                            map["display"] = self.display!
                        }
                        if self.extendInfo != nil {
                            map["extendInfo"] = self.extendInfo!
                        }
                        if self.index != nil {
                            map["index"] = self.index!
                        }
                        if self.nodeName != nil {
                            map["nodeName"] = self.nodeName!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("display") && dict["display"] != nil {
                            self.display = dict["display"] as! Bool
                        }
                        if dict.keys.contains("extendInfo") && dict["extendInfo"] != nil {
                            self.extendInfo = dict["extendInfo"] as! Any
                        }
                        if dict.keys.contains("index") && dict["index"] != nil {
                            self.index = dict["index"] as! Int32
                        }
                        if dict.keys.contains("nodeName") && dict["nodeName"] != nil {
                            self.nodeName = dict["nodeName"] as! String
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                    }
                }
                public class ServiceMonthReports : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ServiceReports : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ServiceSchemes : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class TamEngineers : Tea.TeaModel {
                    public var creatorEmpId: String?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var hrStatus: String?

                    public var id: Int64?

                    public var lastName: String?

                    public var modifierEmpId: String?

                    public var name: String?

                    public var nickNameEn: String?

                    public var realmId: Int64?

                    public var workid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.creatorEmpId != nil {
                            map["creatorEmpId"] = self.creatorEmpId!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.hrStatus != nil {
                            map["hrStatus"] = self.hrStatus!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.lastName != nil {
                            map["lastName"] = self.lastName!
                        }
                        if self.modifierEmpId != nil {
                            map["modifierEmpId"] = self.modifierEmpId!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.nickNameEn != nil {
                            map["nickNameEn"] = self.nickNameEn!
                        }
                        if self.realmId != nil {
                            map["realmId"] = self.realmId!
                        }
                        if self.workid != nil {
                            map["workid"] = self.workid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                            self.creatorEmpId = dict["creatorEmpId"] as! String
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("hrStatus") && dict["hrStatus"] != nil {
                            self.hrStatus = dict["hrStatus"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("lastName") && dict["lastName"] != nil {
                            self.lastName = dict["lastName"] as! String
                        }
                        if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                            self.modifierEmpId = dict["modifierEmpId"] as! String
                        }
                        if dict.keys.contains("name") && dict["name"] != nil {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("nickNameEn") && dict["nickNameEn"] != nil {
                            self.nickNameEn = dict["nickNameEn"] as! String
                        }
                        if dict.keys.contains("realmId") && dict["realmId"] != nil {
                            self.realmId = dict["realmId"] as! Int64
                        }
                        if dict.keys.contains("workid") && dict["workid"] != nil {
                            self.workid = dict["workid"] as! String
                        }
                    }
                }
                public var applyFileVOList: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ApplyFileVOList]?

                public var appointmentCode: String?

                public var appointmentEndTime: Int64?

                public var appointmentId: String?

                public var appointmentPassTime: Int64?

                public var appointmentTime: Int64?

                public var commodityDesc: String?

                public var creatorEmpId: String?

                public var cycleService: Bool?

                public var extList: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ExtList]?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var mergeSolutionAndReporterOneStep: Bool?

                public var modifierEmpId: String?

                public var orderDetail: Any?

                public var orderId: Int64?

                public var performanceNodeDTOS: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.PerformanceNodeDTOS]?

                public var purchasePackCode: Int32?

                public var serviceApplyId: Int64?

                public var serviceMonthReports: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceMonthReports]?

                public var serviceReports: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceReports]?

                public var serviceSchemes: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceSchemes]?

                public var status: Int32?

                public var statusStr: String?

                public var supportTime: [Int64]?

                public var tamEngineers: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.TamEngineers]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applyFileVOList != nil {
                        var tmp : [Any] = []
                        for k in self.applyFileVOList! {
                            tmp.append(k.toMap())
                        }
                        map["applyFileVOList"] = tmp
                    }
                    if self.appointmentCode != nil {
                        map["appointmentCode"] = self.appointmentCode!
                    }
                    if self.appointmentEndTime != nil {
                        map["appointmentEndTime"] = self.appointmentEndTime!
                    }
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.appointmentPassTime != nil {
                        map["appointmentPassTime"] = self.appointmentPassTime!
                    }
                    if self.appointmentTime != nil {
                        map["appointmentTime"] = self.appointmentTime!
                    }
                    if self.commodityDesc != nil {
                        map["commodityDesc"] = self.commodityDesc!
                    }
                    if self.creatorEmpId != nil {
                        map["creatorEmpId"] = self.creatorEmpId!
                    }
                    if self.cycleService != nil {
                        map["cycleService"] = self.cycleService!
                    }
                    if self.extList != nil {
                        var tmp : [Any] = []
                        for k in self.extList! {
                            tmp.append(k.toMap())
                        }
                        map["extList"] = tmp
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.mergeSolutionAndReporterOneStep != nil {
                        map["mergeSolutionAndReporterOneStep"] = self.mergeSolutionAndReporterOneStep!
                    }
                    if self.modifierEmpId != nil {
                        map["modifierEmpId"] = self.modifierEmpId!
                    }
                    if self.orderDetail != nil {
                        map["orderDetail"] = self.orderDetail!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    if self.performanceNodeDTOS != nil {
                        var tmp : [Any] = []
                        for k in self.performanceNodeDTOS! {
                            tmp.append(k.toMap())
                        }
                        map["performanceNodeDTOS"] = tmp
                    }
                    if self.purchasePackCode != nil {
                        map["purchasePackCode"] = self.purchasePackCode!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.serviceMonthReports != nil {
                        var tmp : [Any] = []
                        for k in self.serviceMonthReports! {
                            tmp.append(k.toMap())
                        }
                        map["serviceMonthReports"] = tmp
                    }
                    if self.serviceReports != nil {
                        var tmp : [Any] = []
                        for k in self.serviceReports! {
                            tmp.append(k.toMap())
                        }
                        map["serviceReports"] = tmp
                    }
                    if self.serviceSchemes != nil {
                        var tmp : [Any] = []
                        for k in self.serviceSchemes! {
                            tmp.append(k.toMap())
                        }
                        map["serviceSchemes"] = tmp
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.statusStr != nil {
                        map["statusStr"] = self.statusStr!
                    }
                    if self.supportTime != nil {
                        map["supportTime"] = self.supportTime!
                    }
                    if self.tamEngineers != nil {
                        var tmp : [Any] = []
                        for k in self.tamEngineers! {
                            tmp.append(k.toMap())
                        }
                        map["tamEngineers"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("applyFileVOList") && dict["applyFileVOList"] != nil {
                        var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ApplyFileVOList] = []
                        for v in dict["applyFileVOList"] as! [Any] {
                            var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ApplyFileVOList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.applyFileVOList = tmp
                    }
                    if dict.keys.contains("appointmentCode") && dict["appointmentCode"] != nil {
                        self.appointmentCode = dict["appointmentCode"] as! String
                    }
                    if dict.keys.contains("appointmentEndTime") && dict["appointmentEndTime"] != nil {
                        self.appointmentEndTime = dict["appointmentEndTime"] as! Int64
                    }
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("appointmentPassTime") && dict["appointmentPassTime"] != nil {
                        self.appointmentPassTime = dict["appointmentPassTime"] as! Int64
                    }
                    if dict.keys.contains("appointmentTime") && dict["appointmentTime"] != nil {
                        self.appointmentTime = dict["appointmentTime"] as! Int64
                    }
                    if dict.keys.contains("commodityDesc") && dict["commodityDesc"] != nil {
                        self.commodityDesc = dict["commodityDesc"] as! String
                    }
                    if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                        self.creatorEmpId = dict["creatorEmpId"] as! String
                    }
                    if dict.keys.contains("cycleService") && dict["cycleService"] != nil {
                        self.cycleService = dict["cycleService"] as! Bool
                    }
                    if dict.keys.contains("extList") && dict["extList"] != nil {
                        var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ExtList] = []
                        for v in dict["extList"] as! [Any] {
                            var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ExtList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.extList = tmp
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("mergeSolutionAndReporterOneStep") && dict["mergeSolutionAndReporterOneStep"] != nil {
                        self.mergeSolutionAndReporterOneStep = dict["mergeSolutionAndReporterOneStep"] as! Bool
                    }
                    if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                        self.modifierEmpId = dict["modifierEmpId"] as! String
                    }
                    if dict.keys.contains("orderDetail") && dict["orderDetail"] != nil {
                        self.orderDetail = dict["orderDetail"] as! Any
                    }
                    if dict.keys.contains("orderId") && dict["orderId"] != nil {
                        self.orderId = dict["orderId"] as! Int64
                    }
                    if dict.keys.contains("performanceNodeDTOS") && dict["performanceNodeDTOS"] != nil {
                        var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.PerformanceNodeDTOS] = []
                        for v in dict["performanceNodeDTOS"] as! [Any] {
                            var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.PerformanceNodeDTOS()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.performanceNodeDTOS = tmp
                    }
                    if dict.keys.contains("purchasePackCode") && dict["purchasePackCode"] != nil {
                        self.purchasePackCode = dict["purchasePackCode"] as! Int32
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("serviceMonthReports") && dict["serviceMonthReports"] != nil {
                        var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceMonthReports] = []
                        for v in dict["serviceMonthReports"] as! [Any] {
                            var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceMonthReports()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceMonthReports = tmp
                    }
                    if dict.keys.contains("serviceReports") && dict["serviceReports"] != nil {
                        var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceReports] = []
                        for v in dict["serviceReports"] as! [Any] {
                            var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceReports()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceReports = tmp
                    }
                    if dict.keys.contains("serviceSchemes") && dict["serviceSchemes"] != nil {
                        var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceSchemes] = []
                        for v in dict["serviceSchemes"] as! [Any] {
                            var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.ServiceSchemes()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceSchemes = tmp
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                        self.statusStr = dict["statusStr"] as! String
                    }
                    if dict.keys.contains("supportTime") && dict["supportTime"] != nil {
                        self.supportTime = dict["supportTime"] as! [Int64]
                    }
                    if dict.keys.contains("tamEngineers") && dict["tamEngineers"] != nil {
                        var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.TamEngineers] = []
                        for v in dict["tamEngineers"] as! [Any] {
                            var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks.TamEngineers()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tamEngineers = tmp
                    }
                }
            }
            public class ServiceMonthReports : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class ServiceReports : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class ServiceSchemes : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class TamEngineers : Tea.TeaModel {
                public var creatorEmpId: String?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var hrStatus: String?

                public var id: Int64?

                public var lastName: String?

                public var modifierEmpId: String?

                public var name: String?

                public var nickNameEn: String?

                public var realmId: Int64?

                public var workid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.creatorEmpId != nil {
                        map["creatorEmpId"] = self.creatorEmpId!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.hrStatus != nil {
                        map["hrStatus"] = self.hrStatus!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.lastName != nil {
                        map["lastName"] = self.lastName!
                    }
                    if self.modifierEmpId != nil {
                        map["modifierEmpId"] = self.modifierEmpId!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nickNameEn != nil {
                        map["nickNameEn"] = self.nickNameEn!
                    }
                    if self.realmId != nil {
                        map["realmId"] = self.realmId!
                    }
                    if self.workid != nil {
                        map["workid"] = self.workid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                        self.creatorEmpId = dict["creatorEmpId"] as! String
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("hrStatus") && dict["hrStatus"] != nil {
                        self.hrStatus = dict["hrStatus"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("lastName") && dict["lastName"] != nil {
                        self.lastName = dict["lastName"] as! String
                    }
                    if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                        self.modifierEmpId = dict["modifierEmpId"] as! String
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nickNameEn") && dict["nickNameEn"] != nil {
                        self.nickNameEn = dict["nickNameEn"] as! String
                    }
                    if dict.keys.contains("realmId") && dict["realmId"] != nil {
                        self.realmId = dict["realmId"] as! Int64
                    }
                    if dict.keys.contains("workid") && dict["workid"] != nil {
                        self.workid = dict["workid"] as! String
                    }
                }
            }
            public var applyFileVOList: [GetServiceDetailResponseBody.Data.PerformanceOrders.ApplyFileVOList]?

            public var appointmentCode: String?

            public var appointmentEndTime: Int64?

            public var appointmentId: String?

            public var appointmentPassTime: Int64?

            public var appointmentTime: Int64?

            public var commodityDesc: String?

            public var creatorEmpId: String?

            public var cycleService: Bool?

            public var extList: [GetServiceDetailResponseBody.Data.PerformanceOrders.ExtList]?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var mergeSolutionAndReporterOneStep: Bool?

            public var modifierEmpId: String?

            public var orderDetail: Any?

            public var orderId: Int64?

            public var packCount: Int32?

            public var packDetails: [[String: Any]]?

            public var performanceNodeDTOS: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformanceNodeDTOS]?

            public var performancePacks: [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks]?

            public var purchasePackCode: Int32?

            public var serviceApplyId: Int64?

            public var serviceMonthReports: [GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceMonthReports]?

            public var serviceReports: [GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceReports]?

            public var serviceSchemes: [GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceSchemes]?

            public var status: Int32?

            public var statusStr: String?

            public var supportTime: [Int64]?

            public var tamEngineers: [GetServiceDetailResponseBody.Data.PerformanceOrders.TamEngineers]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applyFileVOList != nil {
                    var tmp : [Any] = []
                    for k in self.applyFileVOList! {
                        tmp.append(k.toMap())
                    }
                    map["applyFileVOList"] = tmp
                }
                if self.appointmentCode != nil {
                    map["appointmentCode"] = self.appointmentCode!
                }
                if self.appointmentEndTime != nil {
                    map["appointmentEndTime"] = self.appointmentEndTime!
                }
                if self.appointmentId != nil {
                    map["appointmentId"] = self.appointmentId!
                }
                if self.appointmentPassTime != nil {
                    map["appointmentPassTime"] = self.appointmentPassTime!
                }
                if self.appointmentTime != nil {
                    map["appointmentTime"] = self.appointmentTime!
                }
                if self.commodityDesc != nil {
                    map["commodityDesc"] = self.commodityDesc!
                }
                if self.creatorEmpId != nil {
                    map["creatorEmpId"] = self.creatorEmpId!
                }
                if self.cycleService != nil {
                    map["cycleService"] = self.cycleService!
                }
                if self.extList != nil {
                    var tmp : [Any] = []
                    for k in self.extList! {
                        tmp.append(k.toMap())
                    }
                    map["extList"] = tmp
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.mergeSolutionAndReporterOneStep != nil {
                    map["mergeSolutionAndReporterOneStep"] = self.mergeSolutionAndReporterOneStep!
                }
                if self.modifierEmpId != nil {
                    map["modifierEmpId"] = self.modifierEmpId!
                }
                if self.orderDetail != nil {
                    map["orderDetail"] = self.orderDetail!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                if self.packCount != nil {
                    map["packCount"] = self.packCount!
                }
                if self.packDetails != nil {
                    map["packDetails"] = self.packDetails!
                }
                if self.performanceNodeDTOS != nil {
                    var tmp : [Any] = []
                    for k in self.performanceNodeDTOS! {
                        tmp.append(k.toMap())
                    }
                    map["performanceNodeDTOS"] = tmp
                }
                if self.performancePacks != nil {
                    var tmp : [Any] = []
                    for k in self.performancePacks! {
                        tmp.append(k.toMap())
                    }
                    map["performancePacks"] = tmp
                }
                if self.purchasePackCode != nil {
                    map["purchasePackCode"] = self.purchasePackCode!
                }
                if self.serviceApplyId != nil {
                    map["serviceApplyId"] = self.serviceApplyId!
                }
                if self.serviceMonthReports != nil {
                    var tmp : [Any] = []
                    for k in self.serviceMonthReports! {
                        tmp.append(k.toMap())
                    }
                    map["serviceMonthReports"] = tmp
                }
                if self.serviceReports != nil {
                    var tmp : [Any] = []
                    for k in self.serviceReports! {
                        tmp.append(k.toMap())
                    }
                    map["serviceReports"] = tmp
                }
                if self.serviceSchemes != nil {
                    var tmp : [Any] = []
                    for k in self.serviceSchemes! {
                        tmp.append(k.toMap())
                    }
                    map["serviceSchemes"] = tmp
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.statusStr != nil {
                    map["statusStr"] = self.statusStr!
                }
                if self.supportTime != nil {
                    map["supportTime"] = self.supportTime!
                }
                if self.tamEngineers != nil {
                    var tmp : [Any] = []
                    for k in self.tamEngineers! {
                        tmp.append(k.toMap())
                    }
                    map["tamEngineers"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("applyFileVOList") && dict["applyFileVOList"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.ApplyFileVOList] = []
                    for v in dict["applyFileVOList"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformanceOrders.ApplyFileVOList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.applyFileVOList = tmp
                }
                if dict.keys.contains("appointmentCode") && dict["appointmentCode"] != nil {
                    self.appointmentCode = dict["appointmentCode"] as! String
                }
                if dict.keys.contains("appointmentEndTime") && dict["appointmentEndTime"] != nil {
                    self.appointmentEndTime = dict["appointmentEndTime"] as! Int64
                }
                if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                    self.appointmentId = dict["appointmentId"] as! String
                }
                if dict.keys.contains("appointmentPassTime") && dict["appointmentPassTime"] != nil {
                    self.appointmentPassTime = dict["appointmentPassTime"] as! Int64
                }
                if dict.keys.contains("appointmentTime") && dict["appointmentTime"] != nil {
                    self.appointmentTime = dict["appointmentTime"] as! Int64
                }
                if dict.keys.contains("commodityDesc") && dict["commodityDesc"] != nil {
                    self.commodityDesc = dict["commodityDesc"] as! String
                }
                if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                    self.creatorEmpId = dict["creatorEmpId"] as! String
                }
                if dict.keys.contains("cycleService") && dict["cycleService"] != nil {
                    self.cycleService = dict["cycleService"] as! Bool
                }
                if dict.keys.contains("extList") && dict["extList"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.ExtList] = []
                    for v in dict["extList"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformanceOrders.ExtList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.extList = tmp
                }
                if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("mergeSolutionAndReporterOneStep") && dict["mergeSolutionAndReporterOneStep"] != nil {
                    self.mergeSolutionAndReporterOneStep = dict["mergeSolutionAndReporterOneStep"] as! Bool
                }
                if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                    self.modifierEmpId = dict["modifierEmpId"] as! String
                }
                if dict.keys.contains("orderDetail") && dict["orderDetail"] != nil {
                    self.orderDetail = dict["orderDetail"] as! Any
                }
                if dict.keys.contains("orderId") && dict["orderId"] != nil {
                    self.orderId = dict["orderId"] as! Int64
                }
                if dict.keys.contains("packCount") && dict["packCount"] != nil {
                    self.packCount = dict["packCount"] as! Int32
                }
                if dict.keys.contains("packDetails") && dict["packDetails"] != nil {
                    self.packDetails = dict["packDetails"] as! [[String: Any]]
                }
                if dict.keys.contains("performanceNodeDTOS") && dict["performanceNodeDTOS"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformanceNodeDTOS] = []
                    for v in dict["performanceNodeDTOS"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformanceNodeDTOS()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.performanceNodeDTOS = tmp
                }
                if dict.keys.contains("performancePacks") && dict["performancePacks"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks] = []
                    for v in dict["performancePacks"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformanceOrders.PerformancePacks()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.performancePacks = tmp
                }
                if dict.keys.contains("purchasePackCode") && dict["purchasePackCode"] != nil {
                    self.purchasePackCode = dict["purchasePackCode"] as! Int32
                }
                if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                    self.serviceApplyId = dict["serviceApplyId"] as! Int64
                }
                if dict.keys.contains("serviceMonthReports") && dict["serviceMonthReports"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceMonthReports] = []
                    for v in dict["serviceMonthReports"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceMonthReports()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceMonthReports = tmp
                }
                if dict.keys.contains("serviceReports") && dict["serviceReports"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceReports] = []
                    for v in dict["serviceReports"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceReports()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceReports = tmp
                }
                if dict.keys.contains("serviceSchemes") && dict["serviceSchemes"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceSchemes] = []
                    for v in dict["serviceSchemes"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformanceOrders.ServiceSchemes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceSchemes = tmp
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                    self.statusStr = dict["statusStr"] as! String
                }
                if dict.keys.contains("supportTime") && dict["supportTime"] != nil {
                    self.supportTime = dict["supportTime"] as! [Int64]
                }
                if dict.keys.contains("tamEngineers") && dict["tamEngineers"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders.TamEngineers] = []
                    for v in dict["tamEngineers"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformanceOrders.TamEngineers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tamEngineers = tmp
                }
            }
        }
        public class PerformancePacks : Tea.TeaModel {
            public class ApplyFileVOList : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class ExtList : Tea.TeaModel {
                public var keyCode: String?

                public var name: String?

                public var value: Any?

                public var view: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.keyCode != nil {
                        map["keyCode"] = self.keyCode!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    if self.view != nil {
                        map["view"] = self.view!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("keyCode") && dict["keyCode"] != nil {
                        self.keyCode = dict["keyCode"] as! String
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("value") && dict["value"] != nil {
                        self.value = dict["value"] as! Any
                    }
                    if dict.keys.contains("view") && dict["view"] != nil {
                        self.view = dict["view"] as! String
                    }
                }
            }
            public class PerformanceNodeDTOS : Tea.TeaModel {
                public var display: Bool?

                public var extendInfo: Any?

                public var index: Int32?

                public var nodeName: String?

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
                    if self.display != nil {
                        map["display"] = self.display!
                    }
                    if self.extendInfo != nil {
                        map["extendInfo"] = self.extendInfo!
                    }
                    if self.index != nil {
                        map["index"] = self.index!
                    }
                    if self.nodeName != nil {
                        map["nodeName"] = self.nodeName!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("display") && dict["display"] != nil {
                        self.display = dict["display"] as! Bool
                    }
                    if dict.keys.contains("extendInfo") && dict["extendInfo"] != nil {
                        self.extendInfo = dict["extendInfo"] as! Any
                    }
                    if dict.keys.contains("index") && dict["index"] != nil {
                        self.index = dict["index"] as! Int32
                    }
                    if dict.keys.contains("nodeName") && dict["nodeName"] != nil {
                        self.nodeName = dict["nodeName"] as! String
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                }
            }
            public class ServiceMonthReports : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class ServiceReports : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class ServiceSchemes : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class TamEngineers : Tea.TeaModel {
                public var creatorEmpId: String?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var hrStatus: String?

                public var id: Int64?

                public var lastName: String?

                public var modifierEmpId: String?

                public var name: String?

                public var nickNameEn: String?

                public var realmId: Int64?

                public var workid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.creatorEmpId != nil {
                        map["creatorEmpId"] = self.creatorEmpId!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.hrStatus != nil {
                        map["hrStatus"] = self.hrStatus!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.lastName != nil {
                        map["lastName"] = self.lastName!
                    }
                    if self.modifierEmpId != nil {
                        map["modifierEmpId"] = self.modifierEmpId!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nickNameEn != nil {
                        map["nickNameEn"] = self.nickNameEn!
                    }
                    if self.realmId != nil {
                        map["realmId"] = self.realmId!
                    }
                    if self.workid != nil {
                        map["workid"] = self.workid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                        self.creatorEmpId = dict["creatorEmpId"] as! String
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("hrStatus") && dict["hrStatus"] != nil {
                        self.hrStatus = dict["hrStatus"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("lastName") && dict["lastName"] != nil {
                        self.lastName = dict["lastName"] as! String
                    }
                    if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                        self.modifierEmpId = dict["modifierEmpId"] as! String
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nickNameEn") && dict["nickNameEn"] != nil {
                        self.nickNameEn = dict["nickNameEn"] as! String
                    }
                    if dict.keys.contains("realmId") && dict["realmId"] != nil {
                        self.realmId = dict["realmId"] as! Int64
                    }
                    if dict.keys.contains("workid") && dict["workid"] != nil {
                        self.workid = dict["workid"] as! String
                    }
                }
            }
            public var applyFileVOList: [GetServiceDetailResponseBody.Data.PerformancePacks.ApplyFileVOList]?

            public var appointmentCode: String?

            public var appointmentEndTime: Int64?

            public var appointmentId: String?

            public var appointmentPassTime: Int64?

            public var appointmentTime: Int64?

            public var commodityDesc: String?

            public var creatorEmpId: String?

            public var cycleService: Bool?

            public var extList: [GetServiceDetailResponseBody.Data.PerformancePacks.ExtList]?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var mergeSolutionAndReporterOneStep: Bool?

            public var modifierEmpId: String?

            public var orderDetail: Any?

            public var orderId: Int64?

            public var performanceNodeDTOS: [GetServiceDetailResponseBody.Data.PerformancePacks.PerformanceNodeDTOS]?

            public var purchasePackCode: Int32?

            public var serviceApplyId: Int64?

            public var serviceMonthReports: [GetServiceDetailResponseBody.Data.PerformancePacks.ServiceMonthReports]?

            public var serviceReports: [GetServiceDetailResponseBody.Data.PerformancePacks.ServiceReports]?

            public var serviceSchemes: [GetServiceDetailResponseBody.Data.PerformancePacks.ServiceSchemes]?

            public var status: Int32?

            public var statusStr: String?

            public var supportTime: [Int64]?

            public var tamEngineers: [GetServiceDetailResponseBody.Data.PerformancePacks.TamEngineers]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applyFileVOList != nil {
                    var tmp : [Any] = []
                    for k in self.applyFileVOList! {
                        tmp.append(k.toMap())
                    }
                    map["applyFileVOList"] = tmp
                }
                if self.appointmentCode != nil {
                    map["appointmentCode"] = self.appointmentCode!
                }
                if self.appointmentEndTime != nil {
                    map["appointmentEndTime"] = self.appointmentEndTime!
                }
                if self.appointmentId != nil {
                    map["appointmentId"] = self.appointmentId!
                }
                if self.appointmentPassTime != nil {
                    map["appointmentPassTime"] = self.appointmentPassTime!
                }
                if self.appointmentTime != nil {
                    map["appointmentTime"] = self.appointmentTime!
                }
                if self.commodityDesc != nil {
                    map["commodityDesc"] = self.commodityDesc!
                }
                if self.creatorEmpId != nil {
                    map["creatorEmpId"] = self.creatorEmpId!
                }
                if self.cycleService != nil {
                    map["cycleService"] = self.cycleService!
                }
                if self.extList != nil {
                    var tmp : [Any] = []
                    for k in self.extList! {
                        tmp.append(k.toMap())
                    }
                    map["extList"] = tmp
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.mergeSolutionAndReporterOneStep != nil {
                    map["mergeSolutionAndReporterOneStep"] = self.mergeSolutionAndReporterOneStep!
                }
                if self.modifierEmpId != nil {
                    map["modifierEmpId"] = self.modifierEmpId!
                }
                if self.orderDetail != nil {
                    map["orderDetail"] = self.orderDetail!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                if self.performanceNodeDTOS != nil {
                    var tmp : [Any] = []
                    for k in self.performanceNodeDTOS! {
                        tmp.append(k.toMap())
                    }
                    map["performanceNodeDTOS"] = tmp
                }
                if self.purchasePackCode != nil {
                    map["purchasePackCode"] = self.purchasePackCode!
                }
                if self.serviceApplyId != nil {
                    map["serviceApplyId"] = self.serviceApplyId!
                }
                if self.serviceMonthReports != nil {
                    var tmp : [Any] = []
                    for k in self.serviceMonthReports! {
                        tmp.append(k.toMap())
                    }
                    map["serviceMonthReports"] = tmp
                }
                if self.serviceReports != nil {
                    var tmp : [Any] = []
                    for k in self.serviceReports! {
                        tmp.append(k.toMap())
                    }
                    map["serviceReports"] = tmp
                }
                if self.serviceSchemes != nil {
                    var tmp : [Any] = []
                    for k in self.serviceSchemes! {
                        tmp.append(k.toMap())
                    }
                    map["serviceSchemes"] = tmp
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.statusStr != nil {
                    map["statusStr"] = self.statusStr!
                }
                if self.supportTime != nil {
                    map["supportTime"] = self.supportTime!
                }
                if self.tamEngineers != nil {
                    var tmp : [Any] = []
                    for k in self.tamEngineers! {
                        tmp.append(k.toMap())
                    }
                    map["tamEngineers"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("applyFileVOList") && dict["applyFileVOList"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformancePacks.ApplyFileVOList] = []
                    for v in dict["applyFileVOList"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformancePacks.ApplyFileVOList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.applyFileVOList = tmp
                }
                if dict.keys.contains("appointmentCode") && dict["appointmentCode"] != nil {
                    self.appointmentCode = dict["appointmentCode"] as! String
                }
                if dict.keys.contains("appointmentEndTime") && dict["appointmentEndTime"] != nil {
                    self.appointmentEndTime = dict["appointmentEndTime"] as! Int64
                }
                if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                    self.appointmentId = dict["appointmentId"] as! String
                }
                if dict.keys.contains("appointmentPassTime") && dict["appointmentPassTime"] != nil {
                    self.appointmentPassTime = dict["appointmentPassTime"] as! Int64
                }
                if dict.keys.contains("appointmentTime") && dict["appointmentTime"] != nil {
                    self.appointmentTime = dict["appointmentTime"] as! Int64
                }
                if dict.keys.contains("commodityDesc") && dict["commodityDesc"] != nil {
                    self.commodityDesc = dict["commodityDesc"] as! String
                }
                if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                    self.creatorEmpId = dict["creatorEmpId"] as! String
                }
                if dict.keys.contains("cycleService") && dict["cycleService"] != nil {
                    self.cycleService = dict["cycleService"] as! Bool
                }
                if dict.keys.contains("extList") && dict["extList"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformancePacks.ExtList] = []
                    for v in dict["extList"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformancePacks.ExtList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.extList = tmp
                }
                if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("mergeSolutionAndReporterOneStep") && dict["mergeSolutionAndReporterOneStep"] != nil {
                    self.mergeSolutionAndReporterOneStep = dict["mergeSolutionAndReporterOneStep"] as! Bool
                }
                if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                    self.modifierEmpId = dict["modifierEmpId"] as! String
                }
                if dict.keys.contains("orderDetail") && dict["orderDetail"] != nil {
                    self.orderDetail = dict["orderDetail"] as! Any
                }
                if dict.keys.contains("orderId") && dict["orderId"] != nil {
                    self.orderId = dict["orderId"] as! Int64
                }
                if dict.keys.contains("performanceNodeDTOS") && dict["performanceNodeDTOS"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformancePacks.PerformanceNodeDTOS] = []
                    for v in dict["performanceNodeDTOS"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformancePacks.PerformanceNodeDTOS()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.performanceNodeDTOS = tmp
                }
                if dict.keys.contains("purchasePackCode") && dict["purchasePackCode"] != nil {
                    self.purchasePackCode = dict["purchasePackCode"] as! Int32
                }
                if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                    self.serviceApplyId = dict["serviceApplyId"] as! Int64
                }
                if dict.keys.contains("serviceMonthReports") && dict["serviceMonthReports"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformancePacks.ServiceMonthReports] = []
                    for v in dict["serviceMonthReports"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformancePacks.ServiceMonthReports()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceMonthReports = tmp
                }
                if dict.keys.contains("serviceReports") && dict["serviceReports"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformancePacks.ServiceReports] = []
                    for v in dict["serviceReports"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformancePacks.ServiceReports()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceReports = tmp
                }
                if dict.keys.contains("serviceSchemes") && dict["serviceSchemes"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformancePacks.ServiceSchemes] = []
                    for v in dict["serviceSchemes"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformancePacks.ServiceSchemes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceSchemes = tmp
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                    self.statusStr = dict["statusStr"] as! String
                }
                if dict.keys.contains("supportTime") && dict["supportTime"] != nil {
                    self.supportTime = dict["supportTime"] as! [Int64]
                }
                if dict.keys.contains("tamEngineers") && dict["tamEngineers"] != nil {
                    var tmp : [GetServiceDetailResponseBody.Data.PerformancePacks.TamEngineers] = []
                    for v in dict["tamEngineers"] as! [Any] {
                        var model = GetServiceDetailResponseBody.Data.PerformancePacks.TamEngineers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tamEngineers = tmp
                }
            }
        }
        public class ServiceReports : Tea.TeaModel {
            public var appointmentId: String?

            public var batchGroup: String?

            public var customerId: String?

            public var fileName: String?

            public var fileType: Int32?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var remarke: String?

            public var serviceApplyId: Int64?

            public var status: Int32?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appointmentId != nil {
                    map["appointmentId"] = self.appointmentId!
                }
                if self.batchGroup != nil {
                    map["batchGroup"] = self.batchGroup!
                }
                if self.customerId != nil {
                    map["customerId"] = self.customerId!
                }
                if self.fileName != nil {
                    map["fileName"] = self.fileName!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.remarke != nil {
                    map["remarke"] = self.remarke!
                }
                if self.serviceApplyId != nil {
                    map["serviceApplyId"] = self.serviceApplyId!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                    self.appointmentId = dict["appointmentId"] as! String
                }
                if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                    self.batchGroup = dict["batchGroup"] as! String
                }
                if dict.keys.contains("customerId") && dict["customerId"] != nil {
                    self.customerId = dict["customerId"] as! String
                }
                if dict.keys.contains("fileName") && dict["fileName"] != nil {
                    self.fileName = dict["fileName"] as! String
                }
                if dict.keys.contains("fileType") && dict["fileType"] != nil {
                    self.fileType = dict["fileType"] as! Int32
                }
                if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("remarke") && dict["remarke"] != nil {
                    self.remarke = dict["remarke"] as! String
                }
                if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                    self.serviceApplyId = dict["serviceApplyId"] as! Int64
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var applierId: String?

        public var applyCode: String?

        public var applyTime: Int64?

        public var appointments: [GetServiceDetailResponseBody.Data.Appointments]?

        public var buyUrl: String?

        public var creatorEmpId: String?

        public var customerName: String?

        public var cycleService: Bool?

        public var executedCount: Int64?

        public var finishCount: Int64?

        public var formMap: [String: Any]?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var mergeSolutionAndReporterOneStep: Bool?

        public var modifierEmpId: String?

        public var packDetails: [[String: Any]]?

        public var payOrders: [GetServiceDetailResponseBody.Data.PayOrders]?

        public var payUrl: String?

        public var performanceOrders: [GetServiceDetailResponseBody.Data.PerformanceOrders]?

        public var performancePacks: [GetServiceDetailResponseBody.Data.PerformancePacks]?

        public var reneWalUrl: String?

        public var serviceCode: String?

        public var serviceName: String?

        public var serviceReports: [GetServiceDetailResponseBody.Data.ServiceReports]?

        public var serviceTimeRange: [Int64]?

        public var status: String?

        public var statusCode: Int32?

        public var statusStr: String?

        public var termOfValidity: String?

        public var totalPack: Int32?

        public var type: String?

        public var usePack: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applierId != nil {
                map["applierId"] = self.applierId!
            }
            if self.applyCode != nil {
                map["applyCode"] = self.applyCode!
            }
            if self.applyTime != nil {
                map["applyTime"] = self.applyTime!
            }
            if self.appointments != nil {
                var tmp : [Any] = []
                for k in self.appointments! {
                    tmp.append(k.toMap())
                }
                map["appointments"] = tmp
            }
            if self.buyUrl != nil {
                map["buyUrl"] = self.buyUrl!
            }
            if self.creatorEmpId != nil {
                map["creatorEmpId"] = self.creatorEmpId!
            }
            if self.customerName != nil {
                map["customerName"] = self.customerName!
            }
            if self.cycleService != nil {
                map["cycleService"] = self.cycleService!
            }
            if self.executedCount != nil {
                map["executedCount"] = self.executedCount!
            }
            if self.finishCount != nil {
                map["finishCount"] = self.finishCount!
            }
            if self.formMap != nil {
                map["formMap"] = self.formMap!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.mergeSolutionAndReporterOneStep != nil {
                map["mergeSolutionAndReporterOneStep"] = self.mergeSolutionAndReporterOneStep!
            }
            if self.modifierEmpId != nil {
                map["modifierEmpId"] = self.modifierEmpId!
            }
            if self.packDetails != nil {
                map["packDetails"] = self.packDetails!
            }
            if self.payOrders != nil {
                var tmp : [Any] = []
                for k in self.payOrders! {
                    tmp.append(k.toMap())
                }
                map["payOrders"] = tmp
            }
            if self.payUrl != nil {
                map["payUrl"] = self.payUrl!
            }
            if self.performanceOrders != nil {
                var tmp : [Any] = []
                for k in self.performanceOrders! {
                    tmp.append(k.toMap())
                }
                map["performanceOrders"] = tmp
            }
            if self.performancePacks != nil {
                var tmp : [Any] = []
                for k in self.performancePacks! {
                    tmp.append(k.toMap())
                }
                map["performancePacks"] = tmp
            }
            if self.reneWalUrl != nil {
                map["reneWalUrl"] = self.reneWalUrl!
            }
            if self.serviceCode != nil {
                map["serviceCode"] = self.serviceCode!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.serviceReports != nil {
                var tmp : [Any] = []
                for k in self.serviceReports! {
                    tmp.append(k.toMap())
                }
                map["serviceReports"] = tmp
            }
            if self.serviceTimeRange != nil {
                map["serviceTimeRange"] = self.serviceTimeRange!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusCode != nil {
                map["statusCode"] = self.statusCode!
            }
            if self.statusStr != nil {
                map["statusStr"] = self.statusStr!
            }
            if self.termOfValidity != nil {
                map["termOfValidity"] = self.termOfValidity!
            }
            if self.totalPack != nil {
                map["totalPack"] = self.totalPack!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.usePack != nil {
                map["usePack"] = self.usePack!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("applierId") && dict["applierId"] != nil {
                self.applierId = dict["applierId"] as! String
            }
            if dict.keys.contains("applyCode") && dict["applyCode"] != nil {
                self.applyCode = dict["applyCode"] as! String
            }
            if dict.keys.contains("applyTime") && dict["applyTime"] != nil {
                self.applyTime = dict["applyTime"] as! Int64
            }
            if dict.keys.contains("appointments") && dict["appointments"] != nil {
                var tmp : [GetServiceDetailResponseBody.Data.Appointments] = []
                for v in dict["appointments"] as! [Any] {
                    var model = GetServiceDetailResponseBody.Data.Appointments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appointments = tmp
            }
            if dict.keys.contains("buyUrl") && dict["buyUrl"] != nil {
                self.buyUrl = dict["buyUrl"] as! String
            }
            if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                self.creatorEmpId = dict["creatorEmpId"] as! String
            }
            if dict.keys.contains("customerName") && dict["customerName"] != nil {
                self.customerName = dict["customerName"] as! String
            }
            if dict.keys.contains("cycleService") && dict["cycleService"] != nil {
                self.cycleService = dict["cycleService"] as! Bool
            }
            if dict.keys.contains("executedCount") && dict["executedCount"] != nil {
                self.executedCount = dict["executedCount"] as! Int64
            }
            if dict.keys.contains("finishCount") && dict["finishCount"] != nil {
                self.finishCount = dict["finishCount"] as! Int64
            }
            if dict.keys.contains("formMap") && dict["formMap"] != nil {
                self.formMap = dict["formMap"] as! [String: Any]
            }
            if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("mergeSolutionAndReporterOneStep") && dict["mergeSolutionAndReporterOneStep"] != nil {
                self.mergeSolutionAndReporterOneStep = dict["mergeSolutionAndReporterOneStep"] as! Bool
            }
            if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                self.modifierEmpId = dict["modifierEmpId"] as! String
            }
            if dict.keys.contains("packDetails") && dict["packDetails"] != nil {
                self.packDetails = dict["packDetails"] as! [[String: Any]]
            }
            if dict.keys.contains("payOrders") && dict["payOrders"] != nil {
                var tmp : [GetServiceDetailResponseBody.Data.PayOrders] = []
                for v in dict["payOrders"] as! [Any] {
                    var model = GetServiceDetailResponseBody.Data.PayOrders()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.payOrders = tmp
            }
            if dict.keys.contains("payUrl") && dict["payUrl"] != nil {
                self.payUrl = dict["payUrl"] as! String
            }
            if dict.keys.contains("performanceOrders") && dict["performanceOrders"] != nil {
                var tmp : [GetServiceDetailResponseBody.Data.PerformanceOrders] = []
                for v in dict["performanceOrders"] as! [Any] {
                    var model = GetServiceDetailResponseBody.Data.PerformanceOrders()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.performanceOrders = tmp
            }
            if dict.keys.contains("performancePacks") && dict["performancePacks"] != nil {
                var tmp : [GetServiceDetailResponseBody.Data.PerformancePacks] = []
                for v in dict["performancePacks"] as! [Any] {
                    var model = GetServiceDetailResponseBody.Data.PerformancePacks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.performancePacks = tmp
            }
            if dict.keys.contains("reneWalUrl") && dict["reneWalUrl"] != nil {
                self.reneWalUrl = dict["reneWalUrl"] as! String
            }
            if dict.keys.contains("serviceCode") && dict["serviceCode"] != nil {
                self.serviceCode = dict["serviceCode"] as! String
            }
            if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("serviceReports") && dict["serviceReports"] != nil {
                var tmp : [GetServiceDetailResponseBody.Data.ServiceReports] = []
                for v in dict["serviceReports"] as! [Any] {
                    var model = GetServiceDetailResponseBody.Data.ServiceReports()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceReports = tmp
            }
            if dict.keys.contains("serviceTimeRange") && dict["serviceTimeRange"] != nil {
                self.serviceTimeRange = dict["serviceTimeRange"] as! [Int64]
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
                self.statusCode = dict["statusCode"] as! Int32
            }
            if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                self.statusStr = dict["statusStr"] as! String
            }
            if dict.keys.contains("termOfValidity") && dict["termOfValidity"] != nil {
                self.termOfValidity = dict["termOfValidity"] as! String
            }
            if dict.keys.contains("totalPack") && dict["totalPack"] != nil {
                self.totalPack = dict["totalPack"] as! Int32
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("usePack") && dict["usePack"] != nil {
                self.usePack = dict["usePack"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetServiceDetailResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetServiceDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetServiceDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetServiceDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetYunQiTaskByRecordIdRequest : Tea.TeaModel {
    public var recordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["recordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("recordId") && dict["recordId"] != nil {
            self.recordId = dict["recordId"] as! String
        }
    }
}

public class GetYunQiTaskByRecordIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chatId: String?

        public var createTime: Int64?

        public var creatorName: String?

        public var endTime: Int64?

        public var evaluationStar: Int32?

        public var important: String?

        public var mainDingDepartmentId: String?

        public var mainDingGroupId: String?

        public var mainDingGroupName: String?

        public var productName: String?

        public var recordId: String?

        public var status: String?

        public var subDingDepartmentId: String?

        public var subDingGroupId: String?

        public var subDingGroupName: String?

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
            if self.chatId != nil {
                map["chatId"] = self.chatId!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.evaluationStar != nil {
                map["evaluationStar"] = self.evaluationStar!
            }
            if self.important != nil {
                map["important"] = self.important!
            }
            if self.mainDingDepartmentId != nil {
                map["mainDingDepartmentId"] = self.mainDingDepartmentId!
            }
            if self.mainDingGroupId != nil {
                map["mainDingGroupId"] = self.mainDingGroupId!
            }
            if self.mainDingGroupName != nil {
                map["mainDingGroupName"] = self.mainDingGroupName!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.recordId != nil {
                map["recordId"] = self.recordId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subDingDepartmentId != nil {
                map["subDingDepartmentId"] = self.subDingDepartmentId!
            }
            if self.subDingGroupId != nil {
                map["subDingGroupId"] = self.subDingGroupId!
            }
            if self.subDingGroupName != nil {
                map["subDingGroupName"] = self.subDingGroupName!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chatId") && dict["chatId"] != nil {
                self.chatId = dict["chatId"] as! String
            }
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorName") && dict["creatorName"] != nil {
                self.creatorName = dict["creatorName"] as! String
            }
            if dict.keys.contains("endTime") && dict["endTime"] != nil {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("evaluationStar") && dict["evaluationStar"] != nil {
                self.evaluationStar = dict["evaluationStar"] as! Int32
            }
            if dict.keys.contains("important") && dict["important"] != nil {
                self.important = dict["important"] as! String
            }
            if dict.keys.contains("mainDingDepartmentId") && dict["mainDingDepartmentId"] != nil {
                self.mainDingDepartmentId = dict["mainDingDepartmentId"] as! String
            }
            if dict.keys.contains("mainDingGroupId") && dict["mainDingGroupId"] != nil {
                self.mainDingGroupId = dict["mainDingGroupId"] as! String
            }
            if dict.keys.contains("mainDingGroupName") && dict["mainDingGroupName"] != nil {
                self.mainDingGroupName = dict["mainDingGroupName"] as! String
            }
            if dict.keys.contains("productName") && dict["productName"] != nil {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("recordId") && dict["recordId"] != nil {
                self.recordId = dict["recordId"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("subDingDepartmentId") && dict["subDingDepartmentId"] != nil {
                self.subDingDepartmentId = dict["subDingDepartmentId"] as! String
            }
            if dict.keys.contains("subDingGroupId") && dict["subDingGroupId"] != nil {
                self.subDingGroupId = dict["subDingGroupId"] as! String
            }
            if dict.keys.contains("subDingGroupName") && dict["subDingGroupName"] != nil {
                self.subDingGroupName = dict["subDingGroupName"] as! String
            }
            if dict.keys.contains("title") && dict["title"] != nil {
                self.title = dict["title"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetYunQiTaskByRecordIdResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetYunQiTaskByRecordIdResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetYunQiTaskByRecordIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYunQiTaskByRecordIdResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetYunQiTaskByRecordIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDocsGroupByYearRequest : Tea.TeaModel {
    public var applyCodes: [String]?

    public var fileNameKeyword: String?

    public var orderIds: [Int64]?

    public var productCode: String?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyCodes != nil {
            map["applyCodes"] = self.applyCodes!
        }
        if self.fileNameKeyword != nil {
            map["fileNameKeyword"] = self.fileNameKeyword!
        }
        if self.orderIds != nil {
            map["orderIds"] = self.orderIds!
        }
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applyCodes") && dict["applyCodes"] != nil {
            self.applyCodes = dict["applyCodes"] as! [String]
        }
        if dict.keys.contains("fileNameKeyword") && dict["fileNameKeyword"] != nil {
            self.fileNameKeyword = dict["fileNameKeyword"] as! String
        }
        if dict.keys.contains("orderIds") && dict["orderIds"] != nil {
            self.orderIds = dict["orderIds"] as! [Int64]
        }
        if dict.keys.contains("productCode") && dict["productCode"] != nil {
            self.productCode = dict["productCode"] as! String
        }
        if dict.keys.contains("scene") && dict["scene"] != nil {
            self.scene = dict["scene"] as! String
        }
    }
}

public class ListDocsGroupByYearResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: [DataValue]]?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.data! {
                var l1 : [Any] = []
                for k1 in v {
                    l1.append(k1.toMap())
                }
                tmp[k] = l1
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [String: [DataValue]] = [:]
            for (k, v) in dict["data"] as! [String: Any] {
                var l1 : [DataValue] = []
                for v1 in v as! [Any] {
                    var model = DataValue()
                    if v1 != nil {
                        model.fromMap(v1 as! [String: Any])
                    }
                    l1.append(model)
                }
                tmp[k] = l1
            }
            self.data = tmp
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListDocsGroupByYearResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDocsGroupByYearResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListDocsGroupByYearResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnterpriseSupportPlanRequest : Tea.TeaModel {
    public var pageNum: Int32?

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
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListEnterpriseSupportPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Docs : Tea.TeaModel {
            public var docId: Int64?

            public var fileName: String?

            public var freeOrderApplyCode: String?

            public var name: String?

            public var orderId: String?

            public var uploadTime: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.fileName != nil {
                    map["fileName"] = self.fileName!
                }
                if self.freeOrderApplyCode != nil {
                    map["freeOrderApplyCode"] = self.freeOrderApplyCode!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                if self.uploadTime != nil {
                    map["uploadTime"] = self.uploadTime!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docId") && dict["docId"] != nil {
                    self.docId = dict["docId"] as! Int64
                }
                if dict.keys.contains("fileName") && dict["fileName"] != nil {
                    self.fileName = dict["fileName"] as! String
                }
                if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                    self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("orderId") && dict["orderId"] != nil {
                    self.orderId = dict["orderId"] as! String
                }
                if dict.keys.contains("uploadTime") && dict["uploadTime"] != nil {
                    self.uploadTime = dict["uploadTime"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class Nodes : Tea.TeaModel {
            public class DocNode : Tea.TeaModel {
                public var docId: Int64?

                public var docName: String?

                public var docSubmitTime: String?

                public var fileName: String?

                public var freeOrderApplyCode: String?

                public var orderId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.docId != nil {
                        map["docId"] = self.docId!
                    }
                    if self.docName != nil {
                        map["docName"] = self.docName!
                    }
                    if self.docSubmitTime != nil {
                        map["docSubmitTime"] = self.docSubmitTime!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.freeOrderApplyCode != nil {
                        map["freeOrderApplyCode"] = self.freeOrderApplyCode!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("docId") && dict["docId"] != nil {
                        self.docId = dict["docId"] as! Int64
                    }
                    if dict.keys.contains("docName") && dict["docName"] != nil {
                        self.docName = dict["docName"] as! String
                    }
                    if dict.keys.contains("docSubmitTime") && dict["docSubmitTime"] != nil {
                        self.docSubmitTime = dict["docSubmitTime"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                        self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
                    }
                    if dict.keys.contains("orderId") && dict["orderId"] != nil {
                        self.orderId = dict["orderId"] as! String
                    }
                }
            }
            public class FinishNode : Tea.TeaModel {
                public var finishTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.finishTime != nil {
                        map["finishTime"] = self.finishTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("finishTime") && dict["finishTime"] != nil {
                        self.finishTime = dict["finishTime"] as! String
                    }
                }
            }
            public class FreeOrderAuditNode : Tea.TeaModel {
                public var auditTime: String?

                public var status: String?

                public var statusName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.auditTime != nil {
                        map["auditTime"] = self.auditTime!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.statusName != nil {
                        map["statusName"] = self.statusName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("auditTime") && dict["auditTime"] != nil {
                        self.auditTime = dict["auditTime"] as! String
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("statusName") && dict["statusName"] != nil {
                        self.statusName = dict["statusName"] as! String
                    }
                }
            }
            public class FreeOrderNode : Tea.TeaModel {
                public var applyTime: String?

                public var uid: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applyTime != nil {
                        map["applyTime"] = self.applyTime!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("applyTime") && dict["applyTime"] != nil {
                        self.applyTime = dict["applyTime"] as! String
                    }
                    if dict.keys.contains("uid") && dict["uid"] != nil {
                        self.uid = dict["uid"] as! Int64
                    }
                }
            }
            public class OrderNode : Tea.TeaModel {
                public var payTime: String?

                public var uid: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.payTime != nil {
                        map["payTime"] = self.payTime!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("payTime") && dict["payTime"] != nil {
                        self.payTime = dict["payTime"] as! String
                    }
                    if dict.keys.contains("uid") && dict["uid"] != nil {
                        self.uid = dict["uid"] as! Int64
                    }
                }
            }
            public class ServiceImplementation : Tea.TeaModel {
                public var endTime: String?

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
                    if self.endTime != nil {
                        map["endTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["startTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("endTime") && dict["endTime"] != nil {
                        self.endTime = dict["endTime"] as! String
                    }
                    if dict.keys.contains("startTime") && dict["startTime"] != nil {
                        self.startTime = dict["startTime"] as! String
                    }
                }
            }
            public var docNode: ListEnterpriseSupportPlanResponseBody.Data.Nodes.DocNode?

            public var finishNode: ListEnterpriseSupportPlanResponseBody.Data.Nodes.FinishNode?

            public var freeOrderAuditNode: ListEnterpriseSupportPlanResponseBody.Data.Nodes.FreeOrderAuditNode?

            public var freeOrderNode: ListEnterpriseSupportPlanResponseBody.Data.Nodes.FreeOrderNode?

            public var name: String?

            public var orderDate: Int64?

            public var orderNode: ListEnterpriseSupportPlanResponseBody.Data.Nodes.OrderNode?

            public var serviceImplementation: ListEnterpriseSupportPlanResponseBody.Data.Nodes.ServiceImplementation?

            public var status: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.docNode?.validate()
                try self.finishNode?.validate()
                try self.freeOrderAuditNode?.validate()
                try self.freeOrderNode?.validate()
                try self.orderNode?.validate()
                try self.serviceImplementation?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docNode != nil {
                    map["docNode"] = self.docNode?.toMap()
                }
                if self.finishNode != nil {
                    map["finishNode"] = self.finishNode?.toMap()
                }
                if self.freeOrderAuditNode != nil {
                    map["freeOrderAuditNode"] = self.freeOrderAuditNode?.toMap()
                }
                if self.freeOrderNode != nil {
                    map["freeOrderNode"] = self.freeOrderNode?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.orderDate != nil {
                    map["orderDate"] = self.orderDate!
                }
                if self.orderNode != nil {
                    map["orderNode"] = self.orderNode?.toMap()
                }
                if self.serviceImplementation != nil {
                    map["serviceImplementation"] = self.serviceImplementation?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docNode") && dict["docNode"] != nil {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.DocNode()
                    model.fromMap(dict["docNode"] as! [String: Any])
                    self.docNode = model
                }
                if dict.keys.contains("finishNode") && dict["finishNode"] != nil {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.FinishNode()
                    model.fromMap(dict["finishNode"] as! [String: Any])
                    self.finishNode = model
                }
                if dict.keys.contains("freeOrderAuditNode") && dict["freeOrderAuditNode"] != nil {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.FreeOrderAuditNode()
                    model.fromMap(dict["freeOrderAuditNode"] as! [String: Any])
                    self.freeOrderAuditNode = model
                }
                if dict.keys.contains("freeOrderNode") && dict["freeOrderNode"] != nil {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.FreeOrderNode()
                    model.fromMap(dict["freeOrderNode"] as! [String: Any])
                    self.freeOrderNode = model
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("orderDate") && dict["orderDate"] != nil {
                    self.orderDate = dict["orderDate"] as! Int64
                }
                if dict.keys.contains("orderNode") && dict["orderNode"] != nil {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.OrderNode()
                    model.fromMap(dict["orderNode"] as! [String: Any])
                    self.orderNode = model
                }
                if dict.keys.contains("serviceImplementation") && dict["serviceImplementation"] != nil {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.ServiceImplementation()
                    model.fromMap(dict["serviceImplementation"] as! [String: Any])
                    self.serviceImplementation = model
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
            }
        }
        public class OperateInfos : Tea.TeaModel {
            public var canClick: Bool?

            public var text: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.canClick != nil {
                    map["canClick"] = self.canClick!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("canClick") && dict["canClick"] != nil {
                    self.canClick = dict["canClick"] as! Bool
                }
                if dict.keys.contains("text") && dict["text"] != nil {
                    self.text = dict["text"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var canApplyFreeOrder: Bool?

        public var customerId: Int64?

        public var docs: [ListEnterpriseSupportPlanResponseBody.Data.Docs]?

        public var endTime: String?

        public var firstPayTime: String?

        public var freeOrderApplyCode: String?

        public var freeOrderApplyId: Int64?

        public var freeOrderApplyTime: String?

        public var freeOrderApprovedTime: String?

        public var freeOrderExpectStartTime: String?

        public var instanceId: String?

        public var nodes: [ListEnterpriseSupportPlanResponseBody.Data.Nodes]?

        public var operateInfos: [ListEnterpriseSupportPlanResponseBody.Data.OperateInfos]?

        public var orderIds: [Int64]?

        public var serviceName: String?

        public var serviceStatus: String?

        public var serviceStatusName: String?

        public var serviceType: String?

        public var sortTime: String?

        public var startTime: String?

        public var taskNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canApplyFreeOrder != nil {
                map["canApplyFreeOrder"] = self.canApplyFreeOrder!
            }
            if self.customerId != nil {
                map["customerId"] = self.customerId!
            }
            if self.docs != nil {
                var tmp : [Any] = []
                for k in self.docs! {
                    tmp.append(k.toMap())
                }
                map["docs"] = tmp
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.firstPayTime != nil {
                map["firstPayTime"] = self.firstPayTime!
            }
            if self.freeOrderApplyCode != nil {
                map["freeOrderApplyCode"] = self.freeOrderApplyCode!
            }
            if self.freeOrderApplyId != nil {
                map["freeOrderApplyId"] = self.freeOrderApplyId!
            }
            if self.freeOrderApplyTime != nil {
                map["freeOrderApplyTime"] = self.freeOrderApplyTime!
            }
            if self.freeOrderApprovedTime != nil {
                map["freeOrderApprovedTime"] = self.freeOrderApprovedTime!
            }
            if self.freeOrderExpectStartTime != nil {
                map["freeOrderExpectStartTime"] = self.freeOrderExpectStartTime!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["nodes"] = tmp
            }
            if self.operateInfos != nil {
                var tmp : [Any] = []
                for k in self.operateInfos! {
                    tmp.append(k.toMap())
                }
                map["operateInfos"] = tmp
            }
            if self.orderIds != nil {
                map["orderIds"] = self.orderIds!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.serviceStatus != nil {
                map["serviceStatus"] = self.serviceStatus!
            }
            if self.serviceStatusName != nil {
                map["serviceStatusName"] = self.serviceStatusName!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.sortTime != nil {
                map["sortTime"] = self.sortTime!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.taskNum != nil {
                map["taskNum"] = self.taskNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("canApplyFreeOrder") && dict["canApplyFreeOrder"] != nil {
                self.canApplyFreeOrder = dict["canApplyFreeOrder"] as! Bool
            }
            if dict.keys.contains("customerId") && dict["customerId"] != nil {
                self.customerId = dict["customerId"] as! Int64
            }
            if dict.keys.contains("docs") && dict["docs"] != nil {
                var tmp : [ListEnterpriseSupportPlanResponseBody.Data.Docs] = []
                for v in dict["docs"] as! [Any] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Docs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.docs = tmp
            }
            if dict.keys.contains("endTime") && dict["endTime"] != nil {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("firstPayTime") && dict["firstPayTime"] != nil {
                self.firstPayTime = dict["firstPayTime"] as! String
            }
            if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
            }
            if dict.keys.contains("freeOrderApplyId") && dict["freeOrderApplyId"] != nil {
                self.freeOrderApplyId = dict["freeOrderApplyId"] as! Int64
            }
            if dict.keys.contains("freeOrderApplyTime") && dict["freeOrderApplyTime"] != nil {
                self.freeOrderApplyTime = dict["freeOrderApplyTime"] as! String
            }
            if dict.keys.contains("freeOrderApprovedTime") && dict["freeOrderApprovedTime"] != nil {
                self.freeOrderApprovedTime = dict["freeOrderApprovedTime"] as! String
            }
            if dict.keys.contains("freeOrderExpectStartTime") && dict["freeOrderExpectStartTime"] != nil {
                self.freeOrderExpectStartTime = dict["freeOrderExpectStartTime"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("nodes") && dict["nodes"] != nil {
                var tmp : [ListEnterpriseSupportPlanResponseBody.Data.Nodes] = []
                for v in dict["nodes"] as! [Any] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("operateInfos") && dict["operateInfos"] != nil {
                var tmp : [ListEnterpriseSupportPlanResponseBody.Data.OperateInfos] = []
                for v in dict["operateInfos"] as! [Any] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.OperateInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.operateInfos = tmp
            }
            if dict.keys.contains("orderIds") && dict["orderIds"] != nil {
                self.orderIds = dict["orderIds"] as! [Int64]
            }
            if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("serviceStatus") && dict["serviceStatus"] != nil {
                self.serviceStatus = dict["serviceStatus"] as! String
            }
            if dict.keys.contains("serviceStatusName") && dict["serviceStatusName"] != nil {
                self.serviceStatusName = dict["serviceStatusName"] as! String
            }
            if dict.keys.contains("serviceType") && dict["serviceType"] != nil {
                self.serviceType = dict["serviceType"] as! String
            }
            if dict.keys.contains("sortTime") && dict["sortTime"] != nil {
                self.sortTime = dict["sortTime"] as! String
            }
            if dict.keys.contains("startTime") && dict["startTime"] != nil {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("taskNum") && dict["taskNum"] != nil {
                self.taskNum = dict["taskNum"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [ListEnterpriseSupportPlanResponseBody.Data]?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ListEnterpriseSupportPlanResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListEnterpriseSupportPlanResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListEnterpriseSupportPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnterpriseSupportPlanResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEnterpriseSupportPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnterpriseSupportPlanSimpleRequest : Tea.TeaModel {
    public var pageNum: Int32?

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
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListEnterpriseSupportPlanSimpleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Docs : Tea.TeaModel {
            public var docId: Int64?

            public var fileName: String?

            public var freeOrderApplyCode: String?

            public var name: String?

            public var orderId: String?

            public var uploadTime: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.fileName != nil {
                    map["fileName"] = self.fileName!
                }
                if self.freeOrderApplyCode != nil {
                    map["freeOrderApplyCode"] = self.freeOrderApplyCode!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                if self.uploadTime != nil {
                    map["uploadTime"] = self.uploadTime!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docId") && dict["docId"] != nil {
                    self.docId = dict["docId"] as! Int64
                }
                if dict.keys.contains("fileName") && dict["fileName"] != nil {
                    self.fileName = dict["fileName"] as! String
                }
                if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                    self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("orderId") && dict["orderId"] != nil {
                    self.orderId = dict["orderId"] as! String
                }
                if dict.keys.contains("uploadTime") && dict["uploadTime"] != nil {
                    self.uploadTime = dict["uploadTime"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class Nodes : Tea.TeaModel {
            public class DocNode : Tea.TeaModel {
                public var docId: Int64?

                public var docName: String?

                public var docSubmitTime: String?

                public var fileName: String?

                public var freeOrderApplyCode: String?

                public var orderId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.docId != nil {
                        map["docId"] = self.docId!
                    }
                    if self.docName != nil {
                        map["docName"] = self.docName!
                    }
                    if self.docSubmitTime != nil {
                        map["docSubmitTime"] = self.docSubmitTime!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.freeOrderApplyCode != nil {
                        map["freeOrderApplyCode"] = self.freeOrderApplyCode!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("docId") && dict["docId"] != nil {
                        self.docId = dict["docId"] as! Int64
                    }
                    if dict.keys.contains("docName") && dict["docName"] != nil {
                        self.docName = dict["docName"] as! String
                    }
                    if dict.keys.contains("docSubmitTime") && dict["docSubmitTime"] != nil {
                        self.docSubmitTime = dict["docSubmitTime"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                        self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
                    }
                    if dict.keys.contains("orderId") && dict["orderId"] != nil {
                        self.orderId = dict["orderId"] as! String
                    }
                }
            }
            public class FinishNode : Tea.TeaModel {
                public var finishTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.finishTime != nil {
                        map["finishTime"] = self.finishTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("finishTime") && dict["finishTime"] != nil {
                        self.finishTime = dict["finishTime"] as! String
                    }
                }
            }
            public class FreeOrderAuditNode : Tea.TeaModel {
                public var auditTime: String?

                public var status: String?

                public var statusName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.auditTime != nil {
                        map["auditTime"] = self.auditTime!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.statusName != nil {
                        map["statusName"] = self.statusName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("auditTime") && dict["auditTime"] != nil {
                        self.auditTime = dict["auditTime"] as! String
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("statusName") && dict["statusName"] != nil {
                        self.statusName = dict["statusName"] as! String
                    }
                }
            }
            public class FreeOrderNode : Tea.TeaModel {
                public var applyTime: String?

                public var uid: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applyTime != nil {
                        map["applyTime"] = self.applyTime!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("applyTime") && dict["applyTime"] != nil {
                        self.applyTime = dict["applyTime"] as! String
                    }
                    if dict.keys.contains("uid") && dict["uid"] != nil {
                        self.uid = dict["uid"] as! Int64
                    }
                }
            }
            public class OrderNode : Tea.TeaModel {
                public var payTime: String?

                public var uid: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.payTime != nil {
                        map["payTime"] = self.payTime!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("payTime") && dict["payTime"] != nil {
                        self.payTime = dict["payTime"] as! String
                    }
                    if dict.keys.contains("uid") && dict["uid"] != nil {
                        self.uid = dict["uid"] as! Int64
                    }
                }
            }
            public class ServiceImplementation : Tea.TeaModel {
                public var endTime: String?

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
                    if self.endTime != nil {
                        map["endTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["startTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("endTime") && dict["endTime"] != nil {
                        self.endTime = dict["endTime"] as! String
                    }
                    if dict.keys.contains("startTime") && dict["startTime"] != nil {
                        self.startTime = dict["startTime"] as! String
                    }
                }
            }
            public var docNode: ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.DocNode?

            public var finishNode: ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FinishNode?

            public var freeOrderAuditNode: ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FreeOrderAuditNode?

            public var freeOrderNode: ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FreeOrderNode?

            public var name: String?

            public var orderDate: Int64?

            public var orderNode: ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.OrderNode?

            public var serviceImplementation: ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.ServiceImplementation?

            public var status: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.docNode?.validate()
                try self.finishNode?.validate()
                try self.freeOrderAuditNode?.validate()
                try self.freeOrderNode?.validate()
                try self.orderNode?.validate()
                try self.serviceImplementation?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docNode != nil {
                    map["docNode"] = self.docNode?.toMap()
                }
                if self.finishNode != nil {
                    map["finishNode"] = self.finishNode?.toMap()
                }
                if self.freeOrderAuditNode != nil {
                    map["freeOrderAuditNode"] = self.freeOrderAuditNode?.toMap()
                }
                if self.freeOrderNode != nil {
                    map["freeOrderNode"] = self.freeOrderNode?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.orderDate != nil {
                    map["orderDate"] = self.orderDate!
                }
                if self.orderNode != nil {
                    map["orderNode"] = self.orderNode?.toMap()
                }
                if self.serviceImplementation != nil {
                    map["serviceImplementation"] = self.serviceImplementation?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docNode") && dict["docNode"] != nil {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.DocNode()
                    model.fromMap(dict["docNode"] as! [String: Any])
                    self.docNode = model
                }
                if dict.keys.contains("finishNode") && dict["finishNode"] != nil {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FinishNode()
                    model.fromMap(dict["finishNode"] as! [String: Any])
                    self.finishNode = model
                }
                if dict.keys.contains("freeOrderAuditNode") && dict["freeOrderAuditNode"] != nil {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FreeOrderAuditNode()
                    model.fromMap(dict["freeOrderAuditNode"] as! [String: Any])
                    self.freeOrderAuditNode = model
                }
                if dict.keys.contains("freeOrderNode") && dict["freeOrderNode"] != nil {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FreeOrderNode()
                    model.fromMap(dict["freeOrderNode"] as! [String: Any])
                    self.freeOrderNode = model
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("orderDate") && dict["orderDate"] != nil {
                    self.orderDate = dict["orderDate"] as! Int64
                }
                if dict.keys.contains("orderNode") && dict["orderNode"] != nil {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.OrderNode()
                    model.fromMap(dict["orderNode"] as! [String: Any])
                    self.orderNode = model
                }
                if dict.keys.contains("serviceImplementation") && dict["serviceImplementation"] != nil {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.ServiceImplementation()
                    model.fromMap(dict["serviceImplementation"] as! [String: Any])
                    self.serviceImplementation = model
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
            }
        }
        public var canApplyFreeOrder: Bool?

        public var customerId: Int64?

        public var docs: [ListEnterpriseSupportPlanSimpleResponseBody.Data.Docs]?

        public var endTime: String?

        public var firstPayTime: String?

        public var freeOrderApplyCode: String?

        public var freeOrderApplyId: Int64?

        public var freeOrderApplyTime: String?

        public var freeOrderApprovedTime: String?

        public var freeOrderExpectStartTime: String?

        public var instanceId: String?

        public var nodes: [ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes]?

        public var orderIds: [Int64]?

        public var serviceName: String?

        public var serviceStatus: String?

        public var serviceStatusName: String?

        public var serviceType: String?

        public var sortTime: String?

        public var startTime: String?

        public var taskNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canApplyFreeOrder != nil {
                map["canApplyFreeOrder"] = self.canApplyFreeOrder!
            }
            if self.customerId != nil {
                map["customerId"] = self.customerId!
            }
            if self.docs != nil {
                var tmp : [Any] = []
                for k in self.docs! {
                    tmp.append(k.toMap())
                }
                map["docs"] = tmp
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.firstPayTime != nil {
                map["firstPayTime"] = self.firstPayTime!
            }
            if self.freeOrderApplyCode != nil {
                map["freeOrderApplyCode"] = self.freeOrderApplyCode!
            }
            if self.freeOrderApplyId != nil {
                map["freeOrderApplyId"] = self.freeOrderApplyId!
            }
            if self.freeOrderApplyTime != nil {
                map["freeOrderApplyTime"] = self.freeOrderApplyTime!
            }
            if self.freeOrderApprovedTime != nil {
                map["freeOrderApprovedTime"] = self.freeOrderApprovedTime!
            }
            if self.freeOrderExpectStartTime != nil {
                map["freeOrderExpectStartTime"] = self.freeOrderExpectStartTime!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["nodes"] = tmp
            }
            if self.orderIds != nil {
                map["orderIds"] = self.orderIds!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.serviceStatus != nil {
                map["serviceStatus"] = self.serviceStatus!
            }
            if self.serviceStatusName != nil {
                map["serviceStatusName"] = self.serviceStatusName!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.sortTime != nil {
                map["sortTime"] = self.sortTime!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.taskNum != nil {
                map["taskNum"] = self.taskNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("canApplyFreeOrder") && dict["canApplyFreeOrder"] != nil {
                self.canApplyFreeOrder = dict["canApplyFreeOrder"] as! Bool
            }
            if dict.keys.contains("customerId") && dict["customerId"] != nil {
                self.customerId = dict["customerId"] as! Int64
            }
            if dict.keys.contains("docs") && dict["docs"] != nil {
                var tmp : [ListEnterpriseSupportPlanSimpleResponseBody.Data.Docs] = []
                for v in dict["docs"] as! [Any] {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Docs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.docs = tmp
            }
            if dict.keys.contains("endTime") && dict["endTime"] != nil {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("firstPayTime") && dict["firstPayTime"] != nil {
                self.firstPayTime = dict["firstPayTime"] as! String
            }
            if dict.keys.contains("freeOrderApplyCode") && dict["freeOrderApplyCode"] != nil {
                self.freeOrderApplyCode = dict["freeOrderApplyCode"] as! String
            }
            if dict.keys.contains("freeOrderApplyId") && dict["freeOrderApplyId"] != nil {
                self.freeOrderApplyId = dict["freeOrderApplyId"] as! Int64
            }
            if dict.keys.contains("freeOrderApplyTime") && dict["freeOrderApplyTime"] != nil {
                self.freeOrderApplyTime = dict["freeOrderApplyTime"] as! String
            }
            if dict.keys.contains("freeOrderApprovedTime") && dict["freeOrderApprovedTime"] != nil {
                self.freeOrderApprovedTime = dict["freeOrderApprovedTime"] as! String
            }
            if dict.keys.contains("freeOrderExpectStartTime") && dict["freeOrderExpectStartTime"] != nil {
                self.freeOrderExpectStartTime = dict["freeOrderExpectStartTime"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("nodes") && dict["nodes"] != nil {
                var tmp : [ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes] = []
                for v in dict["nodes"] as! [Any] {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("orderIds") && dict["orderIds"] != nil {
                self.orderIds = dict["orderIds"] as! [Int64]
            }
            if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("serviceStatus") && dict["serviceStatus"] != nil {
                self.serviceStatus = dict["serviceStatus"] as! String
            }
            if dict.keys.contains("serviceStatusName") && dict["serviceStatusName"] != nil {
                self.serviceStatusName = dict["serviceStatusName"] as! String
            }
            if dict.keys.contains("serviceType") && dict["serviceType"] != nil {
                self.serviceType = dict["serviceType"] as! String
            }
            if dict.keys.contains("sortTime") && dict["sortTime"] != nil {
                self.sortTime = dict["sortTime"] as! String
            }
            if dict.keys.contains("startTime") && dict["startTime"] != nil {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("taskNum") && dict["taskNum"] != nil {
                self.taskNum = dict["taskNum"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [ListEnterpriseSupportPlanSimpleResponseBody.Data]?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ListEnterpriseSupportPlanSimpleResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListEnterpriseSupportPlanSimpleResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListEnterpriseSupportPlanSimpleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnterpriseSupportPlanSimpleResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEnterpriseSupportPlanSimpleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceApplyRequest : Tea.TeaModel {
    public var applyType: [String]?

    public var endDate: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: Int32?

    public var startDate: Int64?

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
        if self.applyType != nil {
            map["applyType"] = self.applyType!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applyType") && dict["applyType"] != nil {
            self.applyType = dict["applyType"] as! [String]
        }
        if dict.keys.contains("endDate") && dict["endDate"] != nil {
            self.endDate = dict["endDate"] as! Int64
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("productCode") && dict["productCode"] != nil {
            self.productCode = dict["productCode"] as! Int32
        }
        if dict.keys.contains("startDate") && dict["startDate"] != nil {
            self.startDate = dict["startDate"] as! Int64
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
    }
}

public class ListServiceApplyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class Appointments : Tea.TeaModel {
                public var huhangId: Int64?

                public var purchaseCode: Int32?

                public var purchaseDesc: String?

                public var supportDays: Int32?

                public var travelDays: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.huhangId != nil {
                        map["huhangId"] = self.huhangId!
                    }
                    if self.purchaseCode != nil {
                        map["purchaseCode"] = self.purchaseCode!
                    }
                    if self.purchaseDesc != nil {
                        map["purchaseDesc"] = self.purchaseDesc!
                    }
                    if self.supportDays != nil {
                        map["supportDays"] = self.supportDays!
                    }
                    if self.travelDays != nil {
                        map["travelDays"] = self.travelDays!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("huhangId") && dict["huhangId"] != nil {
                        self.huhangId = dict["huhangId"] as! Int64
                    }
                    if dict.keys.contains("purchaseCode") && dict["purchaseCode"] != nil {
                        self.purchaseCode = dict["purchaseCode"] as! Int32
                    }
                    if dict.keys.contains("purchaseDesc") && dict["purchaseDesc"] != nil {
                        self.purchaseDesc = dict["purchaseDesc"] as! String
                    }
                    if dict.keys.contains("supportDays") && dict["supportDays"] != nil {
                        self.supportDays = dict["supportDays"] as! Int32
                    }
                    if dict.keys.contains("travelDays") && dict["travelDays"] != nil {
                        self.travelDays = dict["travelDays"] as! Int32
                    }
                }
            }
            public class PayOrders : Tea.TeaModel {
                public var amount: String?

                public var compassCommodityCode: String?

                public var compassCommodityName: String?

                public var creatorEmpId: String?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var modifierEmpId: String?

                public var operate: [String: Any]?

                public var orderDetail: Any?

                public var orderId: Int64?

                public var originalPrice: Double?

                public var payAmount: Double?

                public var payTime: String?

                public var productName: String?

                public var reneWalUrl: String?

                public var serviceContentMap: [String: Any]?

                public var status: Int32?

                public var statusStr: String?

                public var supportDays: Int32?

                public var uid: String?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.amount != nil {
                        map["amount"] = self.amount!
                    }
                    if self.compassCommodityCode != nil {
                        map["compassCommodityCode"] = self.compassCommodityCode!
                    }
                    if self.compassCommodityName != nil {
                        map["compassCommodityName"] = self.compassCommodityName!
                    }
                    if self.creatorEmpId != nil {
                        map["creatorEmpId"] = self.creatorEmpId!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.modifierEmpId != nil {
                        map["modifierEmpId"] = self.modifierEmpId!
                    }
                    if self.operate != nil {
                        map["operate"] = self.operate!
                    }
                    if self.orderDetail != nil {
                        map["orderDetail"] = self.orderDetail!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    if self.originalPrice != nil {
                        map["originalPrice"] = self.originalPrice!
                    }
                    if self.payAmount != nil {
                        map["payAmount"] = self.payAmount!
                    }
                    if self.payTime != nil {
                        map["payTime"] = self.payTime!
                    }
                    if self.productName != nil {
                        map["productName"] = self.productName!
                    }
                    if self.reneWalUrl != nil {
                        map["reneWalUrl"] = self.reneWalUrl!
                    }
                    if self.serviceContentMap != nil {
                        map["serviceContentMap"] = self.serviceContentMap!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.statusStr != nil {
                        map["statusStr"] = self.statusStr!
                    }
                    if self.supportDays != nil {
                        map["supportDays"] = self.supportDays!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("amount") && dict["amount"] != nil {
                        self.amount = dict["amount"] as! String
                    }
                    if dict.keys.contains("compassCommodityCode") && dict["compassCommodityCode"] != nil {
                        self.compassCommodityCode = dict["compassCommodityCode"] as! String
                    }
                    if dict.keys.contains("compassCommodityName") && dict["compassCommodityName"] != nil {
                        self.compassCommodityName = dict["compassCommodityName"] as! String
                    }
                    if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                        self.creatorEmpId = dict["creatorEmpId"] as! String
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                        self.modifierEmpId = dict["modifierEmpId"] as! String
                    }
                    if dict.keys.contains("operate") && dict["operate"] != nil {
                        self.operate = dict["operate"] as! [String: Any]
                    }
                    if dict.keys.contains("orderDetail") && dict["orderDetail"] != nil {
                        self.orderDetail = dict["orderDetail"] as! Any
                    }
                    if dict.keys.contains("orderId") && dict["orderId"] != nil {
                        self.orderId = dict["orderId"] as! Int64
                    }
                    if dict.keys.contains("originalPrice") && dict["originalPrice"] != nil {
                        self.originalPrice = dict["originalPrice"] as! Double
                    }
                    if dict.keys.contains("payAmount") && dict["payAmount"] != nil {
                        self.payAmount = dict["payAmount"] as! Double
                    }
                    if dict.keys.contains("payTime") && dict["payTime"] != nil {
                        self.payTime = dict["payTime"] as! String
                    }
                    if dict.keys.contains("productName") && dict["productName"] != nil {
                        self.productName = dict["productName"] as! String
                    }
                    if dict.keys.contains("reneWalUrl") && dict["reneWalUrl"] != nil {
                        self.reneWalUrl = dict["reneWalUrl"] as! String
                    }
                    if dict.keys.contains("serviceContentMap") && dict["serviceContentMap"] != nil {
                        self.serviceContentMap = dict["serviceContentMap"] as! [String: Any]
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                        self.statusStr = dict["statusStr"] as! String
                    }
                    if dict.keys.contains("supportDays") && dict["supportDays"] != nil {
                        self.supportDays = dict["supportDays"] as! Int32
                    }
                    if dict.keys.contains("uid") && dict["uid"] != nil {
                        self.uid = dict["uid"] as! String
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class PerformanceOrders : Tea.TeaModel {
                public class ApplyFileVOList : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ExtList : Tea.TeaModel {
                    public var keyCode: String?

                    public var name: String?

                    public var value: Any?

                    public var view: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keyCode != nil {
                            map["keyCode"] = self.keyCode!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        if self.view != nil {
                            map["view"] = self.view!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("keyCode") && dict["keyCode"] != nil {
                            self.keyCode = dict["keyCode"] as! String
                        }
                        if dict.keys.contains("name") && dict["name"] != nil {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("value") && dict["value"] != nil {
                            self.value = dict["value"] as! Any
                        }
                        if dict.keys.contains("view") && dict["view"] != nil {
                            self.view = dict["view"] as! String
                        }
                    }
                }
                public class PerformanceNodeDTOS : Tea.TeaModel {
                    public var display: Bool?

                    public var extendInfo: Any?

                    public var index: Int32?

                    public var nodeName: String?

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
                        if self.display != nil {
                            map["display"] = self.display!
                        }
                        if self.extendInfo != nil {
                            map["extendInfo"] = self.extendInfo!
                        }
                        if self.index != nil {
                            map["index"] = self.index!
                        }
                        if self.nodeName != nil {
                            map["nodeName"] = self.nodeName!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("display") && dict["display"] != nil {
                            self.display = dict["display"] as! Bool
                        }
                        if dict.keys.contains("extendInfo") && dict["extendInfo"] != nil {
                            self.extendInfo = dict["extendInfo"] as! Any
                        }
                        if dict.keys.contains("index") && dict["index"] != nil {
                            self.index = dict["index"] as! Int32
                        }
                        if dict.keys.contains("nodeName") && dict["nodeName"] != nil {
                            self.nodeName = dict["nodeName"] as! String
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                    }
                }
                public class PerformancePacks : Tea.TeaModel {
                    public class ApplyFileVOList : Tea.TeaModel {
                        public var appointmentId: String?

                        public var batchGroup: String?

                        public var customerId: String?

                        public var fileName: String?

                        public var fileType: Int32?

                        public var gmtCreate: String?

                        public var gmtModified: String?

                        public var id: Int64?

                        public var remarke: String?

                        public var serviceApplyId: Int64?

                        public var status: Int32?

                        public var url: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.appointmentId != nil {
                                map["appointmentId"] = self.appointmentId!
                            }
                            if self.batchGroup != nil {
                                map["batchGroup"] = self.batchGroup!
                            }
                            if self.customerId != nil {
                                map["customerId"] = self.customerId!
                            }
                            if self.fileName != nil {
                                map["fileName"] = self.fileName!
                            }
                            if self.fileType != nil {
                                map["fileType"] = self.fileType!
                            }
                            if self.gmtCreate != nil {
                                map["gmtCreate"] = self.gmtCreate!
                            }
                            if self.gmtModified != nil {
                                map["gmtModified"] = self.gmtModified!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.remarke != nil {
                                map["remarke"] = self.remarke!
                            }
                            if self.serviceApplyId != nil {
                                map["serviceApplyId"] = self.serviceApplyId!
                            }
                            if self.status != nil {
                                map["status"] = self.status!
                            }
                            if self.url != nil {
                                map["url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                                self.appointmentId = dict["appointmentId"] as! String
                            }
                            if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                                self.batchGroup = dict["batchGroup"] as! String
                            }
                            if dict.keys.contains("customerId") && dict["customerId"] != nil {
                                self.customerId = dict["customerId"] as! String
                            }
                            if dict.keys.contains("fileName") && dict["fileName"] != nil {
                                self.fileName = dict["fileName"] as! String
                            }
                            if dict.keys.contains("fileType") && dict["fileType"] != nil {
                                self.fileType = dict["fileType"] as! Int32
                            }
                            if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                                self.gmtCreate = dict["gmtCreate"] as! String
                            }
                            if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                                self.gmtModified = dict["gmtModified"] as! String
                            }
                            if dict.keys.contains("id") && dict["id"] != nil {
                                self.id = dict["id"] as! Int64
                            }
                            if dict.keys.contains("remarke") && dict["remarke"] != nil {
                                self.remarke = dict["remarke"] as! String
                            }
                            if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                                self.serviceApplyId = dict["serviceApplyId"] as! Int64
                            }
                            if dict.keys.contains("status") && dict["status"] != nil {
                                self.status = dict["status"] as! Int32
                            }
                            if dict.keys.contains("url") && dict["url"] != nil {
                                self.url = dict["url"] as! String
                            }
                        }
                    }
                    public class ExtList : Tea.TeaModel {
                        public var keyCode: String?

                        public var name: String?

                        public var value: Any?

                        public var view: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.keyCode != nil {
                                map["keyCode"] = self.keyCode!
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            if self.value != nil {
                                map["value"] = self.value!
                            }
                            if self.view != nil {
                                map["view"] = self.view!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("keyCode") && dict["keyCode"] != nil {
                                self.keyCode = dict["keyCode"] as! String
                            }
                            if dict.keys.contains("name") && dict["name"] != nil {
                                self.name = dict["name"] as! String
                            }
                            if dict.keys.contains("value") && dict["value"] != nil {
                                self.value = dict["value"] as! Any
                            }
                            if dict.keys.contains("view") && dict["view"] != nil {
                                self.view = dict["view"] as! String
                            }
                        }
                    }
                    public class PerformanceNodeDTOS : Tea.TeaModel {
                        public var display: Bool?

                        public var extendInfo: Any?

                        public var index: Int32?

                        public var nodeName: String?

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
                            if self.display != nil {
                                map["display"] = self.display!
                            }
                            if self.extendInfo != nil {
                                map["extendInfo"] = self.extendInfo!
                            }
                            if self.index != nil {
                                map["index"] = self.index!
                            }
                            if self.nodeName != nil {
                                map["nodeName"] = self.nodeName!
                            }
                            if self.status != nil {
                                map["status"] = self.status!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("display") && dict["display"] != nil {
                                self.display = dict["display"] as! Bool
                            }
                            if dict.keys.contains("extendInfo") && dict["extendInfo"] != nil {
                                self.extendInfo = dict["extendInfo"] as! Any
                            }
                            if dict.keys.contains("index") && dict["index"] != nil {
                                self.index = dict["index"] as! Int32
                            }
                            if dict.keys.contains("nodeName") && dict["nodeName"] != nil {
                                self.nodeName = dict["nodeName"] as! String
                            }
                            if dict.keys.contains("status") && dict["status"] != nil {
                                self.status = dict["status"] as! Int32
                            }
                        }
                    }
                    public class ServiceMonthReports : Tea.TeaModel {
                        public var appointmentId: String?

                        public var batchGroup: String?

                        public var customerId: String?

                        public var fileName: String?

                        public var fileType: Int32?

                        public var gmtCreate: String?

                        public var gmtModified: String?

                        public var id: Int64?

                        public var remarke: String?

                        public var serviceApplyId: Int64?

                        public var status: Int32?

                        public var url: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.appointmentId != nil {
                                map["appointmentId"] = self.appointmentId!
                            }
                            if self.batchGroup != nil {
                                map["batchGroup"] = self.batchGroup!
                            }
                            if self.customerId != nil {
                                map["customerId"] = self.customerId!
                            }
                            if self.fileName != nil {
                                map["fileName"] = self.fileName!
                            }
                            if self.fileType != nil {
                                map["fileType"] = self.fileType!
                            }
                            if self.gmtCreate != nil {
                                map["gmtCreate"] = self.gmtCreate!
                            }
                            if self.gmtModified != nil {
                                map["gmtModified"] = self.gmtModified!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.remarke != nil {
                                map["remarke"] = self.remarke!
                            }
                            if self.serviceApplyId != nil {
                                map["serviceApplyId"] = self.serviceApplyId!
                            }
                            if self.status != nil {
                                map["status"] = self.status!
                            }
                            if self.url != nil {
                                map["url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                                self.appointmentId = dict["appointmentId"] as! String
                            }
                            if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                                self.batchGroup = dict["batchGroup"] as! String
                            }
                            if dict.keys.contains("customerId") && dict["customerId"] != nil {
                                self.customerId = dict["customerId"] as! String
                            }
                            if dict.keys.contains("fileName") && dict["fileName"] != nil {
                                self.fileName = dict["fileName"] as! String
                            }
                            if dict.keys.contains("fileType") && dict["fileType"] != nil {
                                self.fileType = dict["fileType"] as! Int32
                            }
                            if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                                self.gmtCreate = dict["gmtCreate"] as! String
                            }
                            if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                                self.gmtModified = dict["gmtModified"] as! String
                            }
                            if dict.keys.contains("id") && dict["id"] != nil {
                                self.id = dict["id"] as! Int64
                            }
                            if dict.keys.contains("remarke") && dict["remarke"] != nil {
                                self.remarke = dict["remarke"] as! String
                            }
                            if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                                self.serviceApplyId = dict["serviceApplyId"] as! Int64
                            }
                            if dict.keys.contains("status") && dict["status"] != nil {
                                self.status = dict["status"] as! Int32
                            }
                            if dict.keys.contains("url") && dict["url"] != nil {
                                self.url = dict["url"] as! String
                            }
                        }
                    }
                    public class ServiceReports : Tea.TeaModel {
                        public var appointmentId: String?

                        public var batchGroup: String?

                        public var customerId: String?

                        public var fileName: String?

                        public var fileType: Int32?

                        public var gmtCreate: String?

                        public var gmtModified: String?

                        public var id: Int64?

                        public var remarke: String?

                        public var serviceApplyId: Int64?

                        public var status: Int32?

                        public var url: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.appointmentId != nil {
                                map["appointmentId"] = self.appointmentId!
                            }
                            if self.batchGroup != nil {
                                map["batchGroup"] = self.batchGroup!
                            }
                            if self.customerId != nil {
                                map["customerId"] = self.customerId!
                            }
                            if self.fileName != nil {
                                map["fileName"] = self.fileName!
                            }
                            if self.fileType != nil {
                                map["fileType"] = self.fileType!
                            }
                            if self.gmtCreate != nil {
                                map["gmtCreate"] = self.gmtCreate!
                            }
                            if self.gmtModified != nil {
                                map["gmtModified"] = self.gmtModified!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.remarke != nil {
                                map["remarke"] = self.remarke!
                            }
                            if self.serviceApplyId != nil {
                                map["serviceApplyId"] = self.serviceApplyId!
                            }
                            if self.status != nil {
                                map["status"] = self.status!
                            }
                            if self.url != nil {
                                map["url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                                self.appointmentId = dict["appointmentId"] as! String
                            }
                            if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                                self.batchGroup = dict["batchGroup"] as! String
                            }
                            if dict.keys.contains("customerId") && dict["customerId"] != nil {
                                self.customerId = dict["customerId"] as! String
                            }
                            if dict.keys.contains("fileName") && dict["fileName"] != nil {
                                self.fileName = dict["fileName"] as! String
                            }
                            if dict.keys.contains("fileType") && dict["fileType"] != nil {
                                self.fileType = dict["fileType"] as! Int32
                            }
                            if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                                self.gmtCreate = dict["gmtCreate"] as! String
                            }
                            if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                                self.gmtModified = dict["gmtModified"] as! String
                            }
                            if dict.keys.contains("id") && dict["id"] != nil {
                                self.id = dict["id"] as! Int64
                            }
                            if dict.keys.contains("remarke") && dict["remarke"] != nil {
                                self.remarke = dict["remarke"] as! String
                            }
                            if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                                self.serviceApplyId = dict["serviceApplyId"] as! Int64
                            }
                            if dict.keys.contains("status") && dict["status"] != nil {
                                self.status = dict["status"] as! Int32
                            }
                            if dict.keys.contains("url") && dict["url"] != nil {
                                self.url = dict["url"] as! String
                            }
                        }
                    }
                    public class ServiceSchemes : Tea.TeaModel {
                        public var appointmentId: String?

                        public var batchGroup: String?

                        public var customerId: String?

                        public var fileName: String?

                        public var fileType: Int32?

                        public var gmtCreate: String?

                        public var gmtModified: String?

                        public var id: Int64?

                        public var remarke: String?

                        public var serviceApplyId: Int64?

                        public var status: Int32?

                        public var url: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.appointmentId != nil {
                                map["appointmentId"] = self.appointmentId!
                            }
                            if self.batchGroup != nil {
                                map["batchGroup"] = self.batchGroup!
                            }
                            if self.customerId != nil {
                                map["customerId"] = self.customerId!
                            }
                            if self.fileName != nil {
                                map["fileName"] = self.fileName!
                            }
                            if self.fileType != nil {
                                map["fileType"] = self.fileType!
                            }
                            if self.gmtCreate != nil {
                                map["gmtCreate"] = self.gmtCreate!
                            }
                            if self.gmtModified != nil {
                                map["gmtModified"] = self.gmtModified!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.remarke != nil {
                                map["remarke"] = self.remarke!
                            }
                            if self.serviceApplyId != nil {
                                map["serviceApplyId"] = self.serviceApplyId!
                            }
                            if self.status != nil {
                                map["status"] = self.status!
                            }
                            if self.url != nil {
                                map["url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                                self.appointmentId = dict["appointmentId"] as! String
                            }
                            if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                                self.batchGroup = dict["batchGroup"] as! String
                            }
                            if dict.keys.contains("customerId") && dict["customerId"] != nil {
                                self.customerId = dict["customerId"] as! String
                            }
                            if dict.keys.contains("fileName") && dict["fileName"] != nil {
                                self.fileName = dict["fileName"] as! String
                            }
                            if dict.keys.contains("fileType") && dict["fileType"] != nil {
                                self.fileType = dict["fileType"] as! Int32
                            }
                            if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                                self.gmtCreate = dict["gmtCreate"] as! String
                            }
                            if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                                self.gmtModified = dict["gmtModified"] as! String
                            }
                            if dict.keys.contains("id") && dict["id"] != nil {
                                self.id = dict["id"] as! Int64
                            }
                            if dict.keys.contains("remarke") && dict["remarke"] != nil {
                                self.remarke = dict["remarke"] as! String
                            }
                            if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                                self.serviceApplyId = dict["serviceApplyId"] as! Int64
                            }
                            if dict.keys.contains("status") && dict["status"] != nil {
                                self.status = dict["status"] as! Int32
                            }
                            if dict.keys.contains("url") && dict["url"] != nil {
                                self.url = dict["url"] as! String
                            }
                        }
                    }
                    public class TamEngineers : Tea.TeaModel {
                        public var creatorEmpId: String?

                        public var gmtCreate: String?

                        public var gmtModified: String?

                        public var hrStatus: String?

                        public var id: Int64?

                        public var lastName: String?

                        public var modifierEmpId: String?

                        public var name: String?

                        public var nickNameEn: String?

                        public var realmId: Int64?

                        public var workid: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.creatorEmpId != nil {
                                map["creatorEmpId"] = self.creatorEmpId!
                            }
                            if self.gmtCreate != nil {
                                map["gmtCreate"] = self.gmtCreate!
                            }
                            if self.gmtModified != nil {
                                map["gmtModified"] = self.gmtModified!
                            }
                            if self.hrStatus != nil {
                                map["hrStatus"] = self.hrStatus!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.lastName != nil {
                                map["lastName"] = self.lastName!
                            }
                            if self.modifierEmpId != nil {
                                map["modifierEmpId"] = self.modifierEmpId!
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            if self.nickNameEn != nil {
                                map["nickNameEn"] = self.nickNameEn!
                            }
                            if self.realmId != nil {
                                map["realmId"] = self.realmId!
                            }
                            if self.workid != nil {
                                map["workid"] = self.workid!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                                self.creatorEmpId = dict["creatorEmpId"] as! String
                            }
                            if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                                self.gmtCreate = dict["gmtCreate"] as! String
                            }
                            if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                                self.gmtModified = dict["gmtModified"] as! String
                            }
                            if dict.keys.contains("hrStatus") && dict["hrStatus"] != nil {
                                self.hrStatus = dict["hrStatus"] as! String
                            }
                            if dict.keys.contains("id") && dict["id"] != nil {
                                self.id = dict["id"] as! Int64
                            }
                            if dict.keys.contains("lastName") && dict["lastName"] != nil {
                                self.lastName = dict["lastName"] as! String
                            }
                            if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                                self.modifierEmpId = dict["modifierEmpId"] as! String
                            }
                            if dict.keys.contains("name") && dict["name"] != nil {
                                self.name = dict["name"] as! String
                            }
                            if dict.keys.contains("nickNameEn") && dict["nickNameEn"] != nil {
                                self.nickNameEn = dict["nickNameEn"] as! String
                            }
                            if dict.keys.contains("realmId") && dict["realmId"] != nil {
                                self.realmId = dict["realmId"] as! Int64
                            }
                            if dict.keys.contains("workid") && dict["workid"] != nil {
                                self.workid = dict["workid"] as! String
                            }
                        }
                    }
                    public var applyFileVOList: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ApplyFileVOList]?

                    public var appointmentCode: String?

                    public var appointmentEndTime: Int64?

                    public var appointmentId: String?

                    public var appointmentPassTime: Int64?

                    public var appointmentTime: Int64?

                    public var commodityDesc: String?

                    public var creatorEmpId: String?

                    public var cycleService: Bool?

                    public var extList: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ExtList]?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var mergeSolutionAndReporterOneStep: Bool?

                    public var modifierEmpId: String?

                    public var ntmCommodityCode: String?

                    public var orderDetail: Any?

                    public var orderId: Int64?

                    public var performanceNodeDTOS: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.PerformanceNodeDTOS]?

                    public var purchasePackCode: Int32?

                    public var serviceApplyId: Int64?

                    public var serviceMonthReports: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceMonthReports]?

                    public var serviceReports: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceReports]?

                    public var serviceSchemes: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceSchemes]?

                    public var status: Int32?

                    public var statusStr: String?

                    public var supportTime: [Int64]?

                    public var tamEngineers: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.TamEngineers]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.applyFileVOList != nil {
                            var tmp : [Any] = []
                            for k in self.applyFileVOList! {
                                tmp.append(k.toMap())
                            }
                            map["applyFileVOList"] = tmp
                        }
                        if self.appointmentCode != nil {
                            map["appointmentCode"] = self.appointmentCode!
                        }
                        if self.appointmentEndTime != nil {
                            map["appointmentEndTime"] = self.appointmentEndTime!
                        }
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.appointmentPassTime != nil {
                            map["appointmentPassTime"] = self.appointmentPassTime!
                        }
                        if self.appointmentTime != nil {
                            map["appointmentTime"] = self.appointmentTime!
                        }
                        if self.commodityDesc != nil {
                            map["commodityDesc"] = self.commodityDesc!
                        }
                        if self.creatorEmpId != nil {
                            map["creatorEmpId"] = self.creatorEmpId!
                        }
                        if self.cycleService != nil {
                            map["cycleService"] = self.cycleService!
                        }
                        if self.extList != nil {
                            var tmp : [Any] = []
                            for k in self.extList! {
                                tmp.append(k.toMap())
                            }
                            map["extList"] = tmp
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.mergeSolutionAndReporterOneStep != nil {
                            map["mergeSolutionAndReporterOneStep"] = self.mergeSolutionAndReporterOneStep!
                        }
                        if self.modifierEmpId != nil {
                            map["modifierEmpId"] = self.modifierEmpId!
                        }
                        if self.ntmCommodityCode != nil {
                            map["ntmCommodityCode"] = self.ntmCommodityCode!
                        }
                        if self.orderDetail != nil {
                            map["orderDetail"] = self.orderDetail!
                        }
                        if self.orderId != nil {
                            map["orderId"] = self.orderId!
                        }
                        if self.performanceNodeDTOS != nil {
                            var tmp : [Any] = []
                            for k in self.performanceNodeDTOS! {
                                tmp.append(k.toMap())
                            }
                            map["performanceNodeDTOS"] = tmp
                        }
                        if self.purchasePackCode != nil {
                            map["purchasePackCode"] = self.purchasePackCode!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.serviceMonthReports != nil {
                            var tmp : [Any] = []
                            for k in self.serviceMonthReports! {
                                tmp.append(k.toMap())
                            }
                            map["serviceMonthReports"] = tmp
                        }
                        if self.serviceReports != nil {
                            var tmp : [Any] = []
                            for k in self.serviceReports! {
                                tmp.append(k.toMap())
                            }
                            map["serviceReports"] = tmp
                        }
                        if self.serviceSchemes != nil {
                            var tmp : [Any] = []
                            for k in self.serviceSchemes! {
                                tmp.append(k.toMap())
                            }
                            map["serviceSchemes"] = tmp
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.statusStr != nil {
                            map["statusStr"] = self.statusStr!
                        }
                        if self.supportTime != nil {
                            map["supportTime"] = self.supportTime!
                        }
                        if self.tamEngineers != nil {
                            var tmp : [Any] = []
                            for k in self.tamEngineers! {
                                tmp.append(k.toMap())
                            }
                            map["tamEngineers"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("applyFileVOList") && dict["applyFileVOList"] != nil {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ApplyFileVOList] = []
                            for v in dict["applyFileVOList"] as! [Any] {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ApplyFileVOList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.applyFileVOList = tmp
                        }
                        if dict.keys.contains("appointmentCode") && dict["appointmentCode"] != nil {
                            self.appointmentCode = dict["appointmentCode"] as! String
                        }
                        if dict.keys.contains("appointmentEndTime") && dict["appointmentEndTime"] != nil {
                            self.appointmentEndTime = dict["appointmentEndTime"] as! Int64
                        }
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("appointmentPassTime") && dict["appointmentPassTime"] != nil {
                            self.appointmentPassTime = dict["appointmentPassTime"] as! Int64
                        }
                        if dict.keys.contains("appointmentTime") && dict["appointmentTime"] != nil {
                            self.appointmentTime = dict["appointmentTime"] as! Int64
                        }
                        if dict.keys.contains("commodityDesc") && dict["commodityDesc"] != nil {
                            self.commodityDesc = dict["commodityDesc"] as! String
                        }
                        if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                            self.creatorEmpId = dict["creatorEmpId"] as! String
                        }
                        if dict.keys.contains("cycleService") && dict["cycleService"] != nil {
                            self.cycleService = dict["cycleService"] as! Bool
                        }
                        if dict.keys.contains("extList") && dict["extList"] != nil {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ExtList] = []
                            for v in dict["extList"] as! [Any] {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ExtList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.extList = tmp
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("mergeSolutionAndReporterOneStep") && dict["mergeSolutionAndReporterOneStep"] != nil {
                            self.mergeSolutionAndReporterOneStep = dict["mergeSolutionAndReporterOneStep"] as! Bool
                        }
                        if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                            self.modifierEmpId = dict["modifierEmpId"] as! String
                        }
                        if dict.keys.contains("ntmCommodityCode") && dict["ntmCommodityCode"] != nil {
                            self.ntmCommodityCode = dict["ntmCommodityCode"] as! String
                        }
                        if dict.keys.contains("orderDetail") && dict["orderDetail"] != nil {
                            self.orderDetail = dict["orderDetail"] as! Any
                        }
                        if dict.keys.contains("orderId") && dict["orderId"] != nil {
                            self.orderId = dict["orderId"] as! Int64
                        }
                        if dict.keys.contains("performanceNodeDTOS") && dict["performanceNodeDTOS"] != nil {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.PerformanceNodeDTOS] = []
                            for v in dict["performanceNodeDTOS"] as! [Any] {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.PerformanceNodeDTOS()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.performanceNodeDTOS = tmp
                        }
                        if dict.keys.contains("purchasePackCode") && dict["purchasePackCode"] != nil {
                            self.purchasePackCode = dict["purchasePackCode"] as! Int32
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("serviceMonthReports") && dict["serviceMonthReports"] != nil {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceMonthReports] = []
                            for v in dict["serviceMonthReports"] as! [Any] {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceMonthReports()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.serviceMonthReports = tmp
                        }
                        if dict.keys.contains("serviceReports") && dict["serviceReports"] != nil {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceReports] = []
                            for v in dict["serviceReports"] as! [Any] {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceReports()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.serviceReports = tmp
                        }
                        if dict.keys.contains("serviceSchemes") && dict["serviceSchemes"] != nil {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceSchemes] = []
                            for v in dict["serviceSchemes"] as! [Any] {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceSchemes()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.serviceSchemes = tmp
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                            self.statusStr = dict["statusStr"] as! String
                        }
                        if dict.keys.contains("supportTime") && dict["supportTime"] != nil {
                            self.supportTime = dict["supportTime"] as! [Int64]
                        }
                        if dict.keys.contains("tamEngineers") && dict["tamEngineers"] != nil {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.TamEngineers] = []
                            for v in dict["tamEngineers"] as! [Any] {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.TamEngineers()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.tamEngineers = tmp
                        }
                    }
                }
                public class ServiceMonthReports : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ServiceReports : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ServiceSchemes : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class TamEngineers : Tea.TeaModel {
                    public var creatorEmpId: String?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var hrStatus: String?

                    public var id: Int64?

                    public var lastName: String?

                    public var modifierEmpId: String?

                    public var name: String?

                    public var nickNameEn: String?

                    public var realmId: Int64?

                    public var workid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.creatorEmpId != nil {
                            map["creatorEmpId"] = self.creatorEmpId!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.hrStatus != nil {
                            map["hrStatus"] = self.hrStatus!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.lastName != nil {
                            map["lastName"] = self.lastName!
                        }
                        if self.modifierEmpId != nil {
                            map["modifierEmpId"] = self.modifierEmpId!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.nickNameEn != nil {
                            map["nickNameEn"] = self.nickNameEn!
                        }
                        if self.realmId != nil {
                            map["realmId"] = self.realmId!
                        }
                        if self.workid != nil {
                            map["workid"] = self.workid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                            self.creatorEmpId = dict["creatorEmpId"] as! String
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("hrStatus") && dict["hrStatus"] != nil {
                            self.hrStatus = dict["hrStatus"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("lastName") && dict["lastName"] != nil {
                            self.lastName = dict["lastName"] as! String
                        }
                        if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                            self.modifierEmpId = dict["modifierEmpId"] as! String
                        }
                        if dict.keys.contains("name") && dict["name"] != nil {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("nickNameEn") && dict["nickNameEn"] != nil {
                            self.nickNameEn = dict["nickNameEn"] as! String
                        }
                        if dict.keys.contains("realmId") && dict["realmId"] != nil {
                            self.realmId = dict["realmId"] as! Int64
                        }
                        if dict.keys.contains("workid") && dict["workid"] != nil {
                            self.workid = dict["workid"] as! String
                        }
                    }
                }
                public var applyFileVOList: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ApplyFileVOList]?

                public var appointmentCode: String?

                public var appointmentEndTime: Int64?

                public var appointmentId: String?

                public var appointmentPassTime: Int64?

                public var appointmentTime: Int64?

                public var commodityDesc: String?

                public var creatorEmpId: String?

                public var cycleService: Bool?

                public var extList: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ExtList]?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var mergeSolutionAndReporterOneStep: Bool?

                public var modifierEmpId: String?

                public var ntmCommodityCode: String?

                public var orderDetail: Any?

                public var orderId: Int64?

                public var packCount: Int32?

                public var packDetails: [[String: Any]]?

                public var performanceNodeDTOS: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformanceNodeDTOS]?

                public var performancePacks: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks]?

                public var purchasePackCode: Int32?

                public var serviceApplyId: Int64?

                public var serviceMonthReports: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceMonthReports]?

                public var serviceReports: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceReports]?

                public var serviceSchemes: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceSchemes]?

                public var status: Int32?

                public var statusStr: String?

                public var supportTime: [Int64]?

                public var tamEngineers: [ListServiceApplyResponseBody.Data.List.PerformanceOrders.TamEngineers]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applyFileVOList != nil {
                        var tmp : [Any] = []
                        for k in self.applyFileVOList! {
                            tmp.append(k.toMap())
                        }
                        map["applyFileVOList"] = tmp
                    }
                    if self.appointmentCode != nil {
                        map["appointmentCode"] = self.appointmentCode!
                    }
                    if self.appointmentEndTime != nil {
                        map["appointmentEndTime"] = self.appointmentEndTime!
                    }
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.appointmentPassTime != nil {
                        map["appointmentPassTime"] = self.appointmentPassTime!
                    }
                    if self.appointmentTime != nil {
                        map["appointmentTime"] = self.appointmentTime!
                    }
                    if self.commodityDesc != nil {
                        map["commodityDesc"] = self.commodityDesc!
                    }
                    if self.creatorEmpId != nil {
                        map["creatorEmpId"] = self.creatorEmpId!
                    }
                    if self.cycleService != nil {
                        map["cycleService"] = self.cycleService!
                    }
                    if self.extList != nil {
                        var tmp : [Any] = []
                        for k in self.extList! {
                            tmp.append(k.toMap())
                        }
                        map["extList"] = tmp
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.mergeSolutionAndReporterOneStep != nil {
                        map["mergeSolutionAndReporterOneStep"] = self.mergeSolutionAndReporterOneStep!
                    }
                    if self.modifierEmpId != nil {
                        map["modifierEmpId"] = self.modifierEmpId!
                    }
                    if self.ntmCommodityCode != nil {
                        map["ntmCommodityCode"] = self.ntmCommodityCode!
                    }
                    if self.orderDetail != nil {
                        map["orderDetail"] = self.orderDetail!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    if self.packCount != nil {
                        map["packCount"] = self.packCount!
                    }
                    if self.packDetails != nil {
                        map["packDetails"] = self.packDetails!
                    }
                    if self.performanceNodeDTOS != nil {
                        var tmp : [Any] = []
                        for k in self.performanceNodeDTOS! {
                            tmp.append(k.toMap())
                        }
                        map["performanceNodeDTOS"] = tmp
                    }
                    if self.performancePacks != nil {
                        var tmp : [Any] = []
                        for k in self.performancePacks! {
                            tmp.append(k.toMap())
                        }
                        map["performancePacks"] = tmp
                    }
                    if self.purchasePackCode != nil {
                        map["purchasePackCode"] = self.purchasePackCode!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.serviceMonthReports != nil {
                        var tmp : [Any] = []
                        for k in self.serviceMonthReports! {
                            tmp.append(k.toMap())
                        }
                        map["serviceMonthReports"] = tmp
                    }
                    if self.serviceReports != nil {
                        var tmp : [Any] = []
                        for k in self.serviceReports! {
                            tmp.append(k.toMap())
                        }
                        map["serviceReports"] = tmp
                    }
                    if self.serviceSchemes != nil {
                        var tmp : [Any] = []
                        for k in self.serviceSchemes! {
                            tmp.append(k.toMap())
                        }
                        map["serviceSchemes"] = tmp
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.statusStr != nil {
                        map["statusStr"] = self.statusStr!
                    }
                    if self.supportTime != nil {
                        map["supportTime"] = self.supportTime!
                    }
                    if self.tamEngineers != nil {
                        var tmp : [Any] = []
                        for k in self.tamEngineers! {
                            tmp.append(k.toMap())
                        }
                        map["tamEngineers"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("applyFileVOList") && dict["applyFileVOList"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ApplyFileVOList] = []
                        for v in dict["applyFileVOList"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ApplyFileVOList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.applyFileVOList = tmp
                    }
                    if dict.keys.contains("appointmentCode") && dict["appointmentCode"] != nil {
                        self.appointmentCode = dict["appointmentCode"] as! String
                    }
                    if dict.keys.contains("appointmentEndTime") && dict["appointmentEndTime"] != nil {
                        self.appointmentEndTime = dict["appointmentEndTime"] as! Int64
                    }
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("appointmentPassTime") && dict["appointmentPassTime"] != nil {
                        self.appointmentPassTime = dict["appointmentPassTime"] as! Int64
                    }
                    if dict.keys.contains("appointmentTime") && dict["appointmentTime"] != nil {
                        self.appointmentTime = dict["appointmentTime"] as! Int64
                    }
                    if dict.keys.contains("commodityDesc") && dict["commodityDesc"] != nil {
                        self.commodityDesc = dict["commodityDesc"] as! String
                    }
                    if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                        self.creatorEmpId = dict["creatorEmpId"] as! String
                    }
                    if dict.keys.contains("cycleService") && dict["cycleService"] != nil {
                        self.cycleService = dict["cycleService"] as! Bool
                    }
                    if dict.keys.contains("extList") && dict["extList"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ExtList] = []
                        for v in dict["extList"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ExtList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.extList = tmp
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("mergeSolutionAndReporterOneStep") && dict["mergeSolutionAndReporterOneStep"] != nil {
                        self.mergeSolutionAndReporterOneStep = dict["mergeSolutionAndReporterOneStep"] as! Bool
                    }
                    if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                        self.modifierEmpId = dict["modifierEmpId"] as! String
                    }
                    if dict.keys.contains("ntmCommodityCode") && dict["ntmCommodityCode"] != nil {
                        self.ntmCommodityCode = dict["ntmCommodityCode"] as! String
                    }
                    if dict.keys.contains("orderDetail") && dict["orderDetail"] != nil {
                        self.orderDetail = dict["orderDetail"] as! Any
                    }
                    if dict.keys.contains("orderId") && dict["orderId"] != nil {
                        self.orderId = dict["orderId"] as! Int64
                    }
                    if dict.keys.contains("packCount") && dict["packCount"] != nil {
                        self.packCount = dict["packCount"] as! Int32
                    }
                    if dict.keys.contains("packDetails") && dict["packDetails"] != nil {
                        self.packDetails = dict["packDetails"] as! [[String: Any]]
                    }
                    if dict.keys.contains("performanceNodeDTOS") && dict["performanceNodeDTOS"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformanceNodeDTOS] = []
                        for v in dict["performanceNodeDTOS"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformanceNodeDTOS()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.performanceNodeDTOS = tmp
                    }
                    if dict.keys.contains("performancePacks") && dict["performancePacks"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks] = []
                        for v in dict["performancePacks"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.performancePacks = tmp
                    }
                    if dict.keys.contains("purchasePackCode") && dict["purchasePackCode"] != nil {
                        self.purchasePackCode = dict["purchasePackCode"] as! Int32
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("serviceMonthReports") && dict["serviceMonthReports"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceMonthReports] = []
                        for v in dict["serviceMonthReports"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceMonthReports()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceMonthReports = tmp
                    }
                    if dict.keys.contains("serviceReports") && dict["serviceReports"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceReports] = []
                        for v in dict["serviceReports"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceReports()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceReports = tmp
                    }
                    if dict.keys.contains("serviceSchemes") && dict["serviceSchemes"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceSchemes] = []
                        for v in dict["serviceSchemes"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceSchemes()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceSchemes = tmp
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                        self.statusStr = dict["statusStr"] as! String
                    }
                    if dict.keys.contains("supportTime") && dict["supportTime"] != nil {
                        self.supportTime = dict["supportTime"] as! [Int64]
                    }
                    if dict.keys.contains("tamEngineers") && dict["tamEngineers"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.TamEngineers] = []
                        for v in dict["tamEngineers"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.TamEngineers()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tamEngineers = tmp
                    }
                }
            }
            public class PerformancePacks : Tea.TeaModel {
                public class ApplyFileVOList : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ExtList : Tea.TeaModel {
                    public var keyCode: String?

                    public var name: String?

                    public var value: Any?

                    public var view: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keyCode != nil {
                            map["keyCode"] = self.keyCode!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        if self.view != nil {
                            map["view"] = self.view!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("keyCode") && dict["keyCode"] != nil {
                            self.keyCode = dict["keyCode"] as! String
                        }
                        if dict.keys.contains("name") && dict["name"] != nil {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("value") && dict["value"] != nil {
                            self.value = dict["value"] as! Any
                        }
                        if dict.keys.contains("view") && dict["view"] != nil {
                            self.view = dict["view"] as! String
                        }
                    }
                }
                public class PerformanceNodeDTOS : Tea.TeaModel {
                    public var display: Bool?

                    public var extendInfo: Any?

                    public var index: Int32?

                    public var nodeName: String?

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
                        if self.display != nil {
                            map["display"] = self.display!
                        }
                        if self.extendInfo != nil {
                            map["extendInfo"] = self.extendInfo!
                        }
                        if self.index != nil {
                            map["index"] = self.index!
                        }
                        if self.nodeName != nil {
                            map["nodeName"] = self.nodeName!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("display") && dict["display"] != nil {
                            self.display = dict["display"] as! Bool
                        }
                        if dict.keys.contains("extendInfo") && dict["extendInfo"] != nil {
                            self.extendInfo = dict["extendInfo"] as! Any
                        }
                        if dict.keys.contains("index") && dict["index"] != nil {
                            self.index = dict["index"] as! Int32
                        }
                        if dict.keys.contains("nodeName") && dict["nodeName"] != nil {
                            self.nodeName = dict["nodeName"] as! String
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                    }
                }
                public class ServiceMonthReports : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ServiceReports : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class ServiceSchemes : Tea.TeaModel {
                    public var appointmentId: String?

                    public var batchGroup: String?

                    public var customerId: String?

                    public var fileName: String?

                    public var fileType: Int32?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var id: Int64?

                    public var remarke: String?

                    public var serviceApplyId: Int64?

                    public var status: Int32?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appointmentId != nil {
                            map["appointmentId"] = self.appointmentId!
                        }
                        if self.batchGroup != nil {
                            map["batchGroup"] = self.batchGroup!
                        }
                        if self.customerId != nil {
                            map["customerId"] = self.customerId!
                        }
                        if self.fileName != nil {
                            map["fileName"] = self.fileName!
                        }
                        if self.fileType != nil {
                            map["fileType"] = self.fileType!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.remarke != nil {
                            map["remarke"] = self.remarke!
                        }
                        if self.serviceApplyId != nil {
                            map["serviceApplyId"] = self.serviceApplyId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                            self.appointmentId = dict["appointmentId"] as! String
                        }
                        if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                            self.batchGroup = dict["batchGroup"] as! String
                        }
                        if dict.keys.contains("customerId") && dict["customerId"] != nil {
                            self.customerId = dict["customerId"] as! String
                        }
                        if dict.keys.contains("fileName") && dict["fileName"] != nil {
                            self.fileName = dict["fileName"] as! String
                        }
                        if dict.keys.contains("fileType") && dict["fileType"] != nil {
                            self.fileType = dict["fileType"] as! Int32
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("remarke") && dict["remarke"] != nil {
                            self.remarke = dict["remarke"] as! String
                        }
                        if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                            self.serviceApplyId = dict["serviceApplyId"] as! Int64
                        }
                        if dict.keys.contains("status") && dict["status"] != nil {
                            self.status = dict["status"] as! Int32
                        }
                        if dict.keys.contains("url") && dict["url"] != nil {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class TamEngineers : Tea.TeaModel {
                    public var creatorEmpId: String?

                    public var gmtCreate: String?

                    public var gmtModified: String?

                    public var hrStatus: String?

                    public var id: Int64?

                    public var lastName: String?

                    public var modifierEmpId: String?

                    public var name: String?

                    public var nickNameEn: String?

                    public var realmId: Int64?

                    public var workid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.creatorEmpId != nil {
                            map["creatorEmpId"] = self.creatorEmpId!
                        }
                        if self.gmtCreate != nil {
                            map["gmtCreate"] = self.gmtCreate!
                        }
                        if self.gmtModified != nil {
                            map["gmtModified"] = self.gmtModified!
                        }
                        if self.hrStatus != nil {
                            map["hrStatus"] = self.hrStatus!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.lastName != nil {
                            map["lastName"] = self.lastName!
                        }
                        if self.modifierEmpId != nil {
                            map["modifierEmpId"] = self.modifierEmpId!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.nickNameEn != nil {
                            map["nickNameEn"] = self.nickNameEn!
                        }
                        if self.realmId != nil {
                            map["realmId"] = self.realmId!
                        }
                        if self.workid != nil {
                            map["workid"] = self.workid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                            self.creatorEmpId = dict["creatorEmpId"] as! String
                        }
                        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                            self.gmtCreate = dict["gmtCreate"] as! String
                        }
                        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                            self.gmtModified = dict["gmtModified"] as! String
                        }
                        if dict.keys.contains("hrStatus") && dict["hrStatus"] != nil {
                            self.hrStatus = dict["hrStatus"] as! String
                        }
                        if dict.keys.contains("id") && dict["id"] != nil {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("lastName") && dict["lastName"] != nil {
                            self.lastName = dict["lastName"] as! String
                        }
                        if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                            self.modifierEmpId = dict["modifierEmpId"] as! String
                        }
                        if dict.keys.contains("name") && dict["name"] != nil {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("nickNameEn") && dict["nickNameEn"] != nil {
                            self.nickNameEn = dict["nickNameEn"] as! String
                        }
                        if dict.keys.contains("realmId") && dict["realmId"] != nil {
                            self.realmId = dict["realmId"] as! Int64
                        }
                        if dict.keys.contains("workid") && dict["workid"] != nil {
                            self.workid = dict["workid"] as! String
                        }
                    }
                }
                public var applyFileVOList: [ListServiceApplyResponseBody.Data.List.PerformancePacks.ApplyFileVOList]?

                public var appointmentCode: String?

                public var appointmentEndTime: Int64?

                public var appointmentId: String?

                public var appointmentPassTime: Int64?

                public var appointmentTime: Int64?

                public var commodityDesc: String?

                public var creatorEmpId: String?

                public var cycleService: Bool?

                public var extList: [ListServiceApplyResponseBody.Data.List.PerformancePacks.ExtList]?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var mergeSolutionAndReporterOneStep: Bool?

                public var modifierEmpId: String?

                public var ntmCommodityCode: String?

                public var orderDetail: Any?

                public var orderId: Int64?

                public var performanceNodeDTOS: [ListServiceApplyResponseBody.Data.List.PerformancePacks.PerformanceNodeDTOS]?

                public var purchasePackCode: Int32?

                public var serviceApplyId: Int64?

                public var serviceMonthReports: [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceMonthReports]?

                public var serviceReports: [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceReports]?

                public var serviceSchemes: [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceSchemes]?

                public var status: Int32?

                public var statusStr: String?

                public var supportTime: [Int64]?

                public var tamEngineers: [ListServiceApplyResponseBody.Data.List.PerformancePacks.TamEngineers]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applyFileVOList != nil {
                        var tmp : [Any] = []
                        for k in self.applyFileVOList! {
                            tmp.append(k.toMap())
                        }
                        map["applyFileVOList"] = tmp
                    }
                    if self.appointmentCode != nil {
                        map["appointmentCode"] = self.appointmentCode!
                    }
                    if self.appointmentEndTime != nil {
                        map["appointmentEndTime"] = self.appointmentEndTime!
                    }
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.appointmentPassTime != nil {
                        map["appointmentPassTime"] = self.appointmentPassTime!
                    }
                    if self.appointmentTime != nil {
                        map["appointmentTime"] = self.appointmentTime!
                    }
                    if self.commodityDesc != nil {
                        map["commodityDesc"] = self.commodityDesc!
                    }
                    if self.creatorEmpId != nil {
                        map["creatorEmpId"] = self.creatorEmpId!
                    }
                    if self.cycleService != nil {
                        map["cycleService"] = self.cycleService!
                    }
                    if self.extList != nil {
                        var tmp : [Any] = []
                        for k in self.extList! {
                            tmp.append(k.toMap())
                        }
                        map["extList"] = tmp
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.mergeSolutionAndReporterOneStep != nil {
                        map["mergeSolutionAndReporterOneStep"] = self.mergeSolutionAndReporterOneStep!
                    }
                    if self.modifierEmpId != nil {
                        map["modifierEmpId"] = self.modifierEmpId!
                    }
                    if self.ntmCommodityCode != nil {
                        map["ntmCommodityCode"] = self.ntmCommodityCode!
                    }
                    if self.orderDetail != nil {
                        map["orderDetail"] = self.orderDetail!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    if self.performanceNodeDTOS != nil {
                        var tmp : [Any] = []
                        for k in self.performanceNodeDTOS! {
                            tmp.append(k.toMap())
                        }
                        map["performanceNodeDTOS"] = tmp
                    }
                    if self.purchasePackCode != nil {
                        map["purchasePackCode"] = self.purchasePackCode!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.serviceMonthReports != nil {
                        var tmp : [Any] = []
                        for k in self.serviceMonthReports! {
                            tmp.append(k.toMap())
                        }
                        map["serviceMonthReports"] = tmp
                    }
                    if self.serviceReports != nil {
                        var tmp : [Any] = []
                        for k in self.serviceReports! {
                            tmp.append(k.toMap())
                        }
                        map["serviceReports"] = tmp
                    }
                    if self.serviceSchemes != nil {
                        var tmp : [Any] = []
                        for k in self.serviceSchemes! {
                            tmp.append(k.toMap())
                        }
                        map["serviceSchemes"] = tmp
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.statusStr != nil {
                        map["statusStr"] = self.statusStr!
                    }
                    if self.supportTime != nil {
                        map["supportTime"] = self.supportTime!
                    }
                    if self.tamEngineers != nil {
                        var tmp : [Any] = []
                        for k in self.tamEngineers! {
                            tmp.append(k.toMap())
                        }
                        map["tamEngineers"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("applyFileVOList") && dict["applyFileVOList"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ApplyFileVOList] = []
                        for v in dict["applyFileVOList"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ApplyFileVOList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.applyFileVOList = tmp
                    }
                    if dict.keys.contains("appointmentCode") && dict["appointmentCode"] != nil {
                        self.appointmentCode = dict["appointmentCode"] as! String
                    }
                    if dict.keys.contains("appointmentEndTime") && dict["appointmentEndTime"] != nil {
                        self.appointmentEndTime = dict["appointmentEndTime"] as! Int64
                    }
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("appointmentPassTime") && dict["appointmentPassTime"] != nil {
                        self.appointmentPassTime = dict["appointmentPassTime"] as! Int64
                    }
                    if dict.keys.contains("appointmentTime") && dict["appointmentTime"] != nil {
                        self.appointmentTime = dict["appointmentTime"] as! Int64
                    }
                    if dict.keys.contains("commodityDesc") && dict["commodityDesc"] != nil {
                        self.commodityDesc = dict["commodityDesc"] as! String
                    }
                    if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                        self.creatorEmpId = dict["creatorEmpId"] as! String
                    }
                    if dict.keys.contains("cycleService") && dict["cycleService"] != nil {
                        self.cycleService = dict["cycleService"] as! Bool
                    }
                    if dict.keys.contains("extList") && dict["extList"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ExtList] = []
                        for v in dict["extList"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ExtList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.extList = tmp
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("mergeSolutionAndReporterOneStep") && dict["mergeSolutionAndReporterOneStep"] != nil {
                        self.mergeSolutionAndReporterOneStep = dict["mergeSolutionAndReporterOneStep"] as! Bool
                    }
                    if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                        self.modifierEmpId = dict["modifierEmpId"] as! String
                    }
                    if dict.keys.contains("ntmCommodityCode") && dict["ntmCommodityCode"] != nil {
                        self.ntmCommodityCode = dict["ntmCommodityCode"] as! String
                    }
                    if dict.keys.contains("orderDetail") && dict["orderDetail"] != nil {
                        self.orderDetail = dict["orderDetail"] as! Any
                    }
                    if dict.keys.contains("orderId") && dict["orderId"] != nil {
                        self.orderId = dict["orderId"] as! Int64
                    }
                    if dict.keys.contains("performanceNodeDTOS") && dict["performanceNodeDTOS"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.PerformanceNodeDTOS] = []
                        for v in dict["performanceNodeDTOS"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.PerformanceNodeDTOS()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.performanceNodeDTOS = tmp
                    }
                    if dict.keys.contains("purchasePackCode") && dict["purchasePackCode"] != nil {
                        self.purchasePackCode = dict["purchasePackCode"] as! Int32
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("serviceMonthReports") && dict["serviceMonthReports"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceMonthReports] = []
                        for v in dict["serviceMonthReports"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceMonthReports()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceMonthReports = tmp
                    }
                    if dict.keys.contains("serviceReports") && dict["serviceReports"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceReports] = []
                        for v in dict["serviceReports"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceReports()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceReports = tmp
                    }
                    if dict.keys.contains("serviceSchemes") && dict["serviceSchemes"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceSchemes] = []
                        for v in dict["serviceSchemes"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceSchemes()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.serviceSchemes = tmp
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                        self.statusStr = dict["statusStr"] as! String
                    }
                    if dict.keys.contains("supportTime") && dict["supportTime"] != nil {
                        self.supportTime = dict["supportTime"] as! [Int64]
                    }
                    if dict.keys.contains("tamEngineers") && dict["tamEngineers"] != nil {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.TamEngineers] = []
                        for v in dict["tamEngineers"] as! [Any] {
                            var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.TamEngineers()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tamEngineers = tmp
                    }
                }
            }
            public class ServiceReports : Tea.TeaModel {
                public var appointmentId: String?

                public var batchGroup: String?

                public var customerId: String?

                public var fileName: String?

                public var fileType: Int32?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var remarke: String?

                public var serviceApplyId: Int64?

                public var status: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appointmentId != nil {
                        map["appointmentId"] = self.appointmentId!
                    }
                    if self.batchGroup != nil {
                        map["batchGroup"] = self.batchGroup!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileType != nil {
                        map["fileType"] = self.fileType!
                    }
                    if self.gmtCreate != nil {
                        map["gmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["gmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.remarke != nil {
                        map["remarke"] = self.remarke!
                    }
                    if self.serviceApplyId != nil {
                        map["serviceApplyId"] = self.serviceApplyId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("appointmentId") && dict["appointmentId"] != nil {
                        self.appointmentId = dict["appointmentId"] as! String
                    }
                    if dict.keys.contains("batchGroup") && dict["batchGroup"] != nil {
                        self.batchGroup = dict["batchGroup"] as! String
                    }
                    if dict.keys.contains("customerId") && dict["customerId"] != nil {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("fileName") && dict["fileName"] != nil {
                        self.fileName = dict["fileName"] as! String
                    }
                    if dict.keys.contains("fileType") && dict["fileType"] != nil {
                        self.fileType = dict["fileType"] as! Int32
                    }
                    if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                        self.gmtCreate = dict["gmtCreate"] as! String
                    }
                    if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                        self.gmtModified = dict["gmtModified"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("remarke") && dict["remarke"] != nil {
                        self.remarke = dict["remarke"] as! String
                    }
                    if dict.keys.contains("serviceApplyId") && dict["serviceApplyId"] != nil {
                        self.serviceApplyId = dict["serviceApplyId"] as! Int64
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! Int32
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public var applierId: String?

            public var applyCode: String?

            public var applyComponentDetails: [[String]]?

            public var applyTime: Int64?

            public var appointments: [ListServiceApplyResponseBody.Data.List.Appointments]?

            public var buyUrl: String?

            public var creatorEmpId: String?

            public var customerName: String?

            public var cycleService: Bool?

            public var executedCount: Int64?

            public var finishCount: Int64?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var mergeSolutionAndReporterOneStep: Bool?

            public var modifierEmpId: String?

            public var packDetails: [[String: Any]]?

            public var payOrders: [ListServiceApplyResponseBody.Data.List.PayOrders]?

            public var payUrl: String?

            public var performanceOrders: [ListServiceApplyResponseBody.Data.List.PerformanceOrders]?

            public var performancePacks: [ListServiceApplyResponseBody.Data.List.PerformancePacks]?

            public var reneWalUrl: String?

            public var serviceCode: String?

            public var serviceName: String?

            public var serviceReports: [ListServiceApplyResponseBody.Data.List.ServiceReports]?

            public var serviceTimeRange: [Int64]?

            public var status: String?

            public var statusCode: Int32?

            public var statusStr: String?

            public var termOfValidity: String?

            public var totalPack: Int32?

            public var type: String?

            public var usePack: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applierId != nil {
                    map["applierId"] = self.applierId!
                }
                if self.applyCode != nil {
                    map["applyCode"] = self.applyCode!
                }
                if self.applyComponentDetails != nil {
                    map["applyComponentDetails"] = self.applyComponentDetails!
                }
                if self.applyTime != nil {
                    map["applyTime"] = self.applyTime!
                }
                if self.appointments != nil {
                    var tmp : [Any] = []
                    for k in self.appointments! {
                        tmp.append(k.toMap())
                    }
                    map["appointments"] = tmp
                }
                if self.buyUrl != nil {
                    map["buyUrl"] = self.buyUrl!
                }
                if self.creatorEmpId != nil {
                    map["creatorEmpId"] = self.creatorEmpId!
                }
                if self.customerName != nil {
                    map["customerName"] = self.customerName!
                }
                if self.cycleService != nil {
                    map["cycleService"] = self.cycleService!
                }
                if self.executedCount != nil {
                    map["executedCount"] = self.executedCount!
                }
                if self.finishCount != nil {
                    map["finishCount"] = self.finishCount!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.mergeSolutionAndReporterOneStep != nil {
                    map["mergeSolutionAndReporterOneStep"] = self.mergeSolutionAndReporterOneStep!
                }
                if self.modifierEmpId != nil {
                    map["modifierEmpId"] = self.modifierEmpId!
                }
                if self.packDetails != nil {
                    map["packDetails"] = self.packDetails!
                }
                if self.payOrders != nil {
                    var tmp : [Any] = []
                    for k in self.payOrders! {
                        tmp.append(k.toMap())
                    }
                    map["payOrders"] = tmp
                }
                if self.payUrl != nil {
                    map["payUrl"] = self.payUrl!
                }
                if self.performanceOrders != nil {
                    var tmp : [Any] = []
                    for k in self.performanceOrders! {
                        tmp.append(k.toMap())
                    }
                    map["performanceOrders"] = tmp
                }
                if self.performancePacks != nil {
                    var tmp : [Any] = []
                    for k in self.performancePacks! {
                        tmp.append(k.toMap())
                    }
                    map["performancePacks"] = tmp
                }
                if self.reneWalUrl != nil {
                    map["reneWalUrl"] = self.reneWalUrl!
                }
                if self.serviceCode != nil {
                    map["serviceCode"] = self.serviceCode!
                }
                if self.serviceName != nil {
                    map["serviceName"] = self.serviceName!
                }
                if self.serviceReports != nil {
                    var tmp : [Any] = []
                    for k in self.serviceReports! {
                        tmp.append(k.toMap())
                    }
                    map["serviceReports"] = tmp
                }
                if self.serviceTimeRange != nil {
                    map["serviceTimeRange"] = self.serviceTimeRange!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.statusCode != nil {
                    map["statusCode"] = self.statusCode!
                }
                if self.statusStr != nil {
                    map["statusStr"] = self.statusStr!
                }
                if self.termOfValidity != nil {
                    map["termOfValidity"] = self.termOfValidity!
                }
                if self.totalPack != nil {
                    map["totalPack"] = self.totalPack!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.usePack != nil {
                    map["usePack"] = self.usePack!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("applierId") && dict["applierId"] != nil {
                    self.applierId = dict["applierId"] as! String
                }
                if dict.keys.contains("applyCode") && dict["applyCode"] != nil {
                    self.applyCode = dict["applyCode"] as! String
                }
                if dict.keys.contains("applyComponentDetails") && dict["applyComponentDetails"] != nil {
                    self.applyComponentDetails = dict["applyComponentDetails"] as! [[String]]
                }
                if dict.keys.contains("applyTime") && dict["applyTime"] != nil {
                    self.applyTime = dict["applyTime"] as! Int64
                }
                if dict.keys.contains("appointments") && dict["appointments"] != nil {
                    var tmp : [ListServiceApplyResponseBody.Data.List.Appointments] = []
                    for v in dict["appointments"] as! [Any] {
                        var model = ListServiceApplyResponseBody.Data.List.Appointments()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.appointments = tmp
                }
                if dict.keys.contains("buyUrl") && dict["buyUrl"] != nil {
                    self.buyUrl = dict["buyUrl"] as! String
                }
                if dict.keys.contains("creatorEmpId") && dict["creatorEmpId"] != nil {
                    self.creatorEmpId = dict["creatorEmpId"] as! String
                }
                if dict.keys.contains("customerName") && dict["customerName"] != nil {
                    self.customerName = dict["customerName"] as! String
                }
                if dict.keys.contains("cycleService") && dict["cycleService"] != nil {
                    self.cycleService = dict["cycleService"] as! Bool
                }
                if dict.keys.contains("executedCount") && dict["executedCount"] != nil {
                    self.executedCount = dict["executedCount"] as! Int64
                }
                if dict.keys.contains("finishCount") && dict["finishCount"] != nil {
                    self.finishCount = dict["finishCount"] as! Int64
                }
                if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("mergeSolutionAndReporterOneStep") && dict["mergeSolutionAndReporterOneStep"] != nil {
                    self.mergeSolutionAndReporterOneStep = dict["mergeSolutionAndReporterOneStep"] as! Bool
                }
                if dict.keys.contains("modifierEmpId") && dict["modifierEmpId"] != nil {
                    self.modifierEmpId = dict["modifierEmpId"] as! String
                }
                if dict.keys.contains("packDetails") && dict["packDetails"] != nil {
                    self.packDetails = dict["packDetails"] as! [[String: Any]]
                }
                if dict.keys.contains("payOrders") && dict["payOrders"] != nil {
                    var tmp : [ListServiceApplyResponseBody.Data.List.PayOrders] = []
                    for v in dict["payOrders"] as! [Any] {
                        var model = ListServiceApplyResponseBody.Data.List.PayOrders()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.payOrders = tmp
                }
                if dict.keys.contains("payUrl") && dict["payUrl"] != nil {
                    self.payUrl = dict["payUrl"] as! String
                }
                if dict.keys.contains("performanceOrders") && dict["performanceOrders"] != nil {
                    var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders] = []
                    for v in dict["performanceOrders"] as! [Any] {
                        var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.performanceOrders = tmp
                }
                if dict.keys.contains("performancePacks") && dict["performancePacks"] != nil {
                    var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks] = []
                    for v in dict["performancePacks"] as! [Any] {
                        var model = ListServiceApplyResponseBody.Data.List.PerformancePacks()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.performancePacks = tmp
                }
                if dict.keys.contains("reneWalUrl") && dict["reneWalUrl"] != nil {
                    self.reneWalUrl = dict["reneWalUrl"] as! String
                }
                if dict.keys.contains("serviceCode") && dict["serviceCode"] != nil {
                    self.serviceCode = dict["serviceCode"] as! String
                }
                if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
                    self.serviceName = dict["serviceName"] as! String
                }
                if dict.keys.contains("serviceReports") && dict["serviceReports"] != nil {
                    var tmp : [ListServiceApplyResponseBody.Data.List.ServiceReports] = []
                    for v in dict["serviceReports"] as! [Any] {
                        var model = ListServiceApplyResponseBody.Data.List.ServiceReports()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceReports = tmp
                }
                if dict.keys.contains("serviceTimeRange") && dict["serviceTimeRange"] != nil {
                    self.serviceTimeRange = dict["serviceTimeRange"] as! [Int64]
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
                    self.statusCode = dict["statusCode"] as! Int32
                }
                if dict.keys.contains("statusStr") && dict["statusStr"] != nil {
                    self.statusStr = dict["statusStr"] as! String
                }
                if dict.keys.contains("termOfValidity") && dict["termOfValidity"] != nil {
                    self.termOfValidity = dict["termOfValidity"] as! String
                }
                if dict.keys.contains("totalPack") && dict["totalPack"] != nil {
                    self.totalPack = dict["totalPack"] as! Int32
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("usePack") && dict["usePack"] != nil {
                    self.usePack = dict["usePack"] as! Int64
                }
            }
        }
        public var extend: Any?

        public var list: [ListServiceApplyResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

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
            if self.extend != nil {
                map["extend"] = self.extend!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("extend") && dict["extend"] != nil {
                self.extend = dict["extend"] as! Any
            }
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListServiceApplyResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListServiceApplyResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListServiceApplyResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListServiceApplyResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListServiceApplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceApplyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListServiceApplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListYunQiTaskByUidRequest : Tea.TeaModel {
    public var createTimeEnd: Int64?

    public var createTimeStart: Int64?

    public var freeOrderApplyCodes: [String]?

    public var freeOrderApplyIds: [Int64]?

    public var orderIds: [Int64]?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeEnd != nil {
            map["createTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["createTimeStart"] = self.createTimeStart!
        }
        if self.freeOrderApplyCodes != nil {
            map["freeOrderApplyCodes"] = self.freeOrderApplyCodes!
        }
        if self.freeOrderApplyIds != nil {
            map["freeOrderApplyIds"] = self.freeOrderApplyIds!
        }
        if self.orderIds != nil {
            map["orderIds"] = self.orderIds!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.statusList != nil {
            map["statusList"] = self.statusList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createTimeEnd") && dict["createTimeEnd"] != nil {
            self.createTimeEnd = dict["createTimeEnd"] as! Int64
        }
        if dict.keys.contains("createTimeStart") && dict["createTimeStart"] != nil {
            self.createTimeStart = dict["createTimeStart"] as! Int64
        }
        if dict.keys.contains("freeOrderApplyCodes") && dict["freeOrderApplyCodes"] != nil {
            self.freeOrderApplyCodes = dict["freeOrderApplyCodes"] as! [String]
        }
        if dict.keys.contains("freeOrderApplyIds") && dict["freeOrderApplyIds"] != nil {
            self.freeOrderApplyIds = dict["freeOrderApplyIds"] as! [Int64]
        }
        if dict.keys.contains("orderIds") && dict["orderIds"] != nil {
            self.orderIds = dict["orderIds"] as! [Int64]
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("statusList") && dict["statusList"] != nil {
            self.statusList = dict["statusList"] as! [String]
        }
    }
}

public class ListYunQiTaskByUidResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var chatId: String?

            public var createTime: Int64?

            public var creatorName: String?

            public var endTime: Int64?

            public var evaluationStar: Int32?

            public var important: String?

            public var mainDingDepartmentId: String?

            public var mainDingGroupId: String?

            public var mainDingGroupName: String?

            public var productName: String?

            public var recordId: String?

            public var status: String?

            public var subDingDepartmentId: String?

            public var subDingGroupId: String?

            public var subDingGroupName: String?

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
                if self.chatId != nil {
                    map["chatId"] = self.chatId!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorName != nil {
                    map["creatorName"] = self.creatorName!
                }
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.evaluationStar != nil {
                    map["evaluationStar"] = self.evaluationStar!
                }
                if self.important != nil {
                    map["important"] = self.important!
                }
                if self.mainDingDepartmentId != nil {
                    map["mainDingDepartmentId"] = self.mainDingDepartmentId!
                }
                if self.mainDingGroupId != nil {
                    map["mainDingGroupId"] = self.mainDingGroupId!
                }
                if self.mainDingGroupName != nil {
                    map["mainDingGroupName"] = self.mainDingGroupName!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.recordId != nil {
                    map["recordId"] = self.recordId!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subDingDepartmentId != nil {
                    map["subDingDepartmentId"] = self.subDingDepartmentId!
                }
                if self.subDingGroupId != nil {
                    map["subDingGroupId"] = self.subDingGroupId!
                }
                if self.subDingGroupName != nil {
                    map["subDingGroupName"] = self.subDingGroupName!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chatId") && dict["chatId"] != nil {
                    self.chatId = dict["chatId"] as! String
                }
                if dict.keys.contains("createTime") && dict["createTime"] != nil {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorName") && dict["creatorName"] != nil {
                    self.creatorName = dict["creatorName"] as! String
                }
                if dict.keys.contains("endTime") && dict["endTime"] != nil {
                    self.endTime = dict["endTime"] as! Int64
                }
                if dict.keys.contains("evaluationStar") && dict["evaluationStar"] != nil {
                    self.evaluationStar = dict["evaluationStar"] as! Int32
                }
                if dict.keys.contains("important") && dict["important"] != nil {
                    self.important = dict["important"] as! String
                }
                if dict.keys.contains("mainDingDepartmentId") && dict["mainDingDepartmentId"] != nil {
                    self.mainDingDepartmentId = dict["mainDingDepartmentId"] as! String
                }
                if dict.keys.contains("mainDingGroupId") && dict["mainDingGroupId"] != nil {
                    self.mainDingGroupId = dict["mainDingGroupId"] as! String
                }
                if dict.keys.contains("mainDingGroupName") && dict["mainDingGroupName"] != nil {
                    self.mainDingGroupName = dict["mainDingGroupName"] as! String
                }
                if dict.keys.contains("productName") && dict["productName"] != nil {
                    self.productName = dict["productName"] as! String
                }
                if dict.keys.contains("recordId") && dict["recordId"] != nil {
                    self.recordId = dict["recordId"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("subDingDepartmentId") && dict["subDingDepartmentId"] != nil {
                    self.subDingDepartmentId = dict["subDingDepartmentId"] as! String
                }
                if dict.keys.contains("subDingGroupId") && dict["subDingGroupId"] != nil {
                    self.subDingGroupId = dict["subDingGroupId"] as! String
                }
                if dict.keys.contains("subDingGroupName") && dict["subDingGroupName"] != nil {
                    self.subDingGroupName = dict["subDingGroupName"] as! String
                }
                if dict.keys.contains("title") && dict["title"] != nil {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var extend: Any?

        public var list: [ListYunQiTaskByUidResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

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
            if self.extend != nil {
                map["extend"] = self.extend!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("extend") && dict["extend"] != nil {
                self.extend = dict["extend"] as! Any
            }
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListYunQiTaskByUidResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListYunQiTaskByUidResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListYunQiTaskByUidResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListYunQiTaskByUidResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListYunQiTaskByUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListYunQiTaskByUidResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListYunQiTaskByUidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MarkFileReadedRequest : Tea.TeaModel {
    public var applyCode: String?

    public var fileId: Int64?

    public var orderId: String?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyCode != nil {
            map["applyCode"] = self.applyCode!
        }
        if self.fileId != nil {
            map["fileId"] = self.fileId!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applyCode") && dict["applyCode"] != nil {
            self.applyCode = dict["applyCode"] as! String
        }
        if dict.keys.contains("fileId") && dict["fileId"] != nil {
            self.fileId = dict["fileId"] as! Int64
        }
        if dict.keys.contains("orderId") && dict["orderId"] != nil {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("scene") && dict["scene"] != nil {
            self.scene = dict["scene"] as! String
        }
    }
}

public class MarkFileReadedResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("httpStatusCode") && dict["httpStatusCode"] != nil {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class MarkFileReadedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MarkFileReadedResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = MarkFileReadedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
