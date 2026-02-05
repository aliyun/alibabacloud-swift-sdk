import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListEnterpriseSupportPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Docs : Tea.TeaModel {
            public class Attachments : Tea.TeaModel {
                public var docId: Int64?

                public var evaluated: Bool?

                public var evaluationUrl: String?

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
                    if self.evaluated != nil {
                        map["evaluated"] = self.evaluated!
                    }
                    if self.evaluationUrl != nil {
                        map["evaluationUrl"] = self.evaluationUrl!
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["docId"] as? Int64 {
                        self.docId = value
                    }
                    if let value = dict["evaluated"] as? Bool {
                        self.evaluated = value
                    }
                    if let value = dict["evaluationUrl"] as? String {
                        self.evaluationUrl = value
                    }
                    if let value = dict["fileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["freeOrderApplyCode"] as? String {
                        self.freeOrderApplyCode = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["orderId"] as? String {
                        self.orderId = value
                    }
                    if let value = dict["uploadTime"] as? String {
                        self.uploadTime = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                }
            }
            public var attachments: [ListEnterpriseSupportPlanResponseBody.Data.Docs.Attachments]?

            public var docId: Int64?

            public var evaluated: Bool?

            public var evaluationUrl: String?

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
                if self.attachments != nil {
                    var tmp : [Any] = []
                    for k in self.attachments! {
                        tmp.append(k.toMap())
                    }
                    map["attachments"] = tmp
                }
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.evaluated != nil {
                    map["evaluated"] = self.evaluated!
                }
                if self.evaluationUrl != nil {
                    map["evaluationUrl"] = self.evaluationUrl!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["attachments"] as? [Any?] {
                    var tmp : [ListEnterpriseSupportPlanResponseBody.Data.Docs.Attachments] = []
                    for v in value {
                        if v != nil {
                            var model = ListEnterpriseSupportPlanResponseBody.Data.Docs.Attachments()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.attachments = tmp
                }
                if let value = dict["docId"] as? Int64 {
                    self.docId = value
                }
                if let value = dict["evaluated"] as? Bool {
                    self.evaluated = value
                }
                if let value = dict["evaluationUrl"] as? String {
                    self.evaluationUrl = value
                }
                if let value = dict["fileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["freeOrderApplyCode"] as? String {
                    self.freeOrderApplyCode = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["orderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["uploadTime"] as? String {
                    self.uploadTime = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public class Nodes : Tea.TeaModel {
            public class DocNode : Tea.TeaModel {
                public var attachments: [Any]?

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
                    if self.attachments != nil {
                        map["attachments"] = self.attachments!
                    }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["attachments"] as? [Any] {
                        self.attachments = value
                    }
                    if let value = dict["docId"] as? Int64 {
                        self.docId = value
                    }
                    if let value = dict["docName"] as? String {
                        self.docName = value
                    }
                    if let value = dict["docSubmitTime"] as? String {
                        self.docSubmitTime = value
                    }
                    if let value = dict["fileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["freeOrderApplyCode"] as? String {
                        self.freeOrderApplyCode = value
                    }
                    if let value = dict["orderId"] as? String {
                        self.orderId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["finishTime"] as? String {
                        self.finishTime = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["auditTime"] as? String {
                        self.auditTime = value
                    }
                    if let value = dict["status"] as? String {
                        self.status = value
                    }
                    if let value = dict["statusName"] as? String {
                        self.statusName = value
                    }
                }
            }
            public class FreeOrderNode : Tea.TeaModel {
                public var applyTime: String?

                public var uid: String?

                public override init() {
                    super.init()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["applyTime"] as? String {
                        self.applyTime = value
                    }
                    if let value = dict["uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public class OrderNode : Tea.TeaModel {
                public var payTime: String?

                public var uid: String?

                public override init() {
                    super.init()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["payTime"] as? String {
                        self.payTime = value
                    }
                    if let value = dict["uid"] as? String {
                        self.uid = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["endTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["startTime"] as? String {
                        self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.DocNode()
                    model.fromMap(value)
                    self.docNode = model
                }
                if let value = dict["finishNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.FinishNode()
                    model.fromMap(value)
                    self.finishNode = model
                }
                if let value = dict["freeOrderAuditNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.FreeOrderAuditNode()
                    model.fromMap(value)
                    self.freeOrderAuditNode = model
                }
                if let value = dict["freeOrderNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.FreeOrderNode()
                    model.fromMap(value)
                    self.freeOrderNode = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["orderDate"] as? Int64 {
                    self.orderDate = value
                }
                if let value = dict["orderNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.OrderNode()
                    model.fromMap(value)
                    self.orderNode = model
                }
                if let value = dict["serviceImplementation"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes.ServiceImplementation()
                    model.fromMap(value)
                    self.serviceImplementation = model
                }
                if let value = dict["status"] as? Int32 {
                    self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["canClick"] as? Bool {
                    self.canClick = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var extendInfos: [String]?

            public var show: Bool?

            public var tagCode: String?

            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extendInfos != nil {
                    map["extendInfos"] = self.extendInfos!
                }
                if self.show != nil {
                    map["show"] = self.show!
                }
                if self.tagCode != nil {
                    map["tagCode"] = self.tagCode!
                }
                if self.tagName != nil {
                    map["tagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["extendInfos"] as? [String] {
                    self.extendInfos = value
                }
                if let value = dict["show"] as? Bool {
                    self.show = value
                }
                if let value = dict["tagCode"] as? String {
                    self.tagCode = value
                }
                if let value = dict["tagName"] as? String {
                    self.tagName = value
                }
            }
        }
        public var canApplyFreeOrder: Bool?

        public var customerId: String?

        public var docs: [ListEnterpriseSupportPlanResponseBody.Data.Docs]?

        public var endTime: String?

        public var firstPayTime: String?

        public var freeOrderApplyCode: String?

        public var freeOrderApplyId: Int64?

        public var freeOrderApplyTime: String?

        public var freeOrderApprovedTime: String?

        public var freeOrderExpectStartTime: String?

        public var gtspProjectId: Int64?

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

        public var tags: [ListEnterpriseSupportPlanResponseBody.Data.Tags]?

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
            if self.gtspProjectId != nil {
                map["gtspProjectId"] = self.gtspProjectId!
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskNum != nil {
                map["taskNum"] = self.taskNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["canApplyFreeOrder"] as? Bool {
                self.canApplyFreeOrder = value
            }
            if let value = dict["customerId"] as? String {
                self.customerId = value
            }
            if let value = dict["docs"] as? [Any?] {
                var tmp : [ListEnterpriseSupportPlanResponseBody.Data.Docs] = []
                for v in value {
                    if v != nil {
                        var model = ListEnterpriseSupportPlanResponseBody.Data.Docs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.docs = tmp
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["firstPayTime"] as? String {
                self.firstPayTime = value
            }
            if let value = dict["freeOrderApplyCode"] as? String {
                self.freeOrderApplyCode = value
            }
            if let value = dict["freeOrderApplyId"] as? Int64 {
                self.freeOrderApplyId = value
            }
            if let value = dict["freeOrderApplyTime"] as? String {
                self.freeOrderApplyTime = value
            }
            if let value = dict["freeOrderApprovedTime"] as? String {
                self.freeOrderApprovedTime = value
            }
            if let value = dict["freeOrderExpectStartTime"] as? String {
                self.freeOrderExpectStartTime = value
            }
            if let value = dict["gtspProjectId"] as? Int64 {
                self.gtspProjectId = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["nodes"] as? [Any?] {
                var tmp : [ListEnterpriseSupportPlanResponseBody.Data.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = ListEnterpriseSupportPlanResponseBody.Data.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
            if let value = dict["operateInfos"] as? [Any?] {
                var tmp : [ListEnterpriseSupportPlanResponseBody.Data.OperateInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListEnterpriseSupportPlanResponseBody.Data.OperateInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.operateInfos = tmp
            }
            if let value = dict["orderIds"] as? [Int64] {
                self.orderIds = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["serviceStatus"] as? String {
                self.serviceStatus = value
            }
            if let value = dict["serviceStatusName"] as? String {
                self.serviceStatusName = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["sortTime"] as? String {
                self.sortTime = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListEnterpriseSupportPlanResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListEnterpriseSupportPlanResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["taskNum"] as? Int64 {
                self.taskNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListEnterpriseSupportPlanResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListEnterpriseSupportPlanResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEnterpriseSupportPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docId"] as? Int64 {
                    self.docId = value
                }
                if let value = dict["fileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["freeOrderApplyCode"] as? String {
                    self.freeOrderApplyCode = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["orderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["uploadTime"] as? String {
                    self.uploadTime = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["docId"] as? Int64 {
                        self.docId = value
                    }
                    if let value = dict["docName"] as? String {
                        self.docName = value
                    }
                    if let value = dict["docSubmitTime"] as? String {
                        self.docSubmitTime = value
                    }
                    if let value = dict["fileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["freeOrderApplyCode"] as? String {
                        self.freeOrderApplyCode = value
                    }
                    if let value = dict["orderId"] as? String {
                        self.orderId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["finishTime"] as? String {
                        self.finishTime = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["auditTime"] as? String {
                        self.auditTime = value
                    }
                    if let value = dict["status"] as? String {
                        self.status = value
                    }
                    if let value = dict["statusName"] as? String {
                        self.statusName = value
                    }
                }
            }
            public class FreeOrderNode : Tea.TeaModel {
                public var applyTime: String?

                public var uid: String?

                public override init() {
                    super.init()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["applyTime"] as? String {
                        self.applyTime = value
                    }
                    if let value = dict["uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public class OrderNode : Tea.TeaModel {
                public var payTime: String?

                public var uid: String?

                public override init() {
                    super.init()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["payTime"] as? String {
                        self.payTime = value
                    }
                    if let value = dict["uid"] as? String {
                        self.uid = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["endTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["startTime"] as? String {
                        self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.DocNode()
                    model.fromMap(value)
                    self.docNode = model
                }
                if let value = dict["finishNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FinishNode()
                    model.fromMap(value)
                    self.finishNode = model
                }
                if let value = dict["freeOrderAuditNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FreeOrderAuditNode()
                    model.fromMap(value)
                    self.freeOrderAuditNode = model
                }
                if let value = dict["freeOrderNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.FreeOrderNode()
                    model.fromMap(value)
                    self.freeOrderNode = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["orderDate"] as? Int64 {
                    self.orderDate = value
                }
                if let value = dict["orderNode"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.OrderNode()
                    model.fromMap(value)
                    self.orderNode = model
                }
                if let value = dict["serviceImplementation"] as? [String: Any?] {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes.ServiceImplementation()
                    model.fromMap(value)
                    self.serviceImplementation = model
                }
                if let value = dict["status"] as? Int32 {
                    self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["canClick"] as? Bool {
                    self.canClick = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var canApplyFreeOrder: Bool?

        public var customerId: String?

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

        public var operateInfos: [ListEnterpriseSupportPlanSimpleResponseBody.Data.OperateInfos]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["canApplyFreeOrder"] as? Bool {
                self.canApplyFreeOrder = value
            }
            if let value = dict["customerId"] as? String {
                self.customerId = value
            }
            if let value = dict["docs"] as? [Any?] {
                var tmp : [ListEnterpriseSupportPlanSimpleResponseBody.Data.Docs] = []
                for v in value {
                    if v != nil {
                        var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Docs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.docs = tmp
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["firstPayTime"] as? String {
                self.firstPayTime = value
            }
            if let value = dict["freeOrderApplyCode"] as? String {
                self.freeOrderApplyCode = value
            }
            if let value = dict["freeOrderApplyId"] as? Int64 {
                self.freeOrderApplyId = value
            }
            if let value = dict["freeOrderApplyTime"] as? String {
                self.freeOrderApplyTime = value
            }
            if let value = dict["freeOrderApprovedTime"] as? String {
                self.freeOrderApprovedTime = value
            }
            if let value = dict["freeOrderExpectStartTime"] as? String {
                self.freeOrderExpectStartTime = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["nodes"] as? [Any?] {
                var tmp : [ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
            if let value = dict["operateInfos"] as? [Any?] {
                var tmp : [ListEnterpriseSupportPlanSimpleResponseBody.Data.OperateInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListEnterpriseSupportPlanSimpleResponseBody.Data.OperateInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.operateInfos = tmp
            }
            if let value = dict["orderIds"] as? [Int64] {
                self.orderIds = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["serviceStatus"] as? String {
                self.serviceStatus = value
            }
            if let value = dict["serviceStatusName"] as? String {
                self.serviceStatusName = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["sortTime"] as? String {
                self.sortTime = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["taskNum"] as? Int64 {
                self.taskNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListEnterpriseSupportPlanSimpleResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListEnterpriseSupportPlanSimpleResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEnterpriseSupportPlanSimpleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applyType"] as? [String] {
            self.applyType = value
        }
        if let value = dict["endDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["productCode"] as? Int32 {
            self.productCode = value
        }
        if let value = dict["startDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["huhangId"] as? Int64 {
                        self.huhangId = value
                    }
                    if let value = dict["purchaseCode"] as? Int32 {
                        self.purchaseCode = value
                    }
                    if let value = dict["purchaseDesc"] as? String {
                        self.purchaseDesc = value
                    }
                    if let value = dict["supportDays"] as? Int32 {
                        self.supportDays = value
                    }
                    if let value = dict["travelDays"] as? Int32 {
                        self.travelDays = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["amount"] as? String {
                        self.amount = value
                    }
                    if let value = dict["compassCommodityCode"] as? String {
                        self.compassCommodityCode = value
                    }
                    if let value = dict["compassCommodityName"] as? String {
                        self.compassCommodityName = value
                    }
                    if let value = dict["creatorEmpId"] as? String {
                        self.creatorEmpId = value
                    }
                    if let value = dict["gmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["gmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["modifierEmpId"] as? String {
                        self.modifierEmpId = value
                    }
                    if let value = dict["operate"] as? [String: Any] {
                        self.operate = value
                    }
                    if let value = dict["orderDetail"] as? Any {
                        self.orderDetail = value
                    }
                    if let value = dict["orderId"] as? Int64 {
                        self.orderId = value
                    }
                    if let value = dict["originalPrice"] as? Double {
                        self.originalPrice = value
                    }
                    if let value = dict["payAmount"] as? Double {
                        self.payAmount = value
                    }
                    if let value = dict["payTime"] as? String {
                        self.payTime = value
                    }
                    if let value = dict["productName"] as? String {
                        self.productName = value
                    }
                    if let value = dict["reneWalUrl"] as? String {
                        self.reneWalUrl = value
                    }
                    if let value = dict["serviceContentMap"] as? [String: Any] {
                        self.serviceContentMap = value
                    }
                    if let value = dict["status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["statusStr"] as? String {
                        self.statusStr = value
                    }
                    if let value = dict["supportDays"] as? Int32 {
                        self.supportDays = value
                    }
                    if let value = dict["uid"] as? String {
                        self.uid = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["batchGroup"] as? String {
                            self.batchGroup = value
                        }
                        if let value = dict["customerId"] as? String {
                            self.customerId = value
                        }
                        if let value = dict["fileName"] as? String {
                            self.fileName = value
                        }
                        if let value = dict["fileType"] as? Int32 {
                            self.fileType = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["remarke"] as? String {
                            self.remarke = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["keyCode"] as? String {
                            self.keyCode = value
                        }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["value"] as? Any {
                            self.value = value
                        }
                        if let value = dict["view"] as? String {
                            self.view = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["display"] as? Bool {
                            self.display = value
                        }
                        if let value = dict["extendInfo"] as? Any {
                            self.extendInfo = value
                        }
                        if let value = dict["index"] as? Int32 {
                            self.index = value
                        }
                        if let value = dict["nodeName"] as? String {
                            self.nodeName = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["appointmentId"] as? String {
                                self.appointmentId = value
                            }
                            if let value = dict["batchGroup"] as? String {
                                self.batchGroup = value
                            }
                            if let value = dict["customerId"] as? String {
                                self.customerId = value
                            }
                            if let value = dict["fileName"] as? String {
                                self.fileName = value
                            }
                            if let value = dict["fileType"] as? Int32 {
                                self.fileType = value
                            }
                            if let value = dict["gmtCreate"] as? String {
                                self.gmtCreate = value
                            }
                            if let value = dict["gmtModified"] as? String {
                                self.gmtModified = value
                            }
                            if let value = dict["id"] as? Int64 {
                                self.id = value
                            }
                            if let value = dict["remarke"] as? String {
                                self.remarke = value
                            }
                            if let value = dict["serviceApplyId"] as? Int64 {
                                self.serviceApplyId = value
                            }
                            if let value = dict["status"] as? Int32 {
                                self.status = value
                            }
                            if let value = dict["url"] as? String {
                                self.url = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["keyCode"] as? String {
                                self.keyCode = value
                            }
                            if let value = dict["name"] as? String {
                                self.name = value
                            }
                            if let value = dict["value"] as? Any {
                                self.value = value
                            }
                            if let value = dict["view"] as? String {
                                self.view = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["display"] as? Bool {
                                self.display = value
                            }
                            if let value = dict["extendInfo"] as? Any {
                                self.extendInfo = value
                            }
                            if let value = dict["index"] as? Int32 {
                                self.index = value
                            }
                            if let value = dict["nodeName"] as? String {
                                self.nodeName = value
                            }
                            if let value = dict["status"] as? Int32 {
                                self.status = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["appointmentId"] as? String {
                                self.appointmentId = value
                            }
                            if let value = dict["batchGroup"] as? String {
                                self.batchGroup = value
                            }
                            if let value = dict["customerId"] as? String {
                                self.customerId = value
                            }
                            if let value = dict["fileName"] as? String {
                                self.fileName = value
                            }
                            if let value = dict["fileType"] as? Int32 {
                                self.fileType = value
                            }
                            if let value = dict["gmtCreate"] as? String {
                                self.gmtCreate = value
                            }
                            if let value = dict["gmtModified"] as? String {
                                self.gmtModified = value
                            }
                            if let value = dict["id"] as? Int64 {
                                self.id = value
                            }
                            if let value = dict["remarke"] as? String {
                                self.remarke = value
                            }
                            if let value = dict["serviceApplyId"] as? Int64 {
                                self.serviceApplyId = value
                            }
                            if let value = dict["status"] as? Int32 {
                                self.status = value
                            }
                            if let value = dict["url"] as? String {
                                self.url = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["appointmentId"] as? String {
                                self.appointmentId = value
                            }
                            if let value = dict["batchGroup"] as? String {
                                self.batchGroup = value
                            }
                            if let value = dict["customerId"] as? String {
                                self.customerId = value
                            }
                            if let value = dict["fileName"] as? String {
                                self.fileName = value
                            }
                            if let value = dict["fileType"] as? Int32 {
                                self.fileType = value
                            }
                            if let value = dict["gmtCreate"] as? String {
                                self.gmtCreate = value
                            }
                            if let value = dict["gmtModified"] as? String {
                                self.gmtModified = value
                            }
                            if let value = dict["id"] as? Int64 {
                                self.id = value
                            }
                            if let value = dict["remarke"] as? String {
                                self.remarke = value
                            }
                            if let value = dict["serviceApplyId"] as? Int64 {
                                self.serviceApplyId = value
                            }
                            if let value = dict["status"] as? Int32 {
                                self.status = value
                            }
                            if let value = dict["url"] as? String {
                                self.url = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["appointmentId"] as? String {
                                self.appointmentId = value
                            }
                            if let value = dict["batchGroup"] as? String {
                                self.batchGroup = value
                            }
                            if let value = dict["customerId"] as? String {
                                self.customerId = value
                            }
                            if let value = dict["fileName"] as? String {
                                self.fileName = value
                            }
                            if let value = dict["fileType"] as? Int32 {
                                self.fileType = value
                            }
                            if let value = dict["gmtCreate"] as? String {
                                self.gmtCreate = value
                            }
                            if let value = dict["gmtModified"] as? String {
                                self.gmtModified = value
                            }
                            if let value = dict["id"] as? Int64 {
                                self.id = value
                            }
                            if let value = dict["remarke"] as? String {
                                self.remarke = value
                            }
                            if let value = dict["serviceApplyId"] as? Int64 {
                                self.serviceApplyId = value
                            }
                            if let value = dict["status"] as? Int32 {
                                self.status = value
                            }
                            if let value = dict["url"] as? String {
                                self.url = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["creatorEmpId"] as? String {
                                self.creatorEmpId = value
                            }
                            if let value = dict["gmtCreate"] as? String {
                                self.gmtCreate = value
                            }
                            if let value = dict["gmtModified"] as? String {
                                self.gmtModified = value
                            }
                            if let value = dict["hrStatus"] as? String {
                                self.hrStatus = value
                            }
                            if let value = dict["id"] as? Int64 {
                                self.id = value
                            }
                            if let value = dict["lastName"] as? String {
                                self.lastName = value
                            }
                            if let value = dict["modifierEmpId"] as? String {
                                self.modifierEmpId = value
                            }
                            if let value = dict["name"] as? String {
                                self.name = value
                            }
                            if let value = dict["nickNameEn"] as? String {
                                self.nickNameEn = value
                            }
                            if let value = dict["realmId"] as? Int64 {
                                self.realmId = value
                            }
                            if let value = dict["workid"] as? String {
                                self.workid = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["applyFileVOList"] as? [Any?] {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ApplyFileVOList] = []
                            for v in value {
                                if v != nil {
                                    var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ApplyFileVOList()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.applyFileVOList = tmp
                        }
                        if let value = dict["appointmentCode"] as? String {
                            self.appointmentCode = value
                        }
                        if let value = dict["appointmentEndTime"] as? Int64 {
                            self.appointmentEndTime = value
                        }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["appointmentPassTime"] as? Int64 {
                            self.appointmentPassTime = value
                        }
                        if let value = dict["appointmentTime"] as? Int64 {
                            self.appointmentTime = value
                        }
                        if let value = dict["commodityDesc"] as? String {
                            self.commodityDesc = value
                        }
                        if let value = dict["creatorEmpId"] as? String {
                            self.creatorEmpId = value
                        }
                        if let value = dict["cycleService"] as? Bool {
                            self.cycleService = value
                        }
                        if let value = dict["extList"] as? [Any?] {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ExtList] = []
                            for v in value {
                                if v != nil {
                                    var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ExtList()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.extList = tmp
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["mergeSolutionAndReporterOneStep"] as? Bool {
                            self.mergeSolutionAndReporterOneStep = value
                        }
                        if let value = dict["modifierEmpId"] as? String {
                            self.modifierEmpId = value
                        }
                        if let value = dict["ntmCommodityCode"] as? String {
                            self.ntmCommodityCode = value
                        }
                        if let value = dict["orderDetail"] as? Any {
                            self.orderDetail = value
                        }
                        if let value = dict["orderId"] as? Int64 {
                            self.orderId = value
                        }
                        if let value = dict["performanceNodeDTOS"] as? [Any?] {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.PerformanceNodeDTOS] = []
                            for v in value {
                                if v != nil {
                                    var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.PerformanceNodeDTOS()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.performanceNodeDTOS = tmp
                        }
                        if let value = dict["purchasePackCode"] as? Int32 {
                            self.purchasePackCode = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["serviceMonthReports"] as? [Any?] {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceMonthReports] = []
                            for v in value {
                                if v != nil {
                                    var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceMonthReports()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.serviceMonthReports = tmp
                        }
                        if let value = dict["serviceReports"] as? [Any?] {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceReports] = []
                            for v in value {
                                if v != nil {
                                    var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceReports()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.serviceReports = tmp
                        }
                        if let value = dict["serviceSchemes"] as? [Any?] {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceSchemes] = []
                            for v in value {
                                if v != nil {
                                    var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.ServiceSchemes()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.serviceSchemes = tmp
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["statusStr"] as? String {
                            self.statusStr = value
                        }
                        if let value = dict["supportTime"] as? [Int64] {
                            self.supportTime = value
                        }
                        if let value = dict["tamEngineers"] as? [Any?] {
                            var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.TamEngineers] = []
                            for v in value {
                                if v != nil {
                                    var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks.TamEngineers()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["batchGroup"] as? String {
                            self.batchGroup = value
                        }
                        if let value = dict["customerId"] as? String {
                            self.customerId = value
                        }
                        if let value = dict["fileName"] as? String {
                            self.fileName = value
                        }
                        if let value = dict["fileType"] as? Int32 {
                            self.fileType = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["remarke"] as? String {
                            self.remarke = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["batchGroup"] as? String {
                            self.batchGroup = value
                        }
                        if let value = dict["customerId"] as? String {
                            self.customerId = value
                        }
                        if let value = dict["fileName"] as? String {
                            self.fileName = value
                        }
                        if let value = dict["fileType"] as? Int32 {
                            self.fileType = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["remarke"] as? String {
                            self.remarke = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["batchGroup"] as? String {
                            self.batchGroup = value
                        }
                        if let value = dict["customerId"] as? String {
                            self.customerId = value
                        }
                        if let value = dict["fileName"] as? String {
                            self.fileName = value
                        }
                        if let value = dict["fileType"] as? Int32 {
                            self.fileType = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["remarke"] as? String {
                            self.remarke = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["creatorEmpId"] as? String {
                            self.creatorEmpId = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["hrStatus"] as? String {
                            self.hrStatus = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["lastName"] as? String {
                            self.lastName = value
                        }
                        if let value = dict["modifierEmpId"] as? String {
                            self.modifierEmpId = value
                        }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["nickNameEn"] as? String {
                            self.nickNameEn = value
                        }
                        if let value = dict["realmId"] as? Int64 {
                            self.realmId = value
                        }
                        if let value = dict["workid"] as? String {
                            self.workid = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["applyFileVOList"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ApplyFileVOList] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ApplyFileVOList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.applyFileVOList = tmp
                    }
                    if let value = dict["appointmentCode"] as? String {
                        self.appointmentCode = value
                    }
                    if let value = dict["appointmentEndTime"] as? Int64 {
                        self.appointmentEndTime = value
                    }
                    if let value = dict["appointmentId"] as? String {
                        self.appointmentId = value
                    }
                    if let value = dict["appointmentPassTime"] as? Int64 {
                        self.appointmentPassTime = value
                    }
                    if let value = dict["appointmentTime"] as? Int64 {
                        self.appointmentTime = value
                    }
                    if let value = dict["commodityDesc"] as? String {
                        self.commodityDesc = value
                    }
                    if let value = dict["creatorEmpId"] as? String {
                        self.creatorEmpId = value
                    }
                    if let value = dict["cycleService"] as? Bool {
                        self.cycleService = value
                    }
                    if let value = dict["extList"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ExtList] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ExtList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.extList = tmp
                    }
                    if let value = dict["gmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["gmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["mergeSolutionAndReporterOneStep"] as? Bool {
                        self.mergeSolutionAndReporterOneStep = value
                    }
                    if let value = dict["modifierEmpId"] as? String {
                        self.modifierEmpId = value
                    }
                    if let value = dict["ntmCommodityCode"] as? String {
                        self.ntmCommodityCode = value
                    }
                    if let value = dict["orderDetail"] as? Any {
                        self.orderDetail = value
                    }
                    if let value = dict["orderId"] as? Int64 {
                        self.orderId = value
                    }
                    if let value = dict["packCount"] as? Int32 {
                        self.packCount = value
                    }
                    if let value = dict["packDetails"] as? [[String: Any]] {
                        self.packDetails = value
                    }
                    if let value = dict["performanceNodeDTOS"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformanceNodeDTOS] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformanceNodeDTOS()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.performanceNodeDTOS = tmp
                    }
                    if let value = dict["performancePacks"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.PerformancePacks()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.performancePacks = tmp
                    }
                    if let value = dict["purchasePackCode"] as? Int32 {
                        self.purchasePackCode = value
                    }
                    if let value = dict["serviceApplyId"] as? Int64 {
                        self.serviceApplyId = value
                    }
                    if let value = dict["serviceMonthReports"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceMonthReports] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceMonthReports()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serviceMonthReports = tmp
                    }
                    if let value = dict["serviceReports"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceReports] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceReports()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serviceReports = tmp
                    }
                    if let value = dict["serviceSchemes"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceSchemes] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.ServiceSchemes()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serviceSchemes = tmp
                    }
                    if let value = dict["status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["statusStr"] as? String {
                        self.statusStr = value
                    }
                    if let value = dict["supportTime"] as? [Int64] {
                        self.supportTime = value
                    }
                    if let value = dict["tamEngineers"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders.TamEngineers] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders.TamEngineers()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["batchGroup"] as? String {
                            self.batchGroup = value
                        }
                        if let value = dict["customerId"] as? String {
                            self.customerId = value
                        }
                        if let value = dict["fileName"] as? String {
                            self.fileName = value
                        }
                        if let value = dict["fileType"] as? Int32 {
                            self.fileType = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["remarke"] as? String {
                            self.remarke = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["keyCode"] as? String {
                            self.keyCode = value
                        }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["value"] as? Any {
                            self.value = value
                        }
                        if let value = dict["view"] as? String {
                            self.view = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["display"] as? Bool {
                            self.display = value
                        }
                        if let value = dict["extendInfo"] as? Any {
                            self.extendInfo = value
                        }
                        if let value = dict["index"] as? Int32 {
                            self.index = value
                        }
                        if let value = dict["nodeName"] as? String {
                            self.nodeName = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["batchGroup"] as? String {
                            self.batchGroup = value
                        }
                        if let value = dict["customerId"] as? String {
                            self.customerId = value
                        }
                        if let value = dict["fileName"] as? String {
                            self.fileName = value
                        }
                        if let value = dict["fileType"] as? Int32 {
                            self.fileType = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["remarke"] as? String {
                            self.remarke = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["batchGroup"] as? String {
                            self.batchGroup = value
                        }
                        if let value = dict["customerId"] as? String {
                            self.customerId = value
                        }
                        if let value = dict["fileName"] as? String {
                            self.fileName = value
                        }
                        if let value = dict["fileType"] as? Int32 {
                            self.fileType = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["remarke"] as? String {
                            self.remarke = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["appointmentId"] as? String {
                            self.appointmentId = value
                        }
                        if let value = dict["batchGroup"] as? String {
                            self.batchGroup = value
                        }
                        if let value = dict["customerId"] as? String {
                            self.customerId = value
                        }
                        if let value = dict["fileName"] as? String {
                            self.fileName = value
                        }
                        if let value = dict["fileType"] as? Int32 {
                            self.fileType = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["remarke"] as? String {
                            self.remarke = value
                        }
                        if let value = dict["serviceApplyId"] as? Int64 {
                            self.serviceApplyId = value
                        }
                        if let value = dict["status"] as? Int32 {
                            self.status = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["creatorEmpId"] as? String {
                            self.creatorEmpId = value
                        }
                        if let value = dict["gmtCreate"] as? String {
                            self.gmtCreate = value
                        }
                        if let value = dict["gmtModified"] as? String {
                            self.gmtModified = value
                        }
                        if let value = dict["hrStatus"] as? String {
                            self.hrStatus = value
                        }
                        if let value = dict["id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["lastName"] as? String {
                            self.lastName = value
                        }
                        if let value = dict["modifierEmpId"] as? String {
                            self.modifierEmpId = value
                        }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["nickNameEn"] as? String {
                            self.nickNameEn = value
                        }
                        if let value = dict["realmId"] as? Int64 {
                            self.realmId = value
                        }
                        if let value = dict["workid"] as? String {
                            self.workid = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["applyFileVOList"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ApplyFileVOList] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ApplyFileVOList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.applyFileVOList = tmp
                    }
                    if let value = dict["appointmentCode"] as? String {
                        self.appointmentCode = value
                    }
                    if let value = dict["appointmentEndTime"] as? Int64 {
                        self.appointmentEndTime = value
                    }
                    if let value = dict["appointmentId"] as? String {
                        self.appointmentId = value
                    }
                    if let value = dict["appointmentPassTime"] as? Int64 {
                        self.appointmentPassTime = value
                    }
                    if let value = dict["appointmentTime"] as? Int64 {
                        self.appointmentTime = value
                    }
                    if let value = dict["commodityDesc"] as? String {
                        self.commodityDesc = value
                    }
                    if let value = dict["creatorEmpId"] as? String {
                        self.creatorEmpId = value
                    }
                    if let value = dict["cycleService"] as? Bool {
                        self.cycleService = value
                    }
                    if let value = dict["extList"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ExtList] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ExtList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.extList = tmp
                    }
                    if let value = dict["gmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["gmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["mergeSolutionAndReporterOneStep"] as? Bool {
                        self.mergeSolutionAndReporterOneStep = value
                    }
                    if let value = dict["modifierEmpId"] as? String {
                        self.modifierEmpId = value
                    }
                    if let value = dict["ntmCommodityCode"] as? String {
                        self.ntmCommodityCode = value
                    }
                    if let value = dict["orderDetail"] as? Any {
                        self.orderDetail = value
                    }
                    if let value = dict["orderId"] as? Int64 {
                        self.orderId = value
                    }
                    if let value = dict["performanceNodeDTOS"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.PerformanceNodeDTOS] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.PerformanceNodeDTOS()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.performanceNodeDTOS = tmp
                    }
                    if let value = dict["purchasePackCode"] as? Int32 {
                        self.purchasePackCode = value
                    }
                    if let value = dict["serviceApplyId"] as? Int64 {
                        self.serviceApplyId = value
                    }
                    if let value = dict["serviceMonthReports"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceMonthReports] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceMonthReports()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serviceMonthReports = tmp
                    }
                    if let value = dict["serviceReports"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceReports] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceReports()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serviceReports = tmp
                    }
                    if let value = dict["serviceSchemes"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceSchemes] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.ServiceSchemes()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serviceSchemes = tmp
                    }
                    if let value = dict["status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["statusStr"] as? String {
                        self.statusStr = value
                    }
                    if let value = dict["supportTime"] as? [Int64] {
                        self.supportTime = value
                    }
                    if let value = dict["tamEngineers"] as? [Any?] {
                        var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks.TamEngineers] = []
                        for v in value {
                            if v != nil {
                                var model = ListServiceApplyResponseBody.Data.List.PerformancePacks.TamEngineers()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["appointmentId"] as? String {
                        self.appointmentId = value
                    }
                    if let value = dict["batchGroup"] as? String {
                        self.batchGroup = value
                    }
                    if let value = dict["customerId"] as? String {
                        self.customerId = value
                    }
                    if let value = dict["fileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["fileType"] as? Int32 {
                        self.fileType = value
                    }
                    if let value = dict["gmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["gmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["remarke"] as? String {
                        self.remarke = value
                    }
                    if let value = dict["serviceApplyId"] as? Int64 {
                        self.serviceApplyId = value
                    }
                    if let value = dict["status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
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

            public var isOneToOneExpertServiceByTime: Bool?

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

            public var userRights: String?

            public override init() {
                super.init()
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
                if self.isOneToOneExpertServiceByTime != nil {
                    map["isOneToOneExpertServiceByTime"] = self.isOneToOneExpertServiceByTime!
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
                if self.userRights != nil {
                    map["userRights"] = self.userRights!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["applierId"] as? String {
                    self.applierId = value
                }
                if let value = dict["applyCode"] as? String {
                    self.applyCode = value
                }
                if let value = dict["applyComponentDetails"] as? [[String]] {
                    self.applyComponentDetails = value
                }
                if let value = dict["applyTime"] as? Int64 {
                    self.applyTime = value
                }
                if let value = dict["appointments"] as? [Any?] {
                    var tmp : [ListServiceApplyResponseBody.Data.List.Appointments] = []
                    for v in value {
                        if v != nil {
                            var model = ListServiceApplyResponseBody.Data.List.Appointments()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.appointments = tmp
                }
                if let value = dict["buyUrl"] as? String {
                    self.buyUrl = value
                }
                if let value = dict["creatorEmpId"] as? String {
                    self.creatorEmpId = value
                }
                if let value = dict["customerName"] as? String {
                    self.customerName = value
                }
                if let value = dict["cycleService"] as? Bool {
                    self.cycleService = value
                }
                if let value = dict["executedCount"] as? Int64 {
                    self.executedCount = value
                }
                if let value = dict["finishCount"] as? Int64 {
                    self.finishCount = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["isOneToOneExpertServiceByTime"] as? Bool {
                    self.isOneToOneExpertServiceByTime = value
                }
                if let value = dict["mergeSolutionAndReporterOneStep"] as? Bool {
                    self.mergeSolutionAndReporterOneStep = value
                }
                if let value = dict["modifierEmpId"] as? String {
                    self.modifierEmpId = value
                }
                if let value = dict["packDetails"] as? [[String: Any]] {
                    self.packDetails = value
                }
                if let value = dict["payOrders"] as? [Any?] {
                    var tmp : [ListServiceApplyResponseBody.Data.List.PayOrders] = []
                    for v in value {
                        if v != nil {
                            var model = ListServiceApplyResponseBody.Data.List.PayOrders()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.payOrders = tmp
                }
                if let value = dict["payUrl"] as? String {
                    self.payUrl = value
                }
                if let value = dict["performanceOrders"] as? [Any?] {
                    var tmp : [ListServiceApplyResponseBody.Data.List.PerformanceOrders] = []
                    for v in value {
                        if v != nil {
                            var model = ListServiceApplyResponseBody.Data.List.PerformanceOrders()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.performanceOrders = tmp
                }
                if let value = dict["performancePacks"] as? [Any?] {
                    var tmp : [ListServiceApplyResponseBody.Data.List.PerformancePacks] = []
                    for v in value {
                        if v != nil {
                            var model = ListServiceApplyResponseBody.Data.List.PerformancePacks()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.performancePacks = tmp
                }
                if let value = dict["reneWalUrl"] as? String {
                    self.reneWalUrl = value
                }
                if let value = dict["serviceCode"] as? String {
                    self.serviceCode = value
                }
                if let value = dict["serviceName"] as? String {
                    self.serviceName = value
                }
                if let value = dict["serviceReports"] as? [Any?] {
                    var tmp : [ListServiceApplyResponseBody.Data.List.ServiceReports] = []
                    for v in value {
                        if v != nil {
                            var model = ListServiceApplyResponseBody.Data.List.ServiceReports()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serviceReports = tmp
                }
                if let value = dict["serviceTimeRange"] as? [Int64] {
                    self.serviceTimeRange = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["statusCode"] as? Int32 {
                    self.statusCode = value
                }
                if let value = dict["statusStr"] as? String {
                    self.statusStr = value
                }
                if let value = dict["termOfValidity"] as? String {
                    self.termOfValidity = value
                }
                if let value = dict["totalPack"] as? Int32 {
                    self.totalPack = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["usePack"] as? Int64 {
                    self.usePack = value
                }
                if let value = dict["userRights"] as? String {
                    self.userRights = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["extend"] as? Any {
                self.extend = value
            }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListServiceApplyResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListServiceApplyResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListServiceApplyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceApplyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTimeEnd"] as? Int64 {
            self.createTimeEnd = value
        }
        if let value = dict["createTimeStart"] as? Int64 {
            self.createTimeStart = value
        }
        if let value = dict["freeOrderApplyCodes"] as? [String] {
            self.freeOrderApplyCodes = value
        }
        if let value = dict["freeOrderApplyIds"] as? [Int64] {
            self.freeOrderApplyIds = value
        }
        if let value = dict["orderIds"] as? [Int64] {
            self.orderIds = value
        }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["statusList"] as? [String] {
            self.statusList = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chatId"] as? String {
                    self.chatId = value
                }
                if let value = dict["createTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["creatorName"] as? String {
                    self.creatorName = value
                }
                if let value = dict["endTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["evaluationStar"] as? Int32 {
                    self.evaluationStar = value
                }
                if let value = dict["important"] as? String {
                    self.important = value
                }
                if let value = dict["mainDingDepartmentId"] as? String {
                    self.mainDingDepartmentId = value
                }
                if let value = dict["mainDingGroupId"] as? String {
                    self.mainDingGroupId = value
                }
                if let value = dict["mainDingGroupName"] as? String {
                    self.mainDingGroupName = value
                }
                if let value = dict["productName"] as? String {
                    self.productName = value
                }
                if let value = dict["recordId"] as? String {
                    self.recordId = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["subDingDepartmentId"] as? String {
                    self.subDingDepartmentId = value
                }
                if let value = dict["subDingGroupId"] as? String {
                    self.subDingGroupId = value
                }
                if let value = dict["subDingGroupName"] as? String {
                    self.subDingGroupName = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["extend"] as? Any {
                self.extend = value
            }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListYunQiTaskByUidResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListYunQiTaskByUidResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListYunQiTaskByUidResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListYunQiTaskByUidResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
