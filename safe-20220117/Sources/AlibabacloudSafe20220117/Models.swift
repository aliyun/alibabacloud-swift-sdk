import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelBlockRequest : Tea.TeaModel {
    public var blockId: Int64?

    public var cancelBLockDesc: String?

    public var createEmpId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blockId != nil {
            map["BlockId"] = self.blockId!
        }
        if self.cancelBLockDesc != nil {
            map["CancelBLockDesc"] = self.cancelBLockDesc!
        }
        if self.createEmpId != nil {
            map["CreateEmpId"] = self.createEmpId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlockId"] as? Int64 {
            self.blockId = value
        }
        if let value = dict["CancelBLockDesc"] as? String {
            self.cancelBLockDesc = value
        }
        if let value = dict["CreateEmpId"] as? String {
            self.createEmpId = value
        }
    }
}

public class CancelBlockResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var approveInstanceId: String?

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
            if self.approveInstanceId != nil {
                map["ApproveInstanceId"] = self.approveInstanceId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveInstanceId"] as? String {
                self.approveInstanceId = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: Int32?

    public var data: CancelBlockResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CancelBlockResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CancelBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelBlockResponseBody?

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
            var model = CancelBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeCancelRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
    }
}

public class ChangeCancelResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class ChangeCancelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeCancelResponseBody?

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
            var model = ChangeCancelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeCheckRequest : Tea.TeaModel {
    public class ApproveFlowParam : Tea.TeaModel {
        public class ApproveNodes : Tea.TeaModel {
            public class ApproverDTO : Tea.TeaModel {
                public var approveDesc: String?

                public var approveTime: String?

                public var approverId: String?

                public var approverName: String?

                public var opinion: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.approveDesc != nil {
                        map["ApproveDesc"] = self.approveDesc!
                    }
                    if self.approveTime != nil {
                        map["ApproveTime"] = self.approveTime!
                    }
                    if self.approverId != nil {
                        map["ApproverId"] = self.approverId!
                    }
                    if self.approverName != nil {
                        map["ApproverName"] = self.approverName!
                    }
                    if self.opinion != nil {
                        map["Opinion"] = self.opinion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApproveDesc"] as? String {
                        self.approveDesc = value
                    }
                    if let value = dict["ApproveTime"] as? String {
                        self.approveTime = value
                    }
                    if let value = dict["ApproverId"] as? String {
                        self.approverId = value
                    }
                    if let value = dict["ApproverName"] as? String {
                        self.approverName = value
                    }
                    if let value = dict["Opinion"] as? Int32 {
                        self.opinion = value
                    }
                }
            }
            public var approverDTO: [ChangeCheckRequest.ApproveFlowParam.ApproveNodes.ApproverDTO]?

            public var nodeStatus: Int32?

            public var processName: String?

            public var processNodeOrder: Int32?

            public var strategy: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.approverDTO != nil {
                    var tmp : [Any] = []
                    for k in self.approverDTO! {
                        tmp.append(k.toMap())
                    }
                    map["ApproverDTO"] = tmp
                }
                if self.nodeStatus != nil {
                    map["NodeStatus"] = self.nodeStatus!
                }
                if self.processName != nil {
                    map["ProcessName"] = self.processName!
                }
                if self.processNodeOrder != nil {
                    map["ProcessNodeOrder"] = self.processNodeOrder!
                }
                if self.strategy != nil {
                    map["Strategy"] = self.strategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApproverDTO"] as? [Any?] {
                    var tmp : [ChangeCheckRequest.ApproveFlowParam.ApproveNodes.ApproverDTO] = []
                    for v in value {
                        if v != nil {
                            var model = ChangeCheckRequest.ApproveFlowParam.ApproveNodes.ApproverDTO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.approverDTO = tmp
                }
                if let value = dict["NodeStatus"] as? Int32 {
                    self.nodeStatus = value
                }
                if let value = dict["ProcessName"] as? String {
                    self.processName = value
                }
                if let value = dict["ProcessNodeOrder"] as? Int32 {
                    self.processNodeOrder = value
                }
                if let value = dict["Strategy"] as? Int32 {
                    self.strategy = value
                }
            }
        }
        public var approveNodes: [ChangeCheckRequest.ApproveFlowParam.ApproveNodes]?

        public var authKey: String?

        public var authSign: String?

        public var bgVid: String?

        public var flowStatus: Int32?

        public var timestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveNodes != nil {
                var tmp : [Any] = []
                for k in self.approveNodes! {
                    tmp.append(k.toMap())
                }
                map["ApproveNodes"] = tmp
            }
            if self.authKey != nil {
                map["AuthKey"] = self.authKey!
            }
            if self.authSign != nil {
                map["AuthSign"] = self.authSign!
            }
            if self.bgVid != nil {
                map["BgVid"] = self.bgVid!
            }
            if self.flowStatus != nil {
                map["FlowStatus"] = self.flowStatus!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveNodes"] as? [Any?] {
                var tmp : [ChangeCheckRequest.ApproveFlowParam.ApproveNodes] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckRequest.ApproveFlowParam.ApproveNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.approveNodes = tmp
            }
            if let value = dict["AuthKey"] as? String {
                self.authKey = value
            }
            if let value = dict["AuthSign"] as? String {
                self.authSign = value
            }
            if let value = dict["BgVid"] as? String {
                self.bgVid = value
            }
            if let value = dict["FlowStatus"] as? Int32 {
                self.flowStatus = value
            }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
        }
    }
    public class BgCustomTemplateExtraDTO : Tea.TeaModel {
        public var bgCustomTemplate: String?

        public var bgCustomTemplateId: Int64?

        public var bgCustomTemplateInfo: String?

        public var bgCustomTemplateTitle: String?

        public var bgVid: String?

        public var extraInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bgCustomTemplate != nil {
                map["BgCustomTemplate"] = self.bgCustomTemplate!
            }
            if self.bgCustomTemplateId != nil {
                map["BgCustomTemplateId"] = self.bgCustomTemplateId!
            }
            if self.bgCustomTemplateInfo != nil {
                map["BgCustomTemplateInfo"] = self.bgCustomTemplateInfo!
            }
            if self.bgCustomTemplateTitle != nil {
                map["BgCustomTemplateTitle"] = self.bgCustomTemplateTitle!
            }
            if self.bgVid != nil {
                map["BgVid"] = self.bgVid!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BgCustomTemplate"] as? String {
                self.bgCustomTemplate = value
            }
            if let value = dict["BgCustomTemplateId"] as? Int64 {
                self.bgCustomTemplateId = value
            }
            if let value = dict["BgCustomTemplateInfo"] as? String {
                self.bgCustomTemplateInfo = value
            }
            if let value = dict["BgCustomTemplateTitle"] as? String {
                self.bgCustomTemplateTitle = value
            }
            if let value = dict["BgVid"] as? String {
                self.bgVid = value
            }
            if let value = dict["ExtraInfo"] as? String {
                self.extraInfo = value
            }
        }
    }
    public class BlockInfos : Tea.TeaModel {
        public class HitInfos : Tea.TeaModel {
            public var hitInfo: String?

            public var hitObject: String?

            public var scope: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hitInfo != nil {
                    map["HitInfo"] = self.hitInfo!
                }
                if self.hitObject != nil {
                    map["HitObject"] = self.hitObject!
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HitInfo"] as? String {
                    self.hitInfo = value
                }
                if let value = dict["HitObject"] as? String {
                    self.hitObject = value
                }
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
            }
        }
        public var hitInfos: [ChangeCheckRequest.BlockInfos.HitInfos]?

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
            if self.hitInfos != nil {
                var tmp : [Any] = []
                for k in self.hitInfos! {
                    tmp.append(k.toMap())
                }
                map["HitInfos"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HitInfos"] as? [Any?] {
                var tmp : [ChangeCheckRequest.BlockInfos.HitInfos] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckRequest.BlockInfos.HitInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hitInfos = tmp
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
        }
    }
    public class CallBackInfo : Tea.TeaModel {
        public var api: String?

        public var apiVersion: String?

        public var endPoint: String?

        public var extraInfo: String?

        public var popProduct: String?

        public var regionId: String?

        public var type: String?

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
            if self.api != nil {
                map["Api"] = self.api!
            }
            if self.apiVersion != nil {
                map["ApiVersion"] = self.apiVersion!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.popProduct != nil {
                map["PopProduct"] = self.popProduct!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Api"] as? String {
                self.api = value
            }
            if let value = dict["ApiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["ExtraInfo"] as? String {
                self.extraInfo = value
            }
            if let value = dict["PopProduct"] as? String {
                self.popProduct = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public class ChangeTimes : Tea.TeaModel {
        public var changeEndTime: Int64?

        public var changeStartTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeEndTime != nil {
                map["ChangeEndTime"] = self.changeEndTime!
            }
            if self.changeStartTime != nil {
                map["ChangeStartTime"] = self.changeStartTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeEndTime"] as? Int64 {
                self.changeEndTime = value
            }
            if let value = dict["ChangeStartTime"] as? Int64 {
                self.changeStartTime = value
            }
        }
    }
    public class DamagedChangeNotices : Tea.TeaModel {
        public class SensitiveCustomers : Tea.TeaModel {
            public class CustomerInfo : Tea.TeaModel {
                public var extraInfo: [String: Any]?

                public var type: String?

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
                    if self.extraInfo != nil {
                        map["ExtraInfo"] = self.extraInfo!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExtraInfo"] as? [String: Any] {
                        self.extraInfo = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public var customerInfo: [ChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo]?

            public var productCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInfo != nil {
                    var tmp : [Any] = []
                    for k in self.customerInfo! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInfo"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomerInfo"] as? [Any?] {
                    var tmp : [ChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo] = []
                    for v in value {
                        if v != nil {
                            var model = ChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customerInfo = tmp
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
            }
        }
        public var bgCancelNoticeContent: String?

        public var bgCancelNoticeEventId: String?

        public var channel: [String]?

        public var content: String?

        public var eventId: String?

        public var sensitiveCustomers: [ChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers]?

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
            if self.bgCancelNoticeContent != nil {
                map["BgCancelNoticeContent"] = self.bgCancelNoticeContent!
            }
            if self.bgCancelNoticeEventId != nil {
                map["BgCancelNoticeEventId"] = self.bgCancelNoticeEventId!
            }
            if self.channel != nil {
                map["Channel"] = self.channel!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.sensitiveCustomers != nil {
                var tmp : [Any] = []
                for k in self.sensitiveCustomers! {
                    tmp.append(k.toMap())
                }
                map["SensitiveCustomers"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BgCancelNoticeContent"] as? String {
                self.bgCancelNoticeContent = value
            }
            if let value = dict["BgCancelNoticeEventId"] as? String {
                self.bgCancelNoticeEventId = value
            }
            if let value = dict["Channel"] as? [String] {
                self.channel = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["SensitiveCustomers"] as? [Any?] {
                var tmp : [ChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveCustomers = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class InfluenceInfo : Tea.TeaModel {
        public class NoticeInfos : Tea.TeaModel {
            public var channel: [String]?

            public var content: String?

            public var eventId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.eventId != nil {
                    map["EventId"] = self.eventId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Channel"] as? [String] {
                    self.channel = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["EventId"] as? String {
                    self.eventId = value
                }
            }
        }
        public class SensitiveCustomers : Tea.TeaModel {
            public class CustomerInfo : Tea.TeaModel {
                public var extraInfo: [String: Any]?

                public var type: String?

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
                    if self.extraInfo != nil {
                        map["ExtraInfo"] = self.extraInfo!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExtraInfo"] as? [String: Any] {
                        self.extraInfo = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public var customerInfo: [ChangeCheckRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo]?

            public var productCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInfo != nil {
                    var tmp : [Any] = []
                    for k in self.customerInfo! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInfo"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomerInfo"] as? [Any?] {
                    var tmp : [ChangeCheckRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo] = []
                    for v in value {
                        if v != nil {
                            var model = ChangeCheckRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customerInfo = tmp
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
            }
        }
        public var noticeInfos: [ChangeCheckRequest.InfluenceInfo.NoticeInfos]?

        public var sensitiveCustomers: [ChangeCheckRequest.InfluenceInfo.SensitiveCustomers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.noticeInfos != nil {
                var tmp : [Any] = []
                for k in self.noticeInfos! {
                    tmp.append(k.toMap())
                }
                map["NoticeInfos"] = tmp
            }
            if self.sensitiveCustomers != nil {
                var tmp : [Any] = []
                for k in self.sensitiveCustomers! {
                    tmp.append(k.toMap())
                }
                map["SensitiveCustomers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NoticeInfos"] as? [Any?] {
                var tmp : [ChangeCheckRequest.InfluenceInfo.NoticeInfos] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckRequest.InfluenceInfo.NoticeInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.noticeInfos = tmp
            }
            if let value = dict["SensitiveCustomers"] as? [Any?] {
                var tmp : [ChangeCheckRequest.InfluenceInfo.SensitiveCustomers] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckRequest.InfluenceInfo.SensitiveCustomers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveCustomers = tmp
            }
        }
    }
    public class Instance : Tea.TeaModel {
        public var attributionApp: [String]?

        public var influenceApp: [String]?

        public var instance: [String]?

        public var nc: [String]?

        public var uids: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributionApp != nil {
                map["AttributionApp"] = self.attributionApp!
            }
            if self.influenceApp != nil {
                map["InfluenceApp"] = self.influenceApp!
            }
            if self.instance != nil {
                map["Instance"] = self.instance!
            }
            if self.nc != nil {
                map["Nc"] = self.nc!
            }
            if self.uids != nil {
                map["Uids"] = self.uids!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttributionApp"] as? [String] {
                self.attributionApp = value
            }
            if let value = dict["InfluenceApp"] as? [String] {
                self.influenceApp = value
            }
            if let value = dict["Instance"] as? [String] {
                self.instance = value
            }
            if let value = dict["Nc"] as? [String] {
                self.nc = value
            }
            if let value = dict["Uids"] as? [String] {
                self.uids = value
            }
        }
    }
    public class Product : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class ReleasePackageInfos : Tea.TeaModel {
        public var productCode: String?

        public var releasePackage: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.releasePackage != nil {
                map["ReleasePackage"] = self.releasePackage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ReleasePackage"] as? [String] {
                self.releasePackage = value
            }
        }
    }
    public var affectCustomer: String?

    public var approveFlowParam: ChangeCheckRequest.ApproveFlowParam?

    public var authKey: String?

    public var authSign: String?

    public var bgCustomTemplateExtraDTO: ChangeCheckRequest.BgCustomTemplateExtraDTO?

    public var bgVid: String?

    public var blockInfos: [ChangeCheckRequest.BlockInfos]?

    public var callBackInfo: ChangeCheckRequest.CallBackInfo?

    public var changeDataType: String?

    public var changeDesc: String?

    public var changeEndTime: Int64?

    public var changeEnv: String?

    public var changeItems: String?

    public var changeObject: String?

    public var changeOptSubType: String?

    public var changeOptType: String?

    public var changeReason: String?

    public var changeRmarks: String?

    public var changeSchemes: String?

    public var changeStartTime: Int64?

    public var changeSubTypeDesc: String?

    public var changeSystem: String?

    public var changeTimes: [ChangeCheckRequest.ChangeTimes]?

    public var changeTitle: String?

    public var changeValidation: String?

    public var creatorEmpId: String?

    public var damagedChangeNotices: [ChangeCheckRequest.DamagedChangeNotices]?

    public var executorEmpId: String?

    public var extraInfo: String?

    public var follower: [String]?

    public var grayStatus: String?

    public var harmChangeNoticeEnum: String?

    public var incidence: String?

    public var influenceInfo: ChangeCheckRequest.InfluenceInfo?

    public var instance: ChangeCheckRequest.Instance?

    public var needModifyDoc: String?

    public var product: [ChangeCheckRequest.Product]?

    public var releasePackageInfos: [ChangeCheckRequest.ReleasePackageInfos]?

    public var reqTimestamp: Int64?

    public var reuseSourceOrderId: String?

    public var riskLevel: String?

    public var rollback: String?

    public var sourceName: String?

    public var sourceOrderId: String?

    public var sourceUrl: String?

    public var whiteType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.approveFlowParam?.validate()
        try self.bgCustomTemplateExtraDTO?.validate()
        try self.callBackInfo?.validate()
        try self.influenceInfo?.validate()
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.affectCustomer != nil {
            map["AffectCustomer"] = self.affectCustomer!
        }
        if self.approveFlowParam != nil {
            map["ApproveFlowParam"] = self.approveFlowParam?.toMap()
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.bgCustomTemplateExtraDTO != nil {
            map["BgCustomTemplateExtraDTO"] = self.bgCustomTemplateExtraDTO?.toMap()
        }
        if self.bgVid != nil {
            map["BgVid"] = self.bgVid!
        }
        if self.blockInfos != nil {
            var tmp : [Any] = []
            for k in self.blockInfos! {
                tmp.append(k.toMap())
            }
            map["BlockInfos"] = tmp
        }
        if self.callBackInfo != nil {
            map["CallBackInfo"] = self.callBackInfo?.toMap()
        }
        if self.changeDataType != nil {
            map["ChangeDataType"] = self.changeDataType!
        }
        if self.changeDesc != nil {
            map["ChangeDesc"] = self.changeDesc!
        }
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeEnv != nil {
            map["ChangeEnv"] = self.changeEnv!
        }
        if self.changeItems != nil {
            map["ChangeItems"] = self.changeItems!
        }
        if self.changeObject != nil {
            map["ChangeObject"] = self.changeObject!
        }
        if self.changeOptSubType != nil {
            map["ChangeOptSubType"] = self.changeOptSubType!
        }
        if self.changeOptType != nil {
            map["ChangeOptType"] = self.changeOptType!
        }
        if self.changeReason != nil {
            map["ChangeReason"] = self.changeReason!
        }
        if self.changeRmarks != nil {
            map["ChangeRmarks"] = self.changeRmarks!
        }
        if self.changeSchemes != nil {
            map["ChangeSchemes"] = self.changeSchemes!
        }
        if self.changeStartTime != nil {
            map["ChangeStartTime"] = self.changeStartTime!
        }
        if self.changeSubTypeDesc != nil {
            map["ChangeSubTypeDesc"] = self.changeSubTypeDesc!
        }
        if self.changeSystem != nil {
            map["ChangeSystem"] = self.changeSystem!
        }
        if self.changeTimes != nil {
            var tmp : [Any] = []
            for k in self.changeTimes! {
                tmp.append(k.toMap())
            }
            map["ChangeTimes"] = tmp
        }
        if self.changeTitle != nil {
            map["ChangeTitle"] = self.changeTitle!
        }
        if self.changeValidation != nil {
            map["ChangeValidation"] = self.changeValidation!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.damagedChangeNotices != nil {
            var tmp : [Any] = []
            for k in self.damagedChangeNotices! {
                tmp.append(k.toMap())
            }
            map["DamagedChangeNotices"] = tmp
        }
        if self.executorEmpId != nil {
            map["ExecutorEmpId"] = self.executorEmpId!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.follower != nil {
            map["Follower"] = self.follower!
        }
        if self.grayStatus != nil {
            map["GrayStatus"] = self.grayStatus!
        }
        if self.harmChangeNoticeEnum != nil {
            map["HarmChangeNoticeEnum"] = self.harmChangeNoticeEnum!
        }
        if self.incidence != nil {
            map["Incidence"] = self.incidence!
        }
        if self.influenceInfo != nil {
            map["InfluenceInfo"] = self.influenceInfo?.toMap()
        }
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.needModifyDoc != nil {
            map["NeedModifyDoc"] = self.needModifyDoc!
        }
        if self.product != nil {
            var tmp : [Any] = []
            for k in self.product! {
                tmp.append(k.toMap())
            }
            map["Product"] = tmp
        }
        if self.releasePackageInfos != nil {
            var tmp : [Any] = []
            for k in self.releasePackageInfos! {
                tmp.append(k.toMap())
            }
            map["ReleasePackageInfos"] = tmp
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.reuseSourceOrderId != nil {
            map["ReuseSourceOrderId"] = self.reuseSourceOrderId!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.rollback != nil {
            map["Rollback"] = self.rollback!
        }
        if self.sourceName != nil {
            map["SourceName"] = self.sourceName!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        if self.whiteType != nil {
            map["WhiteType"] = self.whiteType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AffectCustomer"] as? String {
            self.affectCustomer = value
        }
        if let value = dict["ApproveFlowParam"] as? [String: Any?] {
            var model = ChangeCheckRequest.ApproveFlowParam()
            model.fromMap(value)
            self.approveFlowParam = model
        }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["BgCustomTemplateExtraDTO"] as? [String: Any?] {
            var model = ChangeCheckRequest.BgCustomTemplateExtraDTO()
            model.fromMap(value)
            self.bgCustomTemplateExtraDTO = model
        }
        if let value = dict["BgVid"] as? String {
            self.bgVid = value
        }
        if let value = dict["BlockInfos"] as? [Any?] {
            var tmp : [ChangeCheckRequest.BlockInfos] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckRequest.BlockInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.blockInfos = tmp
        }
        if let value = dict["CallBackInfo"] as? [String: Any?] {
            var model = ChangeCheckRequest.CallBackInfo()
            model.fromMap(value)
            self.callBackInfo = model
        }
        if let value = dict["ChangeDataType"] as? String {
            self.changeDataType = value
        }
        if let value = dict["ChangeDesc"] as? String {
            self.changeDesc = value
        }
        if let value = dict["ChangeEndTime"] as? Int64 {
            self.changeEndTime = value
        }
        if let value = dict["ChangeEnv"] as? String {
            self.changeEnv = value
        }
        if let value = dict["ChangeItems"] as? String {
            self.changeItems = value
        }
        if let value = dict["ChangeObject"] as? String {
            self.changeObject = value
        }
        if let value = dict["ChangeOptSubType"] as? String {
            self.changeOptSubType = value
        }
        if let value = dict["ChangeOptType"] as? String {
            self.changeOptType = value
        }
        if let value = dict["ChangeReason"] as? String {
            self.changeReason = value
        }
        if let value = dict["ChangeRmarks"] as? String {
            self.changeRmarks = value
        }
        if let value = dict["ChangeSchemes"] as? String {
            self.changeSchemes = value
        }
        if let value = dict["ChangeStartTime"] as? Int64 {
            self.changeStartTime = value
        }
        if let value = dict["ChangeSubTypeDesc"] as? String {
            self.changeSubTypeDesc = value
        }
        if let value = dict["ChangeSystem"] as? String {
            self.changeSystem = value
        }
        if let value = dict["ChangeTimes"] as? [Any?] {
            var tmp : [ChangeCheckRequest.ChangeTimes] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckRequest.ChangeTimes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.changeTimes = tmp
        }
        if let value = dict["ChangeTitle"] as? String {
            self.changeTitle = value
        }
        if let value = dict["ChangeValidation"] as? String {
            self.changeValidation = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["DamagedChangeNotices"] as? [Any?] {
            var tmp : [ChangeCheckRequest.DamagedChangeNotices] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckRequest.DamagedChangeNotices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.damagedChangeNotices = tmp
        }
        if let value = dict["ExecutorEmpId"] as? String {
            self.executorEmpId = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["Follower"] as? [String] {
            self.follower = value
        }
        if let value = dict["GrayStatus"] as? String {
            self.grayStatus = value
        }
        if let value = dict["HarmChangeNoticeEnum"] as? String {
            self.harmChangeNoticeEnum = value
        }
        if let value = dict["Incidence"] as? String {
            self.incidence = value
        }
        if let value = dict["InfluenceInfo"] as? [String: Any?] {
            var model = ChangeCheckRequest.InfluenceInfo()
            model.fromMap(value)
            self.influenceInfo = model
        }
        if let value = dict["Instance"] as? [String: Any?] {
            var model = ChangeCheckRequest.Instance()
            model.fromMap(value)
            self.instance = model
        }
        if let value = dict["NeedModifyDoc"] as? String {
            self.needModifyDoc = value
        }
        if let value = dict["Product"] as? [Any?] {
            var tmp : [ChangeCheckRequest.Product] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckRequest.Product()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.product = tmp
        }
        if let value = dict["ReleasePackageInfos"] as? [Any?] {
            var tmp : [ChangeCheckRequest.ReleasePackageInfos] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckRequest.ReleasePackageInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.releasePackageInfos = tmp
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["ReuseSourceOrderId"] as? String {
            self.reuseSourceOrderId = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["Rollback"] as? String {
            self.rollback = value
        }
        if let value = dict["SourceName"] as? String {
            self.sourceName = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["SourceUrl"] as? String {
            self.sourceUrl = value
        }
        if let value = dict["WhiteType"] as? Int32 {
            self.whiteType = value
        }
    }
}

public class ChangeCheckShrinkRequest : Tea.TeaModel {
    public class ApproveFlowParam : Tea.TeaModel {
        public class ApproveNodes : Tea.TeaModel {
            public class ApproverDTO : Tea.TeaModel {
                public var approveDesc: String?

                public var approveTime: String?

                public var approverId: String?

                public var approverName: String?

                public var opinion: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.approveDesc != nil {
                        map["ApproveDesc"] = self.approveDesc!
                    }
                    if self.approveTime != nil {
                        map["ApproveTime"] = self.approveTime!
                    }
                    if self.approverId != nil {
                        map["ApproverId"] = self.approverId!
                    }
                    if self.approverName != nil {
                        map["ApproverName"] = self.approverName!
                    }
                    if self.opinion != nil {
                        map["Opinion"] = self.opinion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApproveDesc"] as? String {
                        self.approveDesc = value
                    }
                    if let value = dict["ApproveTime"] as? String {
                        self.approveTime = value
                    }
                    if let value = dict["ApproverId"] as? String {
                        self.approverId = value
                    }
                    if let value = dict["ApproverName"] as? String {
                        self.approverName = value
                    }
                    if let value = dict["Opinion"] as? Int32 {
                        self.opinion = value
                    }
                }
            }
            public var approverDTO: [ChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes.ApproverDTO]?

            public var nodeStatus: Int32?

            public var processName: String?

            public var processNodeOrder: Int32?

            public var strategy: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.approverDTO != nil {
                    var tmp : [Any] = []
                    for k in self.approverDTO! {
                        tmp.append(k.toMap())
                    }
                    map["ApproverDTO"] = tmp
                }
                if self.nodeStatus != nil {
                    map["NodeStatus"] = self.nodeStatus!
                }
                if self.processName != nil {
                    map["ProcessName"] = self.processName!
                }
                if self.processNodeOrder != nil {
                    map["ProcessNodeOrder"] = self.processNodeOrder!
                }
                if self.strategy != nil {
                    map["Strategy"] = self.strategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApproverDTO"] as? [Any?] {
                    var tmp : [ChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes.ApproverDTO] = []
                    for v in value {
                        if v != nil {
                            var model = ChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes.ApproverDTO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.approverDTO = tmp
                }
                if let value = dict["NodeStatus"] as? Int32 {
                    self.nodeStatus = value
                }
                if let value = dict["ProcessName"] as? String {
                    self.processName = value
                }
                if let value = dict["ProcessNodeOrder"] as? Int32 {
                    self.processNodeOrder = value
                }
                if let value = dict["Strategy"] as? Int32 {
                    self.strategy = value
                }
            }
        }
        public var approveNodes: [ChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes]?

        public var authKey: String?

        public var authSign: String?

        public var bgVid: String?

        public var flowStatus: Int32?

        public var timestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveNodes != nil {
                var tmp : [Any] = []
                for k in self.approveNodes! {
                    tmp.append(k.toMap())
                }
                map["ApproveNodes"] = tmp
            }
            if self.authKey != nil {
                map["AuthKey"] = self.authKey!
            }
            if self.authSign != nil {
                map["AuthSign"] = self.authSign!
            }
            if self.bgVid != nil {
                map["BgVid"] = self.bgVid!
            }
            if self.flowStatus != nil {
                map["FlowStatus"] = self.flowStatus!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveNodes"] as? [Any?] {
                var tmp : [ChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.approveNodes = tmp
            }
            if let value = dict["AuthKey"] as? String {
                self.authKey = value
            }
            if let value = dict["AuthSign"] as? String {
                self.authSign = value
            }
            if let value = dict["BgVid"] as? String {
                self.bgVid = value
            }
            if let value = dict["FlowStatus"] as? Int32 {
                self.flowStatus = value
            }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
        }
    }
    public class BgCustomTemplateExtraDTO : Tea.TeaModel {
        public var bgCustomTemplate: String?

        public var bgCustomTemplateId: Int64?

        public var bgCustomTemplateInfo: String?

        public var bgCustomTemplateTitle: String?

        public var bgVid: String?

        public var extraInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bgCustomTemplate != nil {
                map["BgCustomTemplate"] = self.bgCustomTemplate!
            }
            if self.bgCustomTemplateId != nil {
                map["BgCustomTemplateId"] = self.bgCustomTemplateId!
            }
            if self.bgCustomTemplateInfo != nil {
                map["BgCustomTemplateInfo"] = self.bgCustomTemplateInfo!
            }
            if self.bgCustomTemplateTitle != nil {
                map["BgCustomTemplateTitle"] = self.bgCustomTemplateTitle!
            }
            if self.bgVid != nil {
                map["BgVid"] = self.bgVid!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BgCustomTemplate"] as? String {
                self.bgCustomTemplate = value
            }
            if let value = dict["BgCustomTemplateId"] as? Int64 {
                self.bgCustomTemplateId = value
            }
            if let value = dict["BgCustomTemplateInfo"] as? String {
                self.bgCustomTemplateInfo = value
            }
            if let value = dict["BgCustomTemplateTitle"] as? String {
                self.bgCustomTemplateTitle = value
            }
            if let value = dict["BgVid"] as? String {
                self.bgVid = value
            }
            if let value = dict["ExtraInfo"] as? String {
                self.extraInfo = value
            }
        }
    }
    public class BlockInfos : Tea.TeaModel {
        public class HitInfos : Tea.TeaModel {
            public var hitInfo: String?

            public var hitObject: String?

            public var scope: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hitInfo != nil {
                    map["HitInfo"] = self.hitInfo!
                }
                if self.hitObject != nil {
                    map["HitObject"] = self.hitObject!
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HitInfo"] as? String {
                    self.hitInfo = value
                }
                if let value = dict["HitObject"] as? String {
                    self.hitObject = value
                }
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
            }
        }
        public var hitInfos: [ChangeCheckShrinkRequest.BlockInfos.HitInfos]?

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
            if self.hitInfos != nil {
                var tmp : [Any] = []
                for k in self.hitInfos! {
                    tmp.append(k.toMap())
                }
                map["HitInfos"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HitInfos"] as? [Any?] {
                var tmp : [ChangeCheckShrinkRequest.BlockInfos.HitInfos] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckShrinkRequest.BlockInfos.HitInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hitInfos = tmp
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
        }
    }
    public class CallBackInfo : Tea.TeaModel {
        public var api: String?

        public var apiVersion: String?

        public var endPoint: String?

        public var extraInfo: String?

        public var popProduct: String?

        public var regionId: String?

        public var type: String?

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
            if self.api != nil {
                map["Api"] = self.api!
            }
            if self.apiVersion != nil {
                map["ApiVersion"] = self.apiVersion!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.popProduct != nil {
                map["PopProduct"] = self.popProduct!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Api"] as? String {
                self.api = value
            }
            if let value = dict["ApiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["ExtraInfo"] as? String {
                self.extraInfo = value
            }
            if let value = dict["PopProduct"] as? String {
                self.popProduct = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public class ChangeTimes : Tea.TeaModel {
        public var changeEndTime: Int64?

        public var changeStartTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeEndTime != nil {
                map["ChangeEndTime"] = self.changeEndTime!
            }
            if self.changeStartTime != nil {
                map["ChangeStartTime"] = self.changeStartTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeEndTime"] as? Int64 {
                self.changeEndTime = value
            }
            if let value = dict["ChangeStartTime"] as? Int64 {
                self.changeStartTime = value
            }
        }
    }
    public class InfluenceInfo : Tea.TeaModel {
        public class NoticeInfos : Tea.TeaModel {
            public var channel: [String]?

            public var content: String?

            public var eventId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.eventId != nil {
                    map["EventId"] = self.eventId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Channel"] as? [String] {
                    self.channel = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["EventId"] as? String {
                    self.eventId = value
                }
            }
        }
        public class SensitiveCustomers : Tea.TeaModel {
            public class CustomerInfo : Tea.TeaModel {
                public var extraInfo: [String: Any]?

                public var type: String?

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
                    if self.extraInfo != nil {
                        map["ExtraInfo"] = self.extraInfo!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExtraInfo"] as? [String: Any] {
                        self.extraInfo = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public var customerInfo: [ChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo]?

            public var productCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInfo != nil {
                    var tmp : [Any] = []
                    for k in self.customerInfo! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInfo"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomerInfo"] as? [Any?] {
                    var tmp : [ChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo] = []
                    for v in value {
                        if v != nil {
                            var model = ChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customerInfo = tmp
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
            }
        }
        public var noticeInfos: [ChangeCheckShrinkRequest.InfluenceInfo.NoticeInfos]?

        public var sensitiveCustomers: [ChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.noticeInfos != nil {
                var tmp : [Any] = []
                for k in self.noticeInfos! {
                    tmp.append(k.toMap())
                }
                map["NoticeInfos"] = tmp
            }
            if self.sensitiveCustomers != nil {
                var tmp : [Any] = []
                for k in self.sensitiveCustomers! {
                    tmp.append(k.toMap())
                }
                map["SensitiveCustomers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NoticeInfos"] as? [Any?] {
                var tmp : [ChangeCheckShrinkRequest.InfluenceInfo.NoticeInfos] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckShrinkRequest.InfluenceInfo.NoticeInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.noticeInfos = tmp
            }
            if let value = dict["SensitiveCustomers"] as? [Any?] {
                var tmp : [ChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveCustomers = tmp
            }
        }
    }
    public class Instance : Tea.TeaModel {
        public var attributionApp: [String]?

        public var influenceApp: [String]?

        public var instance: [String]?

        public var nc: [String]?

        public var uids: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributionApp != nil {
                map["AttributionApp"] = self.attributionApp!
            }
            if self.influenceApp != nil {
                map["InfluenceApp"] = self.influenceApp!
            }
            if self.instance != nil {
                map["Instance"] = self.instance!
            }
            if self.nc != nil {
                map["Nc"] = self.nc!
            }
            if self.uids != nil {
                map["Uids"] = self.uids!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttributionApp"] as? [String] {
                self.attributionApp = value
            }
            if let value = dict["InfluenceApp"] as? [String] {
                self.influenceApp = value
            }
            if let value = dict["Instance"] as? [String] {
                self.instance = value
            }
            if let value = dict["Nc"] as? [String] {
                self.nc = value
            }
            if let value = dict["Uids"] as? [String] {
                self.uids = value
            }
        }
    }
    public class Product : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class ReleasePackageInfos : Tea.TeaModel {
        public var productCode: String?

        public var releasePackage: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.releasePackage != nil {
                map["ReleasePackage"] = self.releasePackage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ReleasePackage"] as? [String] {
                self.releasePackage = value
            }
        }
    }
    public var affectCustomer: String?

    public var approveFlowParam: ChangeCheckShrinkRequest.ApproveFlowParam?

    public var authKey: String?

    public var authSign: String?

    public var bgCustomTemplateExtraDTO: ChangeCheckShrinkRequest.BgCustomTemplateExtraDTO?

    public var bgVid: String?

    public var blockInfos: [ChangeCheckShrinkRequest.BlockInfos]?

    public var callBackInfo: ChangeCheckShrinkRequest.CallBackInfo?

    public var changeDataType: String?

    public var changeDesc: String?

    public var changeEndTime: Int64?

    public var changeEnv: String?

    public var changeItems: String?

    public var changeObject: String?

    public var changeOptSubType: String?

    public var changeOptType: String?

    public var changeReason: String?

    public var changeRmarks: String?

    public var changeSchemes: String?

    public var changeStartTime: Int64?

    public var changeSubTypeDesc: String?

    public var changeSystem: String?

    public var changeTimes: [ChangeCheckShrinkRequest.ChangeTimes]?

    public var changeTitle: String?

    public var changeValidation: String?

    public var creatorEmpId: String?

    public var damagedChangeNoticesShrink: String?

    public var executorEmpId: String?

    public var extraInfo: String?

    public var follower: [String]?

    public var grayStatus: String?

    public var harmChangeNoticeEnum: String?

    public var incidence: String?

    public var influenceInfo: ChangeCheckShrinkRequest.InfluenceInfo?

    public var instance: ChangeCheckShrinkRequest.Instance?

    public var needModifyDoc: String?

    public var product: [ChangeCheckShrinkRequest.Product]?

    public var releasePackageInfos: [ChangeCheckShrinkRequest.ReleasePackageInfos]?

    public var reqTimestamp: Int64?

    public var reuseSourceOrderId: String?

    public var riskLevel: String?

    public var rollback: String?

    public var sourceName: String?

    public var sourceOrderId: String?

    public var sourceUrl: String?

    public var whiteType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.approveFlowParam?.validate()
        try self.bgCustomTemplateExtraDTO?.validate()
        try self.callBackInfo?.validate()
        try self.influenceInfo?.validate()
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.affectCustomer != nil {
            map["AffectCustomer"] = self.affectCustomer!
        }
        if self.approveFlowParam != nil {
            map["ApproveFlowParam"] = self.approveFlowParam?.toMap()
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.bgCustomTemplateExtraDTO != nil {
            map["BgCustomTemplateExtraDTO"] = self.bgCustomTemplateExtraDTO?.toMap()
        }
        if self.bgVid != nil {
            map["BgVid"] = self.bgVid!
        }
        if self.blockInfos != nil {
            var tmp : [Any] = []
            for k in self.blockInfos! {
                tmp.append(k.toMap())
            }
            map["BlockInfos"] = tmp
        }
        if self.callBackInfo != nil {
            map["CallBackInfo"] = self.callBackInfo?.toMap()
        }
        if self.changeDataType != nil {
            map["ChangeDataType"] = self.changeDataType!
        }
        if self.changeDesc != nil {
            map["ChangeDesc"] = self.changeDesc!
        }
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeEnv != nil {
            map["ChangeEnv"] = self.changeEnv!
        }
        if self.changeItems != nil {
            map["ChangeItems"] = self.changeItems!
        }
        if self.changeObject != nil {
            map["ChangeObject"] = self.changeObject!
        }
        if self.changeOptSubType != nil {
            map["ChangeOptSubType"] = self.changeOptSubType!
        }
        if self.changeOptType != nil {
            map["ChangeOptType"] = self.changeOptType!
        }
        if self.changeReason != nil {
            map["ChangeReason"] = self.changeReason!
        }
        if self.changeRmarks != nil {
            map["ChangeRmarks"] = self.changeRmarks!
        }
        if self.changeSchemes != nil {
            map["ChangeSchemes"] = self.changeSchemes!
        }
        if self.changeStartTime != nil {
            map["ChangeStartTime"] = self.changeStartTime!
        }
        if self.changeSubTypeDesc != nil {
            map["ChangeSubTypeDesc"] = self.changeSubTypeDesc!
        }
        if self.changeSystem != nil {
            map["ChangeSystem"] = self.changeSystem!
        }
        if self.changeTimes != nil {
            var tmp : [Any] = []
            for k in self.changeTimes! {
                tmp.append(k.toMap())
            }
            map["ChangeTimes"] = tmp
        }
        if self.changeTitle != nil {
            map["ChangeTitle"] = self.changeTitle!
        }
        if self.changeValidation != nil {
            map["ChangeValidation"] = self.changeValidation!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.damagedChangeNoticesShrink != nil {
            map["DamagedChangeNotices"] = self.damagedChangeNoticesShrink!
        }
        if self.executorEmpId != nil {
            map["ExecutorEmpId"] = self.executorEmpId!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.follower != nil {
            map["Follower"] = self.follower!
        }
        if self.grayStatus != nil {
            map["GrayStatus"] = self.grayStatus!
        }
        if self.harmChangeNoticeEnum != nil {
            map["HarmChangeNoticeEnum"] = self.harmChangeNoticeEnum!
        }
        if self.incidence != nil {
            map["Incidence"] = self.incidence!
        }
        if self.influenceInfo != nil {
            map["InfluenceInfo"] = self.influenceInfo?.toMap()
        }
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.needModifyDoc != nil {
            map["NeedModifyDoc"] = self.needModifyDoc!
        }
        if self.product != nil {
            var tmp : [Any] = []
            for k in self.product! {
                tmp.append(k.toMap())
            }
            map["Product"] = tmp
        }
        if self.releasePackageInfos != nil {
            var tmp : [Any] = []
            for k in self.releasePackageInfos! {
                tmp.append(k.toMap())
            }
            map["ReleasePackageInfos"] = tmp
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.reuseSourceOrderId != nil {
            map["ReuseSourceOrderId"] = self.reuseSourceOrderId!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.rollback != nil {
            map["Rollback"] = self.rollback!
        }
        if self.sourceName != nil {
            map["SourceName"] = self.sourceName!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        if self.whiteType != nil {
            map["WhiteType"] = self.whiteType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AffectCustomer"] as? String {
            self.affectCustomer = value
        }
        if let value = dict["ApproveFlowParam"] as? [String: Any?] {
            var model = ChangeCheckShrinkRequest.ApproveFlowParam()
            model.fromMap(value)
            self.approveFlowParam = model
        }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["BgCustomTemplateExtraDTO"] as? [String: Any?] {
            var model = ChangeCheckShrinkRequest.BgCustomTemplateExtraDTO()
            model.fromMap(value)
            self.bgCustomTemplateExtraDTO = model
        }
        if let value = dict["BgVid"] as? String {
            self.bgVid = value
        }
        if let value = dict["BlockInfos"] as? [Any?] {
            var tmp : [ChangeCheckShrinkRequest.BlockInfos] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckShrinkRequest.BlockInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.blockInfos = tmp
        }
        if let value = dict["CallBackInfo"] as? [String: Any?] {
            var model = ChangeCheckShrinkRequest.CallBackInfo()
            model.fromMap(value)
            self.callBackInfo = model
        }
        if let value = dict["ChangeDataType"] as? String {
            self.changeDataType = value
        }
        if let value = dict["ChangeDesc"] as? String {
            self.changeDesc = value
        }
        if let value = dict["ChangeEndTime"] as? Int64 {
            self.changeEndTime = value
        }
        if let value = dict["ChangeEnv"] as? String {
            self.changeEnv = value
        }
        if let value = dict["ChangeItems"] as? String {
            self.changeItems = value
        }
        if let value = dict["ChangeObject"] as? String {
            self.changeObject = value
        }
        if let value = dict["ChangeOptSubType"] as? String {
            self.changeOptSubType = value
        }
        if let value = dict["ChangeOptType"] as? String {
            self.changeOptType = value
        }
        if let value = dict["ChangeReason"] as? String {
            self.changeReason = value
        }
        if let value = dict["ChangeRmarks"] as? String {
            self.changeRmarks = value
        }
        if let value = dict["ChangeSchemes"] as? String {
            self.changeSchemes = value
        }
        if let value = dict["ChangeStartTime"] as? Int64 {
            self.changeStartTime = value
        }
        if let value = dict["ChangeSubTypeDesc"] as? String {
            self.changeSubTypeDesc = value
        }
        if let value = dict["ChangeSystem"] as? String {
            self.changeSystem = value
        }
        if let value = dict["ChangeTimes"] as? [Any?] {
            var tmp : [ChangeCheckShrinkRequest.ChangeTimes] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckShrinkRequest.ChangeTimes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.changeTimes = tmp
        }
        if let value = dict["ChangeTitle"] as? String {
            self.changeTitle = value
        }
        if let value = dict["ChangeValidation"] as? String {
            self.changeValidation = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["DamagedChangeNotices"] as? String {
            self.damagedChangeNoticesShrink = value
        }
        if let value = dict["ExecutorEmpId"] as? String {
            self.executorEmpId = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["Follower"] as? [String] {
            self.follower = value
        }
        if let value = dict["GrayStatus"] as? String {
            self.grayStatus = value
        }
        if let value = dict["HarmChangeNoticeEnum"] as? String {
            self.harmChangeNoticeEnum = value
        }
        if let value = dict["Incidence"] as? String {
            self.incidence = value
        }
        if let value = dict["InfluenceInfo"] as? [String: Any?] {
            var model = ChangeCheckShrinkRequest.InfluenceInfo()
            model.fromMap(value)
            self.influenceInfo = model
        }
        if let value = dict["Instance"] as? [String: Any?] {
            var model = ChangeCheckShrinkRequest.Instance()
            model.fromMap(value)
            self.instance = model
        }
        if let value = dict["NeedModifyDoc"] as? String {
            self.needModifyDoc = value
        }
        if let value = dict["Product"] as? [Any?] {
            var tmp : [ChangeCheckShrinkRequest.Product] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckShrinkRequest.Product()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.product = tmp
        }
        if let value = dict["ReleasePackageInfos"] as? [Any?] {
            var tmp : [ChangeCheckShrinkRequest.ReleasePackageInfos] = []
            for v in value {
                if v != nil {
                    var model = ChangeCheckShrinkRequest.ReleasePackageInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.releasePackageInfos = tmp
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["ReuseSourceOrderId"] as? String {
            self.reuseSourceOrderId = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["Rollback"] as? String {
            self.rollback = value
        }
        if let value = dict["SourceName"] as? String {
            self.sourceName = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["SourceUrl"] as? String {
            self.sourceUrl = value
        }
        if let value = dict["WhiteType"] as? Int32 {
            self.whiteType = value
        }
    }
}

public class ChangeCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RuleDetailUrlList : Tea.TeaModel {
            public var sceneEnum: String?

            public var title: String?

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
                if self.sceneEnum != nil {
                    map["SceneEnum"] = self.sceneEnum!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SceneEnum"] as? String {
                    self.sceneEnum = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public var approveResultUrl: String?

        public var bgCheckStatus: String?

        public var bgVid: String?

        public var changeStatus: String?

        public var checkResultUrl: String?

        public var checkStatus: String?

        public var checkholdReason: [String]?

        public var ruleDetailUrlList: [ChangeCheckResponseBody.Data.RuleDetailUrlList]?

        public var sourceOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveResultUrl != nil {
                map["ApproveResultUrl"] = self.approveResultUrl!
            }
            if self.bgCheckStatus != nil {
                map["BgCheckStatus"] = self.bgCheckStatus!
            }
            if self.bgVid != nil {
                map["BgVid"] = self.bgVid!
            }
            if self.changeStatus != nil {
                map["ChangeStatus"] = self.changeStatus!
            }
            if self.checkResultUrl != nil {
                map["CheckResultUrl"] = self.checkResultUrl!
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.checkholdReason != nil {
                map["CheckholdReason"] = self.checkholdReason!
            }
            if self.ruleDetailUrlList != nil {
                var tmp : [Any] = []
                for k in self.ruleDetailUrlList! {
                    tmp.append(k.toMap())
                }
                map["RuleDetailUrlList"] = tmp
            }
            if self.sourceOrderId != nil {
                map["SourceOrderId"] = self.sourceOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveResultUrl"] as? String {
                self.approveResultUrl = value
            }
            if let value = dict["BgCheckStatus"] as? String {
                self.bgCheckStatus = value
            }
            if let value = dict["BgVid"] as? String {
                self.bgVid = value
            }
            if let value = dict["ChangeStatus"] as? String {
                self.changeStatus = value
            }
            if let value = dict["CheckResultUrl"] as? String {
                self.checkResultUrl = value
            }
            if let value = dict["CheckStatus"] as? String {
                self.checkStatus = value
            }
            if let value = dict["CheckholdReason"] as? [String] {
                self.checkholdReason = value
            }
            if let value = dict["RuleDetailUrlList"] as? [Any?] {
                var tmp : [ChangeCheckResponseBody.Data.RuleDetailUrlList] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCheckResponseBody.Data.RuleDetailUrlList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleDetailUrlList = tmp
            }
            if let value = dict["SourceOrderId"] as? String {
                self.sourceOrderId = value
            }
        }
    }
    public var code: Int32?

    public var data: ChangeCheckResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ChangeCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class ChangeCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeCheckResponseBody?

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
            var model = ChangeCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeEndRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var changeEndTime: Int64?

    public var changeResult: String?

    public var curBatchNo: Int32?

    public var executorEmpId: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public var totalBatchNo: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeResult != nil {
            map["ChangeResult"] = self.changeResult!
        }
        if self.curBatchNo != nil {
            map["CurBatchNo"] = self.curBatchNo!
        }
        if self.executorEmpId != nil {
            map["ExecutorEmpId"] = self.executorEmpId!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.totalBatchNo != nil {
            map["TotalBatchNo"] = self.totalBatchNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ChangeEndTime"] as? Int64 {
            self.changeEndTime = value
        }
        if let value = dict["ChangeResult"] as? String {
            self.changeResult = value
        }
        if let value = dict["CurBatchNo"] as? Int32 {
            self.curBatchNo = value
        }
        if let value = dict["ExecutorEmpId"] as? String {
            self.executorEmpId = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["TotalBatchNo"] as? Int32 {
            self.totalBatchNo = value
        }
    }
}

public class ChangeEndResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class ChangeEndResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeEndResponseBody?

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
            var model = ChangeEndResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeStartRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var changeEndTime: Int64?

    public var changeObject: String?

    public var changeOptType: String?

    public var changeStartTime: Int64?

    public var changeTitle: String?

    public var creatorEmpId: String?

    public var curBatchNo: Int32?

    public var executorEmpId: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public var totalBatchNo: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeObject != nil {
            map["ChangeObject"] = self.changeObject!
        }
        if self.changeOptType != nil {
            map["ChangeOptType"] = self.changeOptType!
        }
        if self.changeStartTime != nil {
            map["ChangeStartTime"] = self.changeStartTime!
        }
        if self.changeTitle != nil {
            map["ChangeTitle"] = self.changeTitle!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.curBatchNo != nil {
            map["CurBatchNo"] = self.curBatchNo!
        }
        if self.executorEmpId != nil {
            map["ExecutorEmpId"] = self.executorEmpId!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.totalBatchNo != nil {
            map["TotalBatchNo"] = self.totalBatchNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ChangeEndTime"] as? Int64 {
            self.changeEndTime = value
        }
        if let value = dict["ChangeObject"] as? String {
            self.changeObject = value
        }
        if let value = dict["ChangeOptType"] as? String {
            self.changeOptType = value
        }
        if let value = dict["ChangeStartTime"] as? Int64 {
            self.changeStartTime = value
        }
        if let value = dict["ChangeTitle"] as? String {
            self.changeTitle = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["CurBatchNo"] as? Int32 {
            self.curBatchNo = value
        }
        if let value = dict["ExecutorEmpId"] as? String {
            self.executorEmpId = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["TotalBatchNo"] as? Int32 {
            self.totalBatchNo = value
        }
    }
}

public class ChangeStartResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class ChangeStartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeStartResponseBody?

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
            var model = ChangeStartResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBlockRequest : Tea.TeaModel {
    public class ApproveStrategyNodes : Tea.TeaModel {
        public var approveRuleType: Int32?

        public var approveType: Int32?

        public var id: Int64?

        public var name: String?

        public var nodeCode: String?

        public var priorityOrder: Int32?

        public var roleCode: Int32?

        public var roleValue: [String]?

        public var templateId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveRuleType != nil {
                map["ApproveRuleType"] = self.approveRuleType!
            }
            if self.approveType != nil {
                map["ApproveType"] = self.approveType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeCode != nil {
                map["NodeCode"] = self.nodeCode!
            }
            if self.priorityOrder != nil {
                map["PriorityOrder"] = self.priorityOrder!
            }
            if self.roleCode != nil {
                map["RoleCode"] = self.roleCode!
            }
            if self.roleValue != nil {
                map["RoleValue"] = self.roleValue!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveRuleType"] as? Int32 {
                self.approveRuleType = value
            }
            if let value = dict["ApproveType"] as? Int32 {
                self.approveType = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NodeCode"] as? String {
                self.nodeCode = value
            }
            if let value = dict["PriorityOrder"] as? Int32 {
                self.priorityOrder = value
            }
            if let value = dict["RoleCode"] as? Int32 {
                self.roleCode = value
            }
            if let value = dict["RoleValue"] as? [String] {
                self.roleValue = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
        }
    }
    public class NoticeEnclosureInfos : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["url"] as? String {
                self.url = value
            }
        }
    }
    public class Scopes : Tea.TeaModel {
        public class BlockScope : Tea.TeaModel {
            public class App : Tea.TeaModel {
                public var appName: [String]?

                public var type: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appName != nil {
                        map["AppName"] = self.appName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AppName"] as? [String] {
                        self.appName = value
                    }
                    if let value = dict["Type"] as? Int32 {
                        self.type = value
                    }
                }
            }
            public class BgSystem : Tea.TeaModel {
                public var relateCodes: [String]?

                public var selfCodeName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.relateCodes != nil {
                        map["RelateCodes"] = self.relateCodes!
                    }
                    if self.selfCodeName != nil {
                        map["SelfCodeName"] = self.selfCodeName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RelateCodes"] as? [String] {
                        self.relateCodes = value
                    }
                    if let value = dict["SelfCodeName"] as? String {
                        self.selfCodeName = value
                    }
                }
            }
            public class Cluster : Tea.TeaModel {
                public class Relations : Tea.TeaModel {
                    public var appCodes: [String]?

                    public var labelCodes: [String]?

                    public var relateCodes: [String]?

                    public var selfCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appCodes != nil {
                            map["AppCodes"] = self.appCodes!
                        }
                        if self.labelCodes != nil {
                            map["LabelCodes"] = self.labelCodes!
                        }
                        if self.relateCodes != nil {
                            map["RelateCodes"] = self.relateCodes!
                        }
                        if self.selfCode != nil {
                            map["SelfCode"] = self.selfCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AppCodes"] as? [String] {
                            self.appCodes = value
                        }
                        if let value = dict["LabelCodes"] as? [String] {
                            self.labelCodes = value
                        }
                        if let value = dict["RelateCodes"] as? [String] {
                            self.relateCodes = value
                        }
                        if let value = dict["SelfCode"] as? String {
                            self.selfCode = value
                        }
                    }
                }
                public var codeNames: [String]?

                public var relations: [CreateBlockRequest.Scopes.BlockScope.Cluster.Relations]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.codeNames != nil {
                        map["CodeNames"] = self.codeNames!
                    }
                    if self.relations != nil {
                        var tmp : [Any] = []
                        for k in self.relations! {
                            tmp.append(k.toMap())
                        }
                        map["Relations"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CodeNames"] as? [String] {
                        self.codeNames = value
                    }
                    if let value = dict["Relations"] as? [Any?] {
                        var tmp : [CreateBlockRequest.Scopes.BlockScope.Cluster.Relations] = []
                        for v in value {
                            if v != nil {
                                var model = CreateBlockRequest.Scopes.BlockScope.Cluster.Relations()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.relations = tmp
                    }
                }
            }
            public class Customer : Tea.TeaModel {
                public class Relations : Tea.TeaModel {
                    public var appCodes: [String]?

                    public var labelCodes: [String]?

                    public var relateCodes: [String]?

                    public var selfCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appCodes != nil {
                            map["AppCodes"] = self.appCodes!
                        }
                        if self.labelCodes != nil {
                            map["LabelCodes"] = self.labelCodes!
                        }
                        if self.relateCodes != nil {
                            map["RelateCodes"] = self.relateCodes!
                        }
                        if self.selfCode != nil {
                            map["SelfCode"] = self.selfCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AppCodes"] as? [String] {
                            self.appCodes = value
                        }
                        if let value = dict["LabelCodes"] as? [String] {
                            self.labelCodes = value
                        }
                        if let value = dict["RelateCodes"] as? [String] {
                            self.relateCodes = value
                        }
                        if let value = dict["SelfCode"] as? String {
                            self.selfCode = value
                        }
                    }
                }
                public var codeNames: [String]?

                public var relations: [CreateBlockRequest.Scopes.BlockScope.Customer.Relations]?

                public var uid: String?

                public var viewCodes: [Int32]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.codeNames != nil {
                        map["CodeNames"] = self.codeNames!
                    }
                    if self.relations != nil {
                        var tmp : [Any] = []
                        for k in self.relations! {
                            tmp.append(k.toMap())
                        }
                        map["Relations"] = tmp
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    if self.viewCodes != nil {
                        map["ViewCodes"] = self.viewCodes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CodeNames"] as? [String] {
                        self.codeNames = value
                    }
                    if let value = dict["Relations"] as? [Any?] {
                        var tmp : [CreateBlockRequest.Scopes.BlockScope.Customer.Relations] = []
                        for v in value {
                            if v != nil {
                                var model = CreateBlockRequest.Scopes.BlockScope.Customer.Relations()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.relations = tmp
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                    if let value = dict["ViewCodes"] as? [Int32] {
                        self.viewCodes = value
                    }
                }
            }
            public class Product : Tea.TeaModel {
                public class Relations : Tea.TeaModel {
                    public var appCodes: [String]?

                    public var labelCodes: [String]?

                    public var relateCodes: [String]?

                    public var selfCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appCodes != nil {
                            map["AppCodes"] = self.appCodes!
                        }
                        if self.labelCodes != nil {
                            map["LabelCodes"] = self.labelCodes!
                        }
                        if self.relateCodes != nil {
                            map["RelateCodes"] = self.relateCodes!
                        }
                        if self.selfCode != nil {
                            map["SelfCode"] = self.selfCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AppCodes"] as? [String] {
                            self.appCodes = value
                        }
                        if let value = dict["LabelCodes"] as? [String] {
                            self.labelCodes = value
                        }
                        if let value = dict["RelateCodes"] as? [String] {
                            self.relateCodes = value
                        }
                        if let value = dict["SelfCode"] as? String {
                            self.selfCode = value
                        }
                    }
                }
                public var codeNames: [String]?

                public var key: String?

                public var relations: [CreateBlockRequest.Scopes.BlockScope.Product.Relations]?

                public var viewCode: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.codeNames != nil {
                        map["CodeNames"] = self.codeNames!
                    }
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.relations != nil {
                        var tmp : [Any] = []
                        for k in self.relations! {
                            tmp.append(k.toMap())
                        }
                        map["Relations"] = tmp
                    }
                    if self.viewCode != nil {
                        map["ViewCode"] = self.viewCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CodeNames"] as? [String] {
                        self.codeNames = value
                    }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Relations"] as? [Any?] {
                        var tmp : [CreateBlockRequest.Scopes.BlockScope.Product.Relations] = []
                        for v in value {
                            if v != nil {
                                var model = CreateBlockRequest.Scopes.BlockScope.Product.Relations()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.relations = tmp
                    }
                    if let value = dict["ViewCode"] as? [String] {
                        self.viewCode = value
                    }
                }
            }
            public var app: CreateBlockRequest.Scopes.BlockScope.App?

            public var bgSystem: [CreateBlockRequest.Scopes.BlockScope.BgSystem]?

            public var cluster: CreateBlockRequest.Scopes.BlockScope.Cluster?

            public var customer: [CreateBlockRequest.Scopes.BlockScope.Customer]?

            public var dept: [String]?

            public var express: String?

            public var infrastructure: [String]?

            public var product: [CreateBlockRequest.Scopes.BlockScope.Product]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.app?.validate()
                try self.cluster?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.app != nil {
                    map["App"] = self.app?.toMap()
                }
                if self.bgSystem != nil {
                    var tmp : [Any] = []
                    for k in self.bgSystem! {
                        tmp.append(k.toMap())
                    }
                    map["BgSystem"] = tmp
                }
                if self.cluster != nil {
                    map["Cluster"] = self.cluster?.toMap()
                }
                if self.customer != nil {
                    var tmp : [Any] = []
                    for k in self.customer! {
                        tmp.append(k.toMap())
                    }
                    map["Customer"] = tmp
                }
                if self.dept != nil {
                    map["Dept"] = self.dept!
                }
                if self.express != nil {
                    map["Express"] = self.express!
                }
                if self.infrastructure != nil {
                    map["Infrastructure"] = self.infrastructure!
                }
                if self.product != nil {
                    var tmp : [Any] = []
                    for k in self.product! {
                        tmp.append(k.toMap())
                    }
                    map["Product"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["App"] as? [String: Any?] {
                    var model = CreateBlockRequest.Scopes.BlockScope.App()
                    model.fromMap(value)
                    self.app = model
                }
                if let value = dict["BgSystem"] as? [Any?] {
                    var tmp : [CreateBlockRequest.Scopes.BlockScope.BgSystem] = []
                    for v in value {
                        if v != nil {
                            var model = CreateBlockRequest.Scopes.BlockScope.BgSystem()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bgSystem = tmp
                }
                if let value = dict["Cluster"] as? [String: Any?] {
                    var model = CreateBlockRequest.Scopes.BlockScope.Cluster()
                    model.fromMap(value)
                    self.cluster = model
                }
                if let value = dict["Customer"] as? [Any?] {
                    var tmp : [CreateBlockRequest.Scopes.BlockScope.Customer] = []
                    for v in value {
                        if v != nil {
                            var model = CreateBlockRequest.Scopes.BlockScope.Customer()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customer = tmp
                }
                if let value = dict["Dept"] as? [String] {
                    self.dept = value
                }
                if let value = dict["Express"] as? String {
                    self.express = value
                }
                if let value = dict["Infrastructure"] as? [String] {
                    self.infrastructure = value
                }
                if let value = dict["Product"] as? [Any?] {
                    var tmp : [CreateBlockRequest.Scopes.BlockScope.Product] = []
                    for v in value {
                        if v != nil {
                            var model = CreateBlockRequest.Scopes.BlockScope.Product()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.product = tmp
                }
            }
        }
        public var blockHarm: [Int32]?

        public var blockScope: CreateBlockRequest.Scopes.BlockScope?

        public var effectTime: [Int64]?

        public var scopeRule: String?

        public var changeObjectRegex: String?

        public var riskLevels: [Int32]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.blockScope?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockHarm != nil {
                map["BlockHarm"] = self.blockHarm!
            }
            if self.blockScope != nil {
                map["BlockScope"] = self.blockScope?.toMap()
            }
            if self.effectTime != nil {
                map["EffectTime"] = self.effectTime!
            }
            if self.scopeRule != nil {
                map["ScopeRule"] = self.scopeRule!
            }
            if self.changeObjectRegex != nil {
                map["changeObjectRegex"] = self.changeObjectRegex!
            }
            if self.riskLevels != nil {
                map["riskLevels"] = self.riskLevels!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlockHarm"] as? [Int32] {
                self.blockHarm = value
            }
            if let value = dict["BlockScope"] as? [String: Any?] {
                var model = CreateBlockRequest.Scopes.BlockScope()
                model.fromMap(value)
                self.blockScope = model
            }
            if let value = dict["EffectTime"] as? [Int64] {
                self.effectTime = value
            }
            if let value = dict["ScopeRule"] as? String {
                self.scopeRule = value
            }
            if let value = dict["changeObjectRegex"] as? String {
                self.changeObjectRegex = value
            }
            if let value = dict["riskLevels"] as? [Int32] {
                self.riskLevels = value
            }
        }
    }
    public var approveStrategyNodes: [CreateBlockRequest.ApproveStrategyNodes]?

    public var blockId: Int64?

    public var director: String?

    public var isNeedApprove: Int32?

    public var isRecall: Int32?

    public var isTemplate: Int32?

    public var labelName: String?

    public var noticeDesc: String?

    public var noticeEnclosureInfos: [CreateBlockRequest.NoticeEnclosureInfos]?

    public var noticeRequestLink: String?

    public var noticeType: Int32?

    public var reason: String?

    public var scene: Int32?

    public var scopes: [CreateBlockRequest.Scopes]?

    public var status: Int32?

    public var title: String?

    public var type: String?

    public var versionId: Int64?

    public var creatorEmpId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approveStrategyNodes != nil {
            var tmp : [Any] = []
            for k in self.approveStrategyNodes! {
                tmp.append(k.toMap())
            }
            map["ApproveStrategyNodes"] = tmp
        }
        if self.blockId != nil {
            map["BlockId"] = self.blockId!
        }
        if self.director != nil {
            map["Director"] = self.director!
        }
        if self.isNeedApprove != nil {
            map["IsNeedApprove"] = self.isNeedApprove!
        }
        if self.isRecall != nil {
            map["IsRecall"] = self.isRecall!
        }
        if self.isTemplate != nil {
            map["IsTemplate"] = self.isTemplate!
        }
        if self.labelName != nil {
            map["LabelName"] = self.labelName!
        }
        if self.noticeDesc != nil {
            map["NoticeDesc"] = self.noticeDesc!
        }
        if self.noticeEnclosureInfos != nil {
            var tmp : [Any] = []
            for k in self.noticeEnclosureInfos! {
                tmp.append(k.toMap())
            }
            map["NoticeEnclosureInfos"] = tmp
        }
        if self.noticeRequestLink != nil {
            map["NoticeRequestLink"] = self.noticeRequestLink!
        }
        if self.noticeType != nil {
            map["NoticeType"] = self.noticeType!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.scopes != nil {
            var tmp : [Any] = []
            for k in self.scopes! {
                tmp.append(k.toMap())
            }
            map["Scopes"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.creatorEmpId != nil {
            map["creatorEmpId"] = self.creatorEmpId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApproveStrategyNodes"] as? [Any?] {
            var tmp : [CreateBlockRequest.ApproveStrategyNodes] = []
            for v in value {
                if v != nil {
                    var model = CreateBlockRequest.ApproveStrategyNodes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.approveStrategyNodes = tmp
        }
        if let value = dict["BlockId"] as? Int64 {
            self.blockId = value
        }
        if let value = dict["Director"] as? String {
            self.director = value
        }
        if let value = dict["IsNeedApprove"] as? Int32 {
            self.isNeedApprove = value
        }
        if let value = dict["IsRecall"] as? Int32 {
            self.isRecall = value
        }
        if let value = dict["IsTemplate"] as? Int32 {
            self.isTemplate = value
        }
        if let value = dict["LabelName"] as? String {
            self.labelName = value
        }
        if let value = dict["NoticeDesc"] as? String {
            self.noticeDesc = value
        }
        if let value = dict["NoticeEnclosureInfos"] as? [Any?] {
            var tmp : [CreateBlockRequest.NoticeEnclosureInfos] = []
            for v in value {
                if v != nil {
                    var model = CreateBlockRequest.NoticeEnclosureInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.noticeEnclosureInfos = tmp
        }
        if let value = dict["NoticeRequestLink"] as? String {
            self.noticeRequestLink = value
        }
        if let value = dict["NoticeType"] as? Int32 {
            self.noticeType = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["Scene"] as? Int32 {
            self.scene = value
        }
        if let value = dict["Scopes"] as? [Any?] {
            var tmp : [CreateBlockRequest.Scopes] = []
            for v in value {
                if v != nil {
                    var model = CreateBlockRequest.Scopes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scopes = tmp
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["VersionId"] as? Int64 {
            self.versionId = value
        }
        if let value = dict["creatorEmpId"] as? String {
            self.creatorEmpId = value
        }
    }
}

public class CreateBlockResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int64?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
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

public class CreateBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBlockResponseBody?

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
            var model = CreateBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMaYiBlockRequest : Tea.TeaModel {
    public class BlockTimes : Tea.TeaModel {
        public var endTime: Int64?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public class Scope : Tea.TeaModel {
        public class GroupBlockScopeParams : Tea.TeaModel {
            public var az: String?

            public var idc: String?

            public var region: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.az != nil {
                    map["Az"] = self.az!
                }
                if self.idc != nil {
                    map["Idc"] = self.idc!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Az"] as? String {
                    self.az = value
                }
                if let value = dict["Idc"] as? String {
                    self.idc = value
                }
                if let value = dict["Region"] as? String {
                    self.region = value
                }
            }
        }
        public var groupBlockScopeParams: [CreateMaYiBlockRequest.Scope.GroupBlockScopeParams]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupBlockScopeParams != nil {
                var tmp : [Any] = []
                for k in self.groupBlockScopeParams! {
                    tmp.append(k.toMap())
                }
                map["GroupBlockScopeParams"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupBlockScopeParams"] as? [Any?] {
                var tmp : [CreateMaYiBlockRequest.Scope.GroupBlockScopeParams] = []
                for v in value {
                    if v != nil {
                        var model = CreateMaYiBlockRequest.Scope.GroupBlockScopeParams()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groupBlockScopeParams = tmp
            }
        }
    }
    public var blockId: String?

    public var blockTimes: [CreateMaYiBlockRequest.BlockTimes]?

    public var blockType: String?

    public var creatorEmpId: String?

    public var director: [String]?

    public var faultVersion: String?

    public var information: [String]?

    public var reason: String?

    public var scope: CreateMaYiBlockRequest.Scope?

    public var title: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scope?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blockId != nil {
            map["BlockId"] = self.blockId!
        }
        if self.blockTimes != nil {
            var tmp : [Any] = []
            for k in self.blockTimes! {
                tmp.append(k.toMap())
            }
            map["BlockTimes"] = tmp
        }
        if self.blockType != nil {
            map["BlockType"] = self.blockType!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.director != nil {
            map["Director"] = self.director!
        }
        if self.faultVersion != nil {
            map["FaultVersion"] = self.faultVersion!
        }
        if self.information != nil {
            map["Information"] = self.information!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.scope != nil {
            map["Scope"] = self.scope?.toMap()
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlockId"] as? String {
            self.blockId = value
        }
        if let value = dict["BlockTimes"] as? [Any?] {
            var tmp : [CreateMaYiBlockRequest.BlockTimes] = []
            for v in value {
                if v != nil {
                    var model = CreateMaYiBlockRequest.BlockTimes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.blockTimes = tmp
        }
        if let value = dict["BlockType"] as? String {
            self.blockType = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["Director"] as? [String] {
            self.director = value
        }
        if let value = dict["FaultVersion"] as? String {
            self.faultVersion = value
        }
        if let value = dict["Information"] as? [String] {
            self.information = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["Scope"] as? [String: Any?] {
            var model = CreateMaYiBlockRequest.Scope()
            model.fromMap(value)
            self.scope = model
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateMaYiBlockShrinkRequest : Tea.TeaModel {
    public class BlockTimes : Tea.TeaModel {
        public var endTime: Int64?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var blockId: String?

    public var blockTimes: [CreateMaYiBlockShrinkRequest.BlockTimes]?

    public var blockType: String?

    public var creatorEmpId: String?

    public var director: [String]?

    public var faultVersion: String?

    public var information: [String]?

    public var reason: String?

    public var scopeShrink: String?

    public var title: String?

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
        if self.blockId != nil {
            map["BlockId"] = self.blockId!
        }
        if self.blockTimes != nil {
            var tmp : [Any] = []
            for k in self.blockTimes! {
                tmp.append(k.toMap())
            }
            map["BlockTimes"] = tmp
        }
        if self.blockType != nil {
            map["BlockType"] = self.blockType!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.director != nil {
            map["Director"] = self.director!
        }
        if self.faultVersion != nil {
            map["FaultVersion"] = self.faultVersion!
        }
        if self.information != nil {
            map["Information"] = self.information!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.scopeShrink != nil {
            map["Scope"] = self.scopeShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlockId"] as? String {
            self.blockId = value
        }
        if let value = dict["BlockTimes"] as? [Any?] {
            var tmp : [CreateMaYiBlockShrinkRequest.BlockTimes] = []
            for v in value {
                if v != nil {
                    var model = CreateMaYiBlockShrinkRequest.BlockTimes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.blockTimes = tmp
        }
        if let value = dict["BlockType"] as? String {
            self.blockType = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["Director"] as? [String] {
            self.director = value
        }
        if let value = dict["FaultVersion"] as? String {
            self.faultVersion = value
        }
        if let value = dict["Information"] as? [String] {
            self.information = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["Scope"] as? String {
            self.scopeShrink = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateMaYiBlockResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var blockId: Int64?

        public var blockUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockId != nil {
                map["BlockId"] = self.blockId!
            }
            if self.blockUrl != nil {
                map["BlockUrl"] = self.blockUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlockId"] as? Int64 {
                self.blockId = value
            }
            if let value = dict["BlockUrl"] as? String {
                self.blockUrl = value
            }
        }
    }
    public var code: Int32?

    public var data: CreateMaYiBlockResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateMaYiBlockResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateMaYiBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMaYiBlockResponseBody?

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
            var model = CreateMaYiBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOperatorRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var bgObject: String?

    public var bgSystem: String?

    public var code: String?

    public var curEmpId: String?

    public var name: String?

    public var noCheck: Bool?

    public var noRisk: Bool?

    public var reqTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.bgObject != nil {
            map["BgObject"] = self.bgObject!
        }
        if self.bgSystem != nil {
            map["BgSystem"] = self.bgSystem!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.curEmpId != nil {
            map["CurEmpId"] = self.curEmpId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.noCheck != nil {
            map["NoCheck"] = self.noCheck!
        }
        if self.noRisk != nil {
            map["NoRisk"] = self.noRisk!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["BgObject"] as? String {
            self.bgObject = value
        }
        if let value = dict["BgSystem"] as? String {
            self.bgSystem = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CurEmpId"] as? String {
            self.curEmpId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NoCheck"] as? Bool {
            self.noCheck = value
        }
        if let value = dict["NoRisk"] as? Bool {
            self.noRisk = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
    }
}

public class CreateOperatorResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var approveStrategyId: Int64?

        public var ruleId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveStrategyId != nil {
                map["ApproveStrategyId"] = self.approveStrategyId!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveStrategyId"] as? Int64 {
                self.approveStrategyId = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
        }
    }
    public var code: Int32?

    public var data: CreateOperatorResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateOperatorResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateOperatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOperatorResponseBody?

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
            var model = CreateOperatorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var needValidate: Bool?

    public var queryType: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.needValidate != nil {
            map["NeedValidate"] = self.needValidate!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["NeedValidate"] as? Bool {
            self.needValidate = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
    }
}

public class QueryResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class QueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryResponseBody?

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
            var model = QueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryApproveFlowRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public var stage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.stage != nil {
            map["Stage"] = self.stage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["Stage"] as? String {
            self.stage = value
        }
    }
}

public class QueryApproveFlowResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class QueryApproveFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryApproveFlowResponseBody?

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
            var model = QueryApproveFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryBlockEventRequest : Tea.TeaModel {
    public class RegionReqs : Tea.TeaModel {
        public var productCode: String?

        public var regions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.regions != nil {
                map["Regions"] = self.regions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["Regions"] as? [String] {
                self.regions = value
            }
        }
    }
    public var authKey: String?

    public var authSign: String?

    public var bgSystemName: String?

    public var blockHarm: String?

    public var category: String?

    public var deptNo: String?

    public var endTime: Int64?

    public var limit: Int32?

    public var needRule: Bool?

    public var page: Int32?

    public var productCodes: [String]?

    public var regionReqs: [QueryBlockEventRequest.RegionReqs]?

    public var reqTimestamp: Int64?

    public var scope: [String]?

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
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.bgSystemName != nil {
            map["BgSystemName"] = self.bgSystemName!
        }
        if self.blockHarm != nil {
            map["BlockHarm"] = self.blockHarm!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.deptNo != nil {
            map["DeptNo"] = self.deptNo!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.needRule != nil {
            map["NeedRule"] = self.needRule!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.productCodes != nil {
            map["ProductCodes"] = self.productCodes!
        }
        if self.regionReqs != nil {
            var tmp : [Any] = []
            for k in self.regionReqs! {
                tmp.append(k.toMap())
            }
            map["RegionReqs"] = tmp
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["BgSystemName"] as? String {
            self.bgSystemName = value
        }
        if let value = dict["BlockHarm"] as? String {
            self.blockHarm = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["DeptNo"] as? String {
            self.deptNo = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NeedRule"] as? Bool {
            self.needRule = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["ProductCodes"] as? [String] {
            self.productCodes = value
        }
        if let value = dict["RegionReqs"] as? [Any?] {
            var tmp : [QueryBlockEventRequest.RegionReqs] = []
            for v in value {
                if v != nil {
                    var model = QueryBlockEventRequest.RegionReqs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regionReqs = tmp
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["Scope"] as? [String] {
            self.scope = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class QueryBlockEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataInfo : Tea.TeaModel {
            public class EventTimes : Tea.TeaModel {
                public class Rule : Tea.TeaModel {
                    public var level1: String?

                    public var level2: String?

                    public var level3: String?

                    public var level4: String?

                    public var level5: String?

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
                        if self.level1 != nil {
                            map["Level1"] = self.level1!
                        }
                        if self.level2 != nil {
                            map["Level2"] = self.level2!
                        }
                        if self.level3 != nil {
                            map["Level3"] = self.level3!
                        }
                        if self.level4 != nil {
                            map["Level4"] = self.level4!
                        }
                        if self.level5 != nil {
                            map["Level5"] = self.level5!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Level1"] as? String {
                            self.level1 = value
                        }
                        if let value = dict["Level2"] as? String {
                            self.level2 = value
                        }
                        if let value = dict["Level3"] as? String {
                            self.level3 = value
                        }
                        if let value = dict["Level4"] as? String {
                            self.level4 = value
                        }
                        if let value = dict["Level5"] as? String {
                            self.level5 = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var endTime: Int64?

                public var express: String?

                public var rule: [QueryBlockEventResponseBody.Data.DataInfo.EventTimes.Rule]?

                public var startTime: Int64?

                public var ruleId: Int64?

                public override init() {
                    super.init()
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
                        map["EndTime"] = self.endTime!
                    }
                    if self.express != nil {
                        map["Express"] = self.express!
                    }
                    if self.rule != nil {
                        var tmp : [Any] = []
                        for k in self.rule! {
                            tmp.append(k.toMap())
                        }
                        map["Rule"] = tmp
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.ruleId != nil {
                        map["ruleId"] = self.ruleId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EndTime"] as? Int64 {
                        self.endTime = value
                    }
                    if let value = dict["Express"] as? String {
                        self.express = value
                    }
                    if let value = dict["Rule"] as? [Any?] {
                        var tmp : [QueryBlockEventResponseBody.Data.DataInfo.EventTimes.Rule] = []
                        for v in value {
                            if v != nil {
                                var model = QueryBlockEventResponseBody.Data.DataInfo.EventTimes.Rule()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.rule = tmp
                    }
                    if let value = dict["StartTime"] as? Int64 {
                        self.startTime = value
                    }
                    if let value = dict["ruleId"] as? Int64 {
                        self.ruleId = value
                    }
                }
            }
            public class LevelType : Tea.TeaModel {
                public var label: String?

                public var value: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.label != nil {
                        map["label"] = self.label!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["label"] as? String {
                        self.label = value
                    }
                    if let value = dict["value"] as? Int32 {
                        self.value = value
                    }
                }
            }
            public var empId: String?

            public var endTime: Int64?

            public var eventTimes: [QueryBlockEventResponseBody.Data.DataInfo.EventTimes]?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: Int64?

            public var reason: String?

            public var startTime: Int64?

            public var title: String?

            public var url: String?

            public var levelType: QueryBlockEventResponseBody.Data.DataInfo.LevelType?

            public var versionId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.levelType?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.empId != nil {
                    map["EmpId"] = self.empId!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.eventTimes != nil {
                    var tmp : [Any] = []
                    for k in self.eventTimes! {
                        tmp.append(k.toMap())
                    }
                    map["EventTimes"] = tmp
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.levelType != nil {
                    map["levelType"] = self.levelType?.toMap()
                }
                if self.versionId != nil {
                    map["versionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EmpId"] as? String {
                    self.empId = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["EventTimes"] as? [Any?] {
                    var tmp : [QueryBlockEventResponseBody.Data.DataInfo.EventTimes] = []
                    for v in value {
                        if v != nil {
                            var model = QueryBlockEventResponseBody.Data.DataInfo.EventTimes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.eventTimes = tmp
                }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["levelType"] as? [String: Any?] {
                    var model = QueryBlockEventResponseBody.Data.DataInfo.LevelType()
                    model.fromMap(value)
                    self.levelType = model
                }
                if let value = dict["versionId"] as? Int64 {
                    self.versionId = value
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var limit: Int32?

            public var page: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limit != nil {
                    map["Limit"] = self.limit!
                }
                if self.page != nil {
                    map["Page"] = self.page!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limit"] as? Int32 {
                    self.limit = value
                }
                if let value = dict["Page"] as? Int32 {
                    self.page = value
                }
            }
        }
        public var dataInfo: [QueryBlockEventResponseBody.Data.DataInfo]?

        public var extraInfo: [String: String]?

        public var pagination: QueryBlockEventResponseBody.Data.Pagination?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataInfo != nil {
                var tmp : [Any] = []
                for k in self.dataInfo! {
                    tmp.append(k.toMap())
                }
                map["DataInfo"] = tmp
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataInfo"] as? [Any?] {
                var tmp : [QueryBlockEventResponseBody.Data.DataInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryBlockEventResponseBody.Data.DataInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataInfo = tmp
            }
            if let value = dict["ExtraInfo"] as? [String: String] {
                self.extraInfo = value
            }
            if let value = dict["Pagination"] as? [String: Any?] {
                var model = QueryBlockEventResponseBody.Data.Pagination()
                model.fromMap(value)
                self.pagination = model
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: QueryBlockEventResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryBlockEventResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QueryBlockEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBlockEventResponseBody?

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
            var model = QueryBlockEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryChangeInfoRequest : Tea.TeaModel {
    public class LevelTree : Tea.TeaModel {
        public class TreeData : Tea.TeaModel {
            public var data: [Any]?

            public var dataSubType: String?

            public var value: [String]?

            public override init() {
                super.init()
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
                if self.dataSubType != nil {
                    map["DataSubType"] = self.dataSubType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Any] {
                    self.data = value
                }
                if let value = dict["DataSubType"] as? String {
                    self.dataSubType = value
                }
                if let value = dict["Value"] as? [String] {
                    self.value = value
                }
            }
        }
        public var dataType: String?

        public var treeData: [QueryChangeInfoRequest.LevelTree.TreeData]?

        public override init() {
            super.init()
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
                map["DataType"] = self.dataType!
            }
            if self.treeData != nil {
                var tmp : [Any] = []
                for k in self.treeData! {
                    tmp.append(k.toMap())
                }
                map["TreeData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["TreeData"] as? [Any?] {
                var tmp : [QueryChangeInfoRequest.LevelTree.TreeData] = []
                for v in value {
                    if v != nil {
                        var model = QueryChangeInfoRequest.LevelTree.TreeData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.treeData = tmp
            }
        }
    }
    public var authKey: String?

    public var authSign: String?

    public var az: [String]?

    public var bgVid: String?

    public var buId: String?

    public var changeSystem: String?

    public var endTime: Int64?

    public var keyword: String?

    public var levelTree: QueryChangeInfoRequest.LevelTree?

    public var limit: Int32?

    public var page: Int32?

    public var product: [String]?

    public var region: [String]?

    public var reqTimestamp: Int64?

    public var source: String?

    public var sourceOrderId: String?

    public var startTime: Int64?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.levelTree?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.az != nil {
            map["Az"] = self.az!
        }
        if self.bgVid != nil {
            map["BgVid"] = self.bgVid!
        }
        if self.buId != nil {
            map["BuId"] = self.buId!
        }
        if self.changeSystem != nil {
            map["ChangeSystem"] = self.changeSystem!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.levelTree != nil {
            map["LevelTree"] = self.levelTree?.toMap()
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["Az"] as? [String] {
            self.az = value
        }
        if let value = dict["BgVid"] as? String {
            self.bgVid = value
        }
        if let value = dict["BuId"] as? String {
            self.buId = value
        }
        if let value = dict["ChangeSystem"] as? String {
            self.changeSystem = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["LevelTree"] as? [String: Any?] {
            var model = QueryChangeInfoRequest.LevelTree()
            model.fromMap(value)
            self.levelTree = model
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["Product"] as? [String] {
            self.product = value
        }
        if let value = dict["Region"] as? [String] {
            self.region = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class QueryChangeInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class QueryChangeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChangeInfoResponseBody?

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
            var model = QueryChangeInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCheckInfoRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
    }
}

public class QueryCheckInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CheckDetailList : Tea.TeaModel {
            public class BlockRule : Tea.TeaModel {
                public class ScopeNodeList : Tea.TeaModel {
                    public var leafLevel: String?

                    public var level1: String?

                    public var level2: String?

                    public var level3: String?

                    public var level4: String?

                    public var level5: String?

                    public var path: String?

                    public var ruleId: Int64?

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
                        if self.leafLevel != nil {
                            map["LeafLevel"] = self.leafLevel!
                        }
                        if self.level1 != nil {
                            map["Level1"] = self.level1!
                        }
                        if self.level2 != nil {
                            map["Level2"] = self.level2!
                        }
                        if self.level3 != nil {
                            map["Level3"] = self.level3!
                        }
                        if self.level4 != nil {
                            map["Level4"] = self.level4!
                        }
                        if self.level5 != nil {
                            map["Level5"] = self.level5!
                        }
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.ruleId != nil {
                            map["RuleId"] = self.ruleId!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["LeafLevel"] as? String {
                            self.leafLevel = value
                        }
                        if let value = dict["Level1"] as? String {
                            self.level1 = value
                        }
                        if let value = dict["Level2"] as? String {
                            self.level2 = value
                        }
                        if let value = dict["Level3"] as? String {
                            self.level3 = value
                        }
                        if let value = dict["Level4"] as? String {
                            self.level4 = value
                        }
                        if let value = dict["Level5"] as? String {
                            self.level5 = value
                        }
                        if let value = dict["Path"] as? String {
                            self.path = value
                        }
                        if let value = dict["RuleId"] as? Int64 {
                            self.ruleId = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var blockHarm: String?

                public var blockId: Int64?

                public var express: String?

                public var scopeEndTime: Int64?

                public var scopeNodeList: [QueryCheckInfoResponseBody.Data.CheckDetailList.BlockRule.ScopeNodeList]?

                public var scopeRuleId: Int64?

                public var scopeStartTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.blockHarm != nil {
                        map["BlockHarm"] = self.blockHarm!
                    }
                    if self.blockId != nil {
                        map["BlockId"] = self.blockId!
                    }
                    if self.express != nil {
                        map["Express"] = self.express!
                    }
                    if self.scopeEndTime != nil {
                        map["ScopeEndTime"] = self.scopeEndTime!
                    }
                    if self.scopeNodeList != nil {
                        var tmp : [Any] = []
                        for k in self.scopeNodeList! {
                            tmp.append(k.toMap())
                        }
                        map["ScopeNodeList"] = tmp
                    }
                    if self.scopeRuleId != nil {
                        map["ScopeRuleId"] = self.scopeRuleId!
                    }
                    if self.scopeStartTime != nil {
                        map["ScopeStartTime"] = self.scopeStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BlockHarm"] as? String {
                        self.blockHarm = value
                    }
                    if let value = dict["BlockId"] as? Int64 {
                        self.blockId = value
                    }
                    if let value = dict["Express"] as? String {
                        self.express = value
                    }
                    if let value = dict["ScopeEndTime"] as? Int64 {
                        self.scopeEndTime = value
                    }
                    if let value = dict["ScopeNodeList"] as? [Any?] {
                        var tmp : [QueryCheckInfoResponseBody.Data.CheckDetailList.BlockRule.ScopeNodeList] = []
                        for v in value {
                            if v != nil {
                                var model = QueryCheckInfoResponseBody.Data.CheckDetailList.BlockRule.ScopeNodeList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.scopeNodeList = tmp
                    }
                    if let value = dict["ScopeRuleId"] as? Int64 {
                        self.scopeRuleId = value
                    }
                    if let value = dict["ScopeStartTime"] as? Int64 {
                        self.scopeStartTime = value
                    }
                }
            }
            public var blockRule: [QueryCheckInfoResponseBody.Data.CheckDetailList.BlockRule]?

            public var checkholdReason: String?

            public var desc: String?

            public var picInfo: String?

            public var riskExplain: String?

            public var title: String?

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
                if self.blockRule != nil {
                    var tmp : [Any] = []
                    for k in self.blockRule! {
                        tmp.append(k.toMap())
                    }
                    map["BlockRule"] = tmp
                }
                if self.checkholdReason != nil {
                    map["CheckholdReason"] = self.checkholdReason!
                }
                if self.desc != nil {
                    map["Desc"] = self.desc!
                }
                if self.picInfo != nil {
                    map["PicInfo"] = self.picInfo!
                }
                if self.riskExplain != nil {
                    map["RiskExplain"] = self.riskExplain!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockRule"] as? [Any?] {
                    var tmp : [QueryCheckInfoResponseBody.Data.CheckDetailList.BlockRule] = []
                    for v in value {
                        if v != nil {
                            var model = QueryCheckInfoResponseBody.Data.CheckDetailList.BlockRule()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.blockRule = tmp
                }
                if let value = dict["CheckholdReason"] as? String {
                    self.checkholdReason = value
                }
                if let value = dict["Desc"] as? String {
                    self.desc = value
                }
                if let value = dict["PicInfo"] as? String {
                    self.picInfo = value
                }
                if let value = dict["RiskExplain"] as? String {
                    self.riskExplain = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public var checkDetailList: [QueryCheckInfoResponseBody.Data.CheckDetailList]?

        public var checkResultUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkDetailList != nil {
                var tmp : [Any] = []
                for k in self.checkDetailList! {
                    tmp.append(k.toMap())
                }
                map["CheckDetailList"] = tmp
            }
            if self.checkResultUrl != nil {
                map["CheckResultUrl"] = self.checkResultUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckDetailList"] as? [Any?] {
                var tmp : [QueryCheckInfoResponseBody.Data.CheckDetailList] = []
                for v in value {
                    if v != nil {
                        var model = QueryCheckInfoResponseBody.Data.CheckDetailList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.checkDetailList = tmp
            }
            if let value = dict["CheckResultUrl"] as? String {
                self.checkResultUrl = value
            }
        }
    }
    public var code: Int32?

    public var data: QueryCheckInfoResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryCheckInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QueryCheckInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCheckInfoResponseBody?

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
            var model = QueryCheckInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCustomerRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var product: [String]?

    public var reqTimestamp: Int64?

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
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["Product"] as? [String] {
            self.product = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class QueryCustomerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var product: String?

        public var type: String?

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
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Product"] as? String {
                self.product = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var code: Int32?

    public var data: [QueryCustomerResponseBody.Data]?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryCustomerResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryCustomerResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class QueryCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomerResponseBody?

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
            var model = QueryCustomerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryExecuteInfoRequest : Tea.TeaModel {
    public class LevelTree : Tea.TeaModel {
        public class TreeData : Tea.TeaModel {
            public var data: [Any]?

            public var dataSubType: String?

            public var value: [String]?

            public override init() {
                super.init()
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
                if self.dataSubType != nil {
                    map["DataSubType"] = self.dataSubType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Any] {
                    self.data = value
                }
                if let value = dict["DataSubType"] as? String {
                    self.dataSubType = value
                }
                if let value = dict["Value"] as? [String] {
                    self.value = value
                }
            }
        }
        public var dataType: String?

        public var treeData: [QueryExecuteInfoRequest.LevelTree.TreeData]?

        public override init() {
            super.init()
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
                map["DataType"] = self.dataType!
            }
            if self.treeData != nil {
                var tmp : [Any] = []
                for k in self.treeData! {
                    tmp.append(k.toMap())
                }
                map["TreeData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["TreeData"] as? [Any?] {
                var tmp : [QueryExecuteInfoRequest.LevelTree.TreeData] = []
                for v in value {
                    if v != nil {
                        var model = QueryExecuteInfoRequest.LevelTree.TreeData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.treeData = tmp
            }
        }
    }
    public var authKey: String?

    public var authSign: String?

    public var az: [String]?

    public var bgVid: String?

    public var buId: String?

    public var endTime: Int64?

    public var exVid: String?

    public var keyword: String?

    public var levelTree: QueryExecuteInfoRequest.LevelTree?

    public var limit: Int32?

    public var page: Int32?

    public var product: [String]?

    public var region: [String]?

    public var reqTimestamp: Int64?

    public var source: String?

    public var sourceOrderId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.levelTree?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.az != nil {
            map["Az"] = self.az!
        }
        if self.bgVid != nil {
            map["BgVid"] = self.bgVid!
        }
        if self.buId != nil {
            map["BuId"] = self.buId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.exVid != nil {
            map["ExVid"] = self.exVid!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.levelTree != nil {
            map["LevelTree"] = self.levelTree?.toMap()
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["Az"] as? [String] {
            self.az = value
        }
        if let value = dict["BgVid"] as? String {
            self.bgVid = value
        }
        if let value = dict["BuId"] as? String {
            self.buId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ExVid"] as? String {
            self.exVid = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["LevelTree"] as? [String: Any?] {
            var model = QueryExecuteInfoRequest.LevelTree()
            model.fromMap(value)
            self.levelTree = model
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["Product"] as? [String] {
            self.product = value
        }
        if let value = dict["Region"] as? [String] {
            self.region = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class QueryExecuteInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class QueryExecuteInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryExecuteInfoResponseBody?

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
            var model = QueryExecuteInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryInnerProductInfoRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var limit: Int32?

    public var page: Int32?

    public var productCode: String?

    public var reqTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
    }
}

public class QueryInnerProductInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataInfo : Tea.TeaModel {
            public var innerProductCode: String?

            public var innerProductName: String?

            public var productCode: String?

            public var productName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.innerProductCode != nil {
                    map["InnerProductCode"] = self.innerProductCode!
                }
                if self.innerProductName != nil {
                    map["InnerProductName"] = self.innerProductName!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InnerProductCode"] as? String {
                    self.innerProductCode = value
                }
                if let value = dict["InnerProductName"] as? String {
                    self.innerProductName = value
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
                if let value = dict["ProductName"] as? String {
                    self.productName = value
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var limit: Int32?

            public var page: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limit != nil {
                    map["Limit"] = self.limit!
                }
                if self.page != nil {
                    map["Page"] = self.page!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limit"] as? Int32 {
                    self.limit = value
                }
                if let value = dict["Page"] as? Int32 {
                    self.page = value
                }
            }
        }
        public var dataInfo: [QueryInnerProductInfoResponseBody.Data.DataInfo]?

        public var pagination: QueryInnerProductInfoResponseBody.Data.Pagination?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataInfo != nil {
                var tmp : [Any] = []
                for k in self.dataInfo! {
                    tmp.append(k.toMap())
                }
                map["DataInfo"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataInfo"] as? [Any?] {
                var tmp : [QueryInnerProductInfoResponseBody.Data.DataInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryInnerProductInfoResponseBody.Data.DataInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataInfo = tmp
            }
            if let value = dict["Pagination"] as? [String: Any?] {
                var model = QueryInnerProductInfoResponseBody.Data.Pagination()
                model.fromMap(value)
                self.pagination = model
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: QueryInnerProductInfoResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryInnerProductInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QueryInnerProductInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInnerProductInfoResponseBody?

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
            var model = QueryInnerProductInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRegionAzRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var limit: Int32?

    public var page: Int32?

    public var product: String?

    public var reqTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
    }
}

public class QueryRegionAzResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataInfo : Tea.TeaModel {
            public var azList: [String]?

            public var regionCode: String?

            public var regionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.azList != nil {
                    map["AzList"] = self.azList!
                }
                if self.regionCode != nil {
                    map["RegionCode"] = self.regionCode!
                }
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AzList"] as? [String] {
                    self.azList = value
                }
                if let value = dict["RegionCode"] as? String {
                    self.regionCode = value
                }
                if let value = dict["RegionName"] as? String {
                    self.regionName = value
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var limit: Int32?

            public var page: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limit != nil {
                    map["Limit"] = self.limit!
                }
                if self.page != nil {
                    map["Page"] = self.page!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limit"] as? Int32 {
                    self.limit = value
                }
                if let value = dict["Page"] as? Int32 {
                    self.page = value
                }
            }
        }
        public var dataInfo: [QueryRegionAzResponseBody.Data.DataInfo]?

        public var pagination: QueryRegionAzResponseBody.Data.Pagination?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataInfo != nil {
                var tmp : [Any] = []
                for k in self.dataInfo! {
                    tmp.append(k.toMap())
                }
                map["DataInfo"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataInfo"] as? [Any?] {
                var tmp : [QueryRegionAzResponseBody.Data.DataInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryRegionAzResponseBody.Data.DataInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataInfo = tmp
            }
            if let value = dict["Pagination"] as? [String: Any?] {
                var model = QueryRegionAzResponseBody.Data.Pagination()
                model.fromMap(value)
                self.pagination = model
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: QueryRegionAzResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryRegionAzResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QueryRegionAzResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRegionAzResponseBody?

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
            var model = QueryRegionAzResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SafeChangeCancelRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var bgVid: String?

    public var operateEmpNo: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.bgVid != nil {
            map["BgVid"] = self.bgVid!
        }
        if self.operateEmpNo != nil {
            map["OperateEmpNo"] = self.operateEmpNo!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["BgVid"] as? String {
            self.bgVid = value
        }
        if let value = dict["OperateEmpNo"] as? String {
            self.operateEmpNo = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
    }
}

public class SafeChangeCancelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var sourceOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sourceOrderId != nil {
                map["SourceOrderId"] = self.sourceOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SourceOrderId"] as? String {
                self.sourceOrderId = value
            }
        }
    }
    public var code: Int32?

    public var data: SafeChangeCancelResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SafeChangeCancelResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class SafeChangeCancelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SafeChangeCancelResponseBody?

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
            var model = SafeChangeCancelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SafeChangeCheckRequest : Tea.TeaModel {
    public class ApproveFlowParam : Tea.TeaModel {
        public class ApproveNodes : Tea.TeaModel {
            public class ApproverDTO : Tea.TeaModel {
                public var approveDesc: String?

                public var approveTime: Int64?

                public var approverId: String?

                public var approverName: String?

                public var opinion: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.approveDesc != nil {
                        map["ApproveDesc"] = self.approveDesc!
                    }
                    if self.approveTime != nil {
                        map["ApproveTime"] = self.approveTime!
                    }
                    if self.approverId != nil {
                        map["ApproverId"] = self.approverId!
                    }
                    if self.approverName != nil {
                        map["ApproverName"] = self.approverName!
                    }
                    if self.opinion != nil {
                        map["Opinion"] = self.opinion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApproveDesc"] as? String {
                        self.approveDesc = value
                    }
                    if let value = dict["ApproveTime"] as? Int64 {
                        self.approveTime = value
                    }
                    if let value = dict["ApproverId"] as? String {
                        self.approverId = value
                    }
                    if let value = dict["ApproverName"] as? String {
                        self.approverName = value
                    }
                    if let value = dict["Opinion"] as? Int32 {
                        self.opinion = value
                    }
                }
            }
            public var approverDTO: [SafeChangeCheckRequest.ApproveFlowParam.ApproveNodes.ApproverDTO]?

            public var nodeStatus: Int32?

            public var processName: String?

            public var processNodeOrder: Int32?

            public var strategy: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.approverDTO != nil {
                    var tmp : [Any] = []
                    for k in self.approverDTO! {
                        tmp.append(k.toMap())
                    }
                    map["ApproverDTO"] = tmp
                }
                if self.nodeStatus != nil {
                    map["NodeStatus"] = self.nodeStatus!
                }
                if self.processName != nil {
                    map["ProcessName"] = self.processName!
                }
                if self.processNodeOrder != nil {
                    map["ProcessNodeOrder"] = self.processNodeOrder!
                }
                if self.strategy != nil {
                    map["Strategy"] = self.strategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApproverDTO"] as? [Any?] {
                    var tmp : [SafeChangeCheckRequest.ApproveFlowParam.ApproveNodes.ApproverDTO] = []
                    for v in value {
                        if v != nil {
                            var model = SafeChangeCheckRequest.ApproveFlowParam.ApproveNodes.ApproverDTO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.approverDTO = tmp
                }
                if let value = dict["NodeStatus"] as? Int32 {
                    self.nodeStatus = value
                }
                if let value = dict["ProcessName"] as? String {
                    self.processName = value
                }
                if let value = dict["ProcessNodeOrder"] as? Int32 {
                    self.processNodeOrder = value
                }
                if let value = dict["Strategy"] as? Int32 {
                    self.strategy = value
                }
            }
        }
        public var approveNodes: [SafeChangeCheckRequest.ApproveFlowParam.ApproveNodes]?

        public var flowStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveNodes != nil {
                var tmp : [Any] = []
                for k in self.approveNodes! {
                    tmp.append(k.toMap())
                }
                map["ApproveNodes"] = tmp
            }
            if self.flowStatus != nil {
                map["FlowStatus"] = self.flowStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveNodes"] as? [Any?] {
                var tmp : [SafeChangeCheckRequest.ApproveFlowParam.ApproveNodes] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckRequest.ApproveFlowParam.ApproveNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.approveNodes = tmp
            }
            if let value = dict["FlowStatus"] as? Int32 {
                self.flowStatus = value
            }
        }
    }
    public class BgCustomTemplateExtraDTO : Tea.TeaModel {
        public var bgCustomTemplateInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bgCustomTemplateInfo != nil {
                map["BgCustomTemplateInfo"] = self.bgCustomTemplateInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BgCustomTemplateInfo"] as? String {
                self.bgCustomTemplateInfo = value
            }
        }
    }
    public class BlockInfos : Tea.TeaModel {
        public class HitInfos : Tea.TeaModel {
            public var hitInfo: String?

            public var hitObject: String?

            public var scope: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hitInfo != nil {
                    map["HitInfo"] = self.hitInfo!
                }
                if self.hitObject != nil {
                    map["HitObject"] = self.hitObject!
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HitInfo"] as? String {
                    self.hitInfo = value
                }
                if let value = dict["HitObject"] as? String {
                    self.hitObject = value
                }
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
            }
        }
        public var hitInfos: [SafeChangeCheckRequest.BlockInfos.HitInfos]?

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
            if self.hitInfos != nil {
                var tmp : [Any] = []
                for k in self.hitInfos! {
                    tmp.append(k.toMap())
                }
                map["HitInfos"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HitInfos"] as? [Any?] {
                var tmp : [SafeChangeCheckRequest.BlockInfos.HitInfos] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckRequest.BlockInfos.HitInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hitInfos = tmp
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
        }
    }
    public class CallBackInfo : Tea.TeaModel {
        public var api: String?

        public var apiVersion: String?

        public var endPoint: String?

        public var popProduct: String?

        public var regionId: String?

        public var type: String?

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
            if self.api != nil {
                map["Api"] = self.api!
            }
            if self.apiVersion != nil {
                map["ApiVersion"] = self.apiVersion!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.popProduct != nil {
                map["PopProduct"] = self.popProduct!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Api"] as? String {
                self.api = value
            }
            if let value = dict["ApiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["PopProduct"] as? String {
                self.popProduct = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public class ChangeTimes : Tea.TeaModel {
        public var changeEndTime: Int64?

        public var changeStartTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeEndTime != nil {
                map["ChangeEndTime"] = self.changeEndTime!
            }
            if self.changeStartTime != nil {
                map["ChangeStartTime"] = self.changeStartTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeEndTime"] as? Int64 {
                self.changeEndTime = value
            }
            if let value = dict["ChangeStartTime"] as? Int64 {
                self.changeStartTime = value
            }
        }
    }
    public class DamagedChangeNotices : Tea.TeaModel {
        public class SensitiveCustomers : Tea.TeaModel {
            public class CustomerInfo : Tea.TeaModel {
                public var extraInfo: [String: Any]?

                public var type: String?

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
                    if self.extraInfo != nil {
                        map["ExtraInfo"] = self.extraInfo!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExtraInfo"] as? [String: Any] {
                        self.extraInfo = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public var customerInfo: [SafeChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo]?

            public var productCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInfo != nil {
                    var tmp : [Any] = []
                    for k in self.customerInfo! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInfo"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomerInfo"] as? [Any?] {
                    var tmp : [SafeChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo] = []
                    for v in value {
                        if v != nil {
                            var model = SafeChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customerInfo = tmp
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
            }
        }
        public var bgCancelNoticeContent: String?

        public var bgCancelNoticeEventId: String?

        public var channel: [String]?

        public var content: String?

        public var eventId: String?

        public var sensitiveCustomers: [SafeChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers]?

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
            if self.bgCancelNoticeContent != nil {
                map["BgCancelNoticeContent"] = self.bgCancelNoticeContent!
            }
            if self.bgCancelNoticeEventId != nil {
                map["BgCancelNoticeEventId"] = self.bgCancelNoticeEventId!
            }
            if self.channel != nil {
                map["Channel"] = self.channel!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.sensitiveCustomers != nil {
                var tmp : [Any] = []
                for k in self.sensitiveCustomers! {
                    tmp.append(k.toMap())
                }
                map["SensitiveCustomers"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BgCancelNoticeContent"] as? String {
                self.bgCancelNoticeContent = value
            }
            if let value = dict["BgCancelNoticeEventId"] as? String {
                self.bgCancelNoticeEventId = value
            }
            if let value = dict["Channel"] as? [String] {
                self.channel = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["SensitiveCustomers"] as? [Any?] {
                var tmp : [SafeChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckRequest.DamagedChangeNotices.SensitiveCustomers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveCustomers = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class HarmNoticeCombineParam : Tea.TeaModel {
        public var combine: Bool?

        public var combineMark: String?

        public var combineRule: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.combine != nil {
                map["Combine"] = self.combine!
            }
            if self.combineMark != nil {
                map["CombineMark"] = self.combineMark!
            }
            if self.combineRule != nil {
                map["CombineRule"] = self.combineRule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Combine"] as? Bool {
                self.combine = value
            }
            if let value = dict["CombineMark"] as? String {
                self.combineMark = value
            }
            if let value = dict["CombineRule"] as? String {
                self.combineRule = value
            }
        }
    }
    public class InfluenceInfo : Tea.TeaModel {
        public class NoticeInfos : Tea.TeaModel {
            public var channel: [String]?

            public var content: String?

            public var eventId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.eventId != nil {
                    map["EventId"] = self.eventId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Channel"] as? [String] {
                    self.channel = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["EventId"] as? String {
                    self.eventId = value
                }
            }
        }
        public class SensitiveCustomers : Tea.TeaModel {
            public class CustomerInfo : Tea.TeaModel {
                public var extraInfo: [String: Any]?

                public var type: String?

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
                    if self.extraInfo != nil {
                        map["ExtraInfo"] = self.extraInfo!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExtraInfo"] as? [String: Any] {
                        self.extraInfo = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public var customerInfo: [SafeChangeCheckRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo]?

            public var productCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInfo != nil {
                    var tmp : [Any] = []
                    for k in self.customerInfo! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInfo"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomerInfo"] as? [Any?] {
                    var tmp : [SafeChangeCheckRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo] = []
                    for v in value {
                        if v != nil {
                            var model = SafeChangeCheckRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customerInfo = tmp
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
            }
        }
        public var noticeInfos: [SafeChangeCheckRequest.InfluenceInfo.NoticeInfos]?

        public var sensitiveCustomers: [SafeChangeCheckRequest.InfluenceInfo.SensitiveCustomers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.noticeInfos != nil {
                var tmp : [Any] = []
                for k in self.noticeInfos! {
                    tmp.append(k.toMap())
                }
                map["NoticeInfos"] = tmp
            }
            if self.sensitiveCustomers != nil {
                var tmp : [Any] = []
                for k in self.sensitiveCustomers! {
                    tmp.append(k.toMap())
                }
                map["SensitiveCustomers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NoticeInfos"] as? [Any?] {
                var tmp : [SafeChangeCheckRequest.InfluenceInfo.NoticeInfos] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckRequest.InfluenceInfo.NoticeInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.noticeInfos = tmp
            }
            if let value = dict["SensitiveCustomers"] as? [Any?] {
                var tmp : [SafeChangeCheckRequest.InfluenceInfo.SensitiveCustomers] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckRequest.InfluenceInfo.SensitiveCustomers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveCustomers = tmp
            }
        }
    }
    public class Instance : Tea.TeaModel {
        public var nc: [String]?

        public var uids: [String]?

        public var attributionApp: [String]?

        public var influenceApp: [String]?

        public var instance: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nc != nil {
                map["Nc"] = self.nc!
            }
            if self.uids != nil {
                map["Uids"] = self.uids!
            }
            if self.attributionApp != nil {
                map["attributionApp"] = self.attributionApp!
            }
            if self.influenceApp != nil {
                map["influenceApp"] = self.influenceApp!
            }
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Nc"] as? [String] {
                self.nc = value
            }
            if let value = dict["Uids"] as? [String] {
                self.uids = value
            }
            if let value = dict["attributionApp"] as? [String] {
                self.attributionApp = value
            }
            if let value = dict["influenceApp"] as? [String] {
                self.influenceApp = value
            }
            if let value = dict["instance"] as? [String] {
                self.instance = value
            }
        }
    }
    public class Product : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class ReleasePackageInfos : Tea.TeaModel {
        public var productCode: String?

        public var releasePackage: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.releasePackage != nil {
                map["ReleasePackage"] = self.releasePackage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ReleasePackage"] as? [String] {
                self.releasePackage = value
            }
        }
    }
    public var affectCustomer: String?

    public var approveFlowParam: SafeChangeCheckRequest.ApproveFlowParam?

    public var authKey: String?

    public var authSign: String?

    public var bgCustomTemplateExtraDTO: SafeChangeCheckRequest.BgCustomTemplateExtraDTO?

    public var blockInfos: [SafeChangeCheckRequest.BlockInfos]?

    public var callBackInfo: SafeChangeCheckRequest.CallBackInfo?

    public var changeDataType: String?

    public var changeDesc: String?

    public var changeEndTime: Int64?

    public var changeEnv: String?

    public var changeItems: String?

    public var changeObject: String?

    public var changeOptSubType: String?

    public var changeOptType: String?

    public var changeReason: String?

    public var changeRmarks: String?

    public var changeSchemes: String?

    public var changeStartTime: Int64?

    public var changeSubTypeDesc: String?

    public var changeSystem: String?

    public var changeTimes: [SafeChangeCheckRequest.ChangeTimes]?

    public var changeTitle: String?

    public var changeValidation: String?

    public var checker: [String]?

    public var creatorEmpId: String?

    public var damagedChangeNotices: [SafeChangeCheckRequest.DamagedChangeNotices]?

    public var executorEmpId: String?

    public var extraInfo: String?

    public var follower: [String]?

    public var grayStatus: String?

    public var harmChangeNoticeEnum: String?

    public var harmNoticeCombineParam: SafeChangeCheckRequest.HarmNoticeCombineParam?

    public var incidence: String?

    public var influenceInfo: SafeChangeCheckRequest.InfluenceInfo?

    public var instance: SafeChangeCheckRequest.Instance?

    public var needModifyDoc: String?

    public var operateEmpNo: String?

    public var product: [SafeChangeCheckRequest.Product]?

    public var releasePackageInfos: [SafeChangeCheckRequest.ReleasePackageInfos]?

    public var reqTimestamp: Int64?

    public var reuseSourceOrderId: String?

    public var riskLevel: String?

    public var rollback: String?

    public var sourceName: String?

    public var sourceOrderId: String?

    public var sourceUrl: String?

    public var whiteType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.approveFlowParam?.validate()
        try self.bgCustomTemplateExtraDTO?.validate()
        try self.callBackInfo?.validate()
        try self.harmNoticeCombineParam?.validate()
        try self.influenceInfo?.validate()
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.affectCustomer != nil {
            map["AffectCustomer"] = self.affectCustomer!
        }
        if self.approveFlowParam != nil {
            map["ApproveFlowParam"] = self.approveFlowParam?.toMap()
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.bgCustomTemplateExtraDTO != nil {
            map["BgCustomTemplateExtraDTO"] = self.bgCustomTemplateExtraDTO?.toMap()
        }
        if self.blockInfos != nil {
            var tmp : [Any] = []
            for k in self.blockInfos! {
                tmp.append(k.toMap())
            }
            map["BlockInfos"] = tmp
        }
        if self.callBackInfo != nil {
            map["CallBackInfo"] = self.callBackInfo?.toMap()
        }
        if self.changeDataType != nil {
            map["ChangeDataType"] = self.changeDataType!
        }
        if self.changeDesc != nil {
            map["ChangeDesc"] = self.changeDesc!
        }
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeEnv != nil {
            map["ChangeEnv"] = self.changeEnv!
        }
        if self.changeItems != nil {
            map["ChangeItems"] = self.changeItems!
        }
        if self.changeObject != nil {
            map["ChangeObject"] = self.changeObject!
        }
        if self.changeOptSubType != nil {
            map["ChangeOptSubType"] = self.changeOptSubType!
        }
        if self.changeOptType != nil {
            map["ChangeOptType"] = self.changeOptType!
        }
        if self.changeReason != nil {
            map["ChangeReason"] = self.changeReason!
        }
        if self.changeRmarks != nil {
            map["ChangeRmarks"] = self.changeRmarks!
        }
        if self.changeSchemes != nil {
            map["ChangeSchemes"] = self.changeSchemes!
        }
        if self.changeStartTime != nil {
            map["ChangeStartTime"] = self.changeStartTime!
        }
        if self.changeSubTypeDesc != nil {
            map["ChangeSubTypeDesc"] = self.changeSubTypeDesc!
        }
        if self.changeSystem != nil {
            map["ChangeSystem"] = self.changeSystem!
        }
        if self.changeTimes != nil {
            var tmp : [Any] = []
            for k in self.changeTimes! {
                tmp.append(k.toMap())
            }
            map["ChangeTimes"] = tmp
        }
        if self.changeTitle != nil {
            map["ChangeTitle"] = self.changeTitle!
        }
        if self.changeValidation != nil {
            map["ChangeValidation"] = self.changeValidation!
        }
        if self.checker != nil {
            map["Checker"] = self.checker!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.damagedChangeNotices != nil {
            var tmp : [Any] = []
            for k in self.damagedChangeNotices! {
                tmp.append(k.toMap())
            }
            map["DamagedChangeNotices"] = tmp
        }
        if self.executorEmpId != nil {
            map["ExecutorEmpId"] = self.executorEmpId!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.follower != nil {
            map["Follower"] = self.follower!
        }
        if self.grayStatus != nil {
            map["GrayStatus"] = self.grayStatus!
        }
        if self.harmChangeNoticeEnum != nil {
            map["HarmChangeNoticeEnum"] = self.harmChangeNoticeEnum!
        }
        if self.harmNoticeCombineParam != nil {
            map["HarmNoticeCombineParam"] = self.harmNoticeCombineParam?.toMap()
        }
        if self.incidence != nil {
            map["Incidence"] = self.incidence!
        }
        if self.influenceInfo != nil {
            map["InfluenceInfo"] = self.influenceInfo?.toMap()
        }
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.needModifyDoc != nil {
            map["NeedModifyDoc"] = self.needModifyDoc!
        }
        if self.operateEmpNo != nil {
            map["OperateEmpNo"] = self.operateEmpNo!
        }
        if self.product != nil {
            var tmp : [Any] = []
            for k in self.product! {
                tmp.append(k.toMap())
            }
            map["Product"] = tmp
        }
        if self.releasePackageInfos != nil {
            var tmp : [Any] = []
            for k in self.releasePackageInfos! {
                tmp.append(k.toMap())
            }
            map["ReleasePackageInfos"] = tmp
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.reuseSourceOrderId != nil {
            map["ReuseSourceOrderId"] = self.reuseSourceOrderId!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.rollback != nil {
            map["Rollback"] = self.rollback!
        }
        if self.sourceName != nil {
            map["SourceName"] = self.sourceName!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        if self.whiteType != nil {
            map["whiteType"] = self.whiteType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AffectCustomer"] as? String {
            self.affectCustomer = value
        }
        if let value = dict["ApproveFlowParam"] as? [String: Any?] {
            var model = SafeChangeCheckRequest.ApproveFlowParam()
            model.fromMap(value)
            self.approveFlowParam = model
        }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["BgCustomTemplateExtraDTO"] as? [String: Any?] {
            var model = SafeChangeCheckRequest.BgCustomTemplateExtraDTO()
            model.fromMap(value)
            self.bgCustomTemplateExtraDTO = model
        }
        if let value = dict["BlockInfos"] as? [Any?] {
            var tmp : [SafeChangeCheckRequest.BlockInfos] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckRequest.BlockInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.blockInfos = tmp
        }
        if let value = dict["CallBackInfo"] as? [String: Any?] {
            var model = SafeChangeCheckRequest.CallBackInfo()
            model.fromMap(value)
            self.callBackInfo = model
        }
        if let value = dict["ChangeDataType"] as? String {
            self.changeDataType = value
        }
        if let value = dict["ChangeDesc"] as? String {
            self.changeDesc = value
        }
        if let value = dict["ChangeEndTime"] as? Int64 {
            self.changeEndTime = value
        }
        if let value = dict["ChangeEnv"] as? String {
            self.changeEnv = value
        }
        if let value = dict["ChangeItems"] as? String {
            self.changeItems = value
        }
        if let value = dict["ChangeObject"] as? String {
            self.changeObject = value
        }
        if let value = dict["ChangeOptSubType"] as? String {
            self.changeOptSubType = value
        }
        if let value = dict["ChangeOptType"] as? String {
            self.changeOptType = value
        }
        if let value = dict["ChangeReason"] as? String {
            self.changeReason = value
        }
        if let value = dict["ChangeRmarks"] as? String {
            self.changeRmarks = value
        }
        if let value = dict["ChangeSchemes"] as? String {
            self.changeSchemes = value
        }
        if let value = dict["ChangeStartTime"] as? Int64 {
            self.changeStartTime = value
        }
        if let value = dict["ChangeSubTypeDesc"] as? String {
            self.changeSubTypeDesc = value
        }
        if let value = dict["ChangeSystem"] as? String {
            self.changeSystem = value
        }
        if let value = dict["ChangeTimes"] as? [Any?] {
            var tmp : [SafeChangeCheckRequest.ChangeTimes] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckRequest.ChangeTimes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.changeTimes = tmp
        }
        if let value = dict["ChangeTitle"] as? String {
            self.changeTitle = value
        }
        if let value = dict["ChangeValidation"] as? String {
            self.changeValidation = value
        }
        if let value = dict["Checker"] as? [String] {
            self.checker = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["DamagedChangeNotices"] as? [Any?] {
            var tmp : [SafeChangeCheckRequest.DamagedChangeNotices] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckRequest.DamagedChangeNotices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.damagedChangeNotices = tmp
        }
        if let value = dict["ExecutorEmpId"] as? String {
            self.executorEmpId = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["Follower"] as? [String] {
            self.follower = value
        }
        if let value = dict["GrayStatus"] as? String {
            self.grayStatus = value
        }
        if let value = dict["HarmChangeNoticeEnum"] as? String {
            self.harmChangeNoticeEnum = value
        }
        if let value = dict["HarmNoticeCombineParam"] as? [String: Any?] {
            var model = SafeChangeCheckRequest.HarmNoticeCombineParam()
            model.fromMap(value)
            self.harmNoticeCombineParam = model
        }
        if let value = dict["Incidence"] as? String {
            self.incidence = value
        }
        if let value = dict["InfluenceInfo"] as? [String: Any?] {
            var model = SafeChangeCheckRequest.InfluenceInfo()
            model.fromMap(value)
            self.influenceInfo = model
        }
        if let value = dict["Instance"] as? [String: Any?] {
            var model = SafeChangeCheckRequest.Instance()
            model.fromMap(value)
            self.instance = model
        }
        if let value = dict["NeedModifyDoc"] as? String {
            self.needModifyDoc = value
        }
        if let value = dict["OperateEmpNo"] as? String {
            self.operateEmpNo = value
        }
        if let value = dict["Product"] as? [Any?] {
            var tmp : [SafeChangeCheckRequest.Product] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckRequest.Product()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.product = tmp
        }
        if let value = dict["ReleasePackageInfos"] as? [Any?] {
            var tmp : [SafeChangeCheckRequest.ReleasePackageInfos] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckRequest.ReleasePackageInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.releasePackageInfos = tmp
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["ReuseSourceOrderId"] as? String {
            self.reuseSourceOrderId = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["Rollback"] as? String {
            self.rollback = value
        }
        if let value = dict["SourceName"] as? String {
            self.sourceName = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["SourceUrl"] as? String {
            self.sourceUrl = value
        }
        if let value = dict["whiteType"] as? Int32 {
            self.whiteType = value
        }
    }
}

public class SafeChangeCheckShrinkRequest : Tea.TeaModel {
    public class ApproveFlowParam : Tea.TeaModel {
        public class ApproveNodes : Tea.TeaModel {
            public class ApproverDTO : Tea.TeaModel {
                public var approveDesc: String?

                public var approveTime: Int64?

                public var approverId: String?

                public var approverName: String?

                public var opinion: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.approveDesc != nil {
                        map["ApproveDesc"] = self.approveDesc!
                    }
                    if self.approveTime != nil {
                        map["ApproveTime"] = self.approveTime!
                    }
                    if self.approverId != nil {
                        map["ApproverId"] = self.approverId!
                    }
                    if self.approverName != nil {
                        map["ApproverName"] = self.approverName!
                    }
                    if self.opinion != nil {
                        map["Opinion"] = self.opinion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApproveDesc"] as? String {
                        self.approveDesc = value
                    }
                    if let value = dict["ApproveTime"] as? Int64 {
                        self.approveTime = value
                    }
                    if let value = dict["ApproverId"] as? String {
                        self.approverId = value
                    }
                    if let value = dict["ApproverName"] as? String {
                        self.approverName = value
                    }
                    if let value = dict["Opinion"] as? Int32 {
                        self.opinion = value
                    }
                }
            }
            public var approverDTO: [SafeChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes.ApproverDTO]?

            public var nodeStatus: Int32?

            public var processName: String?

            public var processNodeOrder: Int32?

            public var strategy: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.approverDTO != nil {
                    var tmp : [Any] = []
                    for k in self.approverDTO! {
                        tmp.append(k.toMap())
                    }
                    map["ApproverDTO"] = tmp
                }
                if self.nodeStatus != nil {
                    map["NodeStatus"] = self.nodeStatus!
                }
                if self.processName != nil {
                    map["ProcessName"] = self.processName!
                }
                if self.processNodeOrder != nil {
                    map["ProcessNodeOrder"] = self.processNodeOrder!
                }
                if self.strategy != nil {
                    map["Strategy"] = self.strategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApproverDTO"] as? [Any?] {
                    var tmp : [SafeChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes.ApproverDTO] = []
                    for v in value {
                        if v != nil {
                            var model = SafeChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes.ApproverDTO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.approverDTO = tmp
                }
                if let value = dict["NodeStatus"] as? Int32 {
                    self.nodeStatus = value
                }
                if let value = dict["ProcessName"] as? String {
                    self.processName = value
                }
                if let value = dict["ProcessNodeOrder"] as? Int32 {
                    self.processNodeOrder = value
                }
                if let value = dict["Strategy"] as? Int32 {
                    self.strategy = value
                }
            }
        }
        public var approveNodes: [SafeChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes]?

        public var flowStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveNodes != nil {
                var tmp : [Any] = []
                for k in self.approveNodes! {
                    tmp.append(k.toMap())
                }
                map["ApproveNodes"] = tmp
            }
            if self.flowStatus != nil {
                map["FlowStatus"] = self.flowStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveNodes"] as? [Any?] {
                var tmp : [SafeChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckShrinkRequest.ApproveFlowParam.ApproveNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.approveNodes = tmp
            }
            if let value = dict["FlowStatus"] as? Int32 {
                self.flowStatus = value
            }
        }
    }
    public class BgCustomTemplateExtraDTO : Tea.TeaModel {
        public var bgCustomTemplateInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bgCustomTemplateInfo != nil {
                map["BgCustomTemplateInfo"] = self.bgCustomTemplateInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BgCustomTemplateInfo"] as? String {
                self.bgCustomTemplateInfo = value
            }
        }
    }
    public class BlockInfos : Tea.TeaModel {
        public class HitInfos : Tea.TeaModel {
            public var hitInfo: String?

            public var hitObject: String?

            public var scope: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hitInfo != nil {
                    map["HitInfo"] = self.hitInfo!
                }
                if self.hitObject != nil {
                    map["HitObject"] = self.hitObject!
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HitInfo"] as? String {
                    self.hitInfo = value
                }
                if let value = dict["HitObject"] as? String {
                    self.hitObject = value
                }
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
            }
        }
        public var hitInfos: [SafeChangeCheckShrinkRequest.BlockInfos.HitInfos]?

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
            if self.hitInfos != nil {
                var tmp : [Any] = []
                for k in self.hitInfos! {
                    tmp.append(k.toMap())
                }
                map["HitInfos"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HitInfos"] as? [Any?] {
                var tmp : [SafeChangeCheckShrinkRequest.BlockInfos.HitInfos] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckShrinkRequest.BlockInfos.HitInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hitInfos = tmp
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
        }
    }
    public class CallBackInfo : Tea.TeaModel {
        public var api: String?

        public var apiVersion: String?

        public var endPoint: String?

        public var popProduct: String?

        public var regionId: String?

        public var type: String?

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
            if self.api != nil {
                map["Api"] = self.api!
            }
            if self.apiVersion != nil {
                map["ApiVersion"] = self.apiVersion!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.popProduct != nil {
                map["PopProduct"] = self.popProduct!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Api"] as? String {
                self.api = value
            }
            if let value = dict["ApiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["PopProduct"] as? String {
                self.popProduct = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public class ChangeTimes : Tea.TeaModel {
        public var changeEndTime: Int64?

        public var changeStartTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeEndTime != nil {
                map["ChangeEndTime"] = self.changeEndTime!
            }
            if self.changeStartTime != nil {
                map["ChangeStartTime"] = self.changeStartTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeEndTime"] as? Int64 {
                self.changeEndTime = value
            }
            if let value = dict["ChangeStartTime"] as? Int64 {
                self.changeStartTime = value
            }
        }
    }
    public class DamagedChangeNotices : Tea.TeaModel {
        public class SensitiveCustomers : Tea.TeaModel {
            public class CustomerInfo : Tea.TeaModel {
                public var extraInfo: [String: Any]?

                public var type: String?

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
                    if self.extraInfo != nil {
                        map["ExtraInfo"] = self.extraInfo!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExtraInfo"] as? [String: Any] {
                        self.extraInfo = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public var customerInfo: [SafeChangeCheckShrinkRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo]?

            public var productCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInfo != nil {
                    var tmp : [Any] = []
                    for k in self.customerInfo! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInfo"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomerInfo"] as? [Any?] {
                    var tmp : [SafeChangeCheckShrinkRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo] = []
                    for v in value {
                        if v != nil {
                            var model = SafeChangeCheckShrinkRequest.DamagedChangeNotices.SensitiveCustomers.CustomerInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customerInfo = tmp
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
            }
        }
        public var bgCancelNoticeContent: String?

        public var bgCancelNoticeEventId: String?

        public var channel: [String]?

        public var content: String?

        public var eventId: String?

        public var sensitiveCustomers: [SafeChangeCheckShrinkRequest.DamagedChangeNotices.SensitiveCustomers]?

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
            if self.bgCancelNoticeContent != nil {
                map["BgCancelNoticeContent"] = self.bgCancelNoticeContent!
            }
            if self.bgCancelNoticeEventId != nil {
                map["BgCancelNoticeEventId"] = self.bgCancelNoticeEventId!
            }
            if self.channel != nil {
                map["Channel"] = self.channel!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.sensitiveCustomers != nil {
                var tmp : [Any] = []
                for k in self.sensitiveCustomers! {
                    tmp.append(k.toMap())
                }
                map["SensitiveCustomers"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BgCancelNoticeContent"] as? String {
                self.bgCancelNoticeContent = value
            }
            if let value = dict["BgCancelNoticeEventId"] as? String {
                self.bgCancelNoticeEventId = value
            }
            if let value = dict["Channel"] as? [String] {
                self.channel = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["SensitiveCustomers"] as? [Any?] {
                var tmp : [SafeChangeCheckShrinkRequest.DamagedChangeNotices.SensitiveCustomers] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckShrinkRequest.DamagedChangeNotices.SensitiveCustomers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveCustomers = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class InfluenceInfo : Tea.TeaModel {
        public class NoticeInfos : Tea.TeaModel {
            public var channel: [String]?

            public var content: String?

            public var eventId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.eventId != nil {
                    map["EventId"] = self.eventId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Channel"] as? [String] {
                    self.channel = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["EventId"] as? String {
                    self.eventId = value
                }
            }
        }
        public class SensitiveCustomers : Tea.TeaModel {
            public class CustomerInfo : Tea.TeaModel {
                public var extraInfo: [String: Any]?

                public var type: String?

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
                    if self.extraInfo != nil {
                        map["ExtraInfo"] = self.extraInfo!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExtraInfo"] as? [String: Any] {
                        self.extraInfo = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public var customerInfo: [SafeChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo]?

            public var productCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInfo != nil {
                    var tmp : [Any] = []
                    for k in self.customerInfo! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInfo"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomerInfo"] as? [Any?] {
                    var tmp : [SafeChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo] = []
                    for v in value {
                        if v != nil {
                            var model = SafeChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers.CustomerInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customerInfo = tmp
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
            }
        }
        public var noticeInfos: [SafeChangeCheckShrinkRequest.InfluenceInfo.NoticeInfos]?

        public var sensitiveCustomers: [SafeChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.noticeInfos != nil {
                var tmp : [Any] = []
                for k in self.noticeInfos! {
                    tmp.append(k.toMap())
                }
                map["NoticeInfos"] = tmp
            }
            if self.sensitiveCustomers != nil {
                var tmp : [Any] = []
                for k in self.sensitiveCustomers! {
                    tmp.append(k.toMap())
                }
                map["SensitiveCustomers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NoticeInfos"] as? [Any?] {
                var tmp : [SafeChangeCheckShrinkRequest.InfluenceInfo.NoticeInfos] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckShrinkRequest.InfluenceInfo.NoticeInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.noticeInfos = tmp
            }
            if let value = dict["SensitiveCustomers"] as? [Any?] {
                var tmp : [SafeChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckShrinkRequest.InfluenceInfo.SensitiveCustomers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveCustomers = tmp
            }
        }
    }
    public class Instance : Tea.TeaModel {
        public var nc: [String]?

        public var uids: [String]?

        public var attributionApp: [String]?

        public var influenceApp: [String]?

        public var instance: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nc != nil {
                map["Nc"] = self.nc!
            }
            if self.uids != nil {
                map["Uids"] = self.uids!
            }
            if self.attributionApp != nil {
                map["attributionApp"] = self.attributionApp!
            }
            if self.influenceApp != nil {
                map["influenceApp"] = self.influenceApp!
            }
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Nc"] as? [String] {
                self.nc = value
            }
            if let value = dict["Uids"] as? [String] {
                self.uids = value
            }
            if let value = dict["attributionApp"] as? [String] {
                self.attributionApp = value
            }
            if let value = dict["influenceApp"] as? [String] {
                self.influenceApp = value
            }
            if let value = dict["instance"] as? [String] {
                self.instance = value
            }
        }
    }
    public class Product : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class ReleasePackageInfos : Tea.TeaModel {
        public var productCode: String?

        public var releasePackage: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.releasePackage != nil {
                map["ReleasePackage"] = self.releasePackage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ReleasePackage"] as? [String] {
                self.releasePackage = value
            }
        }
    }
    public var affectCustomer: String?

    public var approveFlowParam: SafeChangeCheckShrinkRequest.ApproveFlowParam?

    public var authKey: String?

    public var authSign: String?

    public var bgCustomTemplateExtraDTO: SafeChangeCheckShrinkRequest.BgCustomTemplateExtraDTO?

    public var blockInfos: [SafeChangeCheckShrinkRequest.BlockInfos]?

    public var callBackInfo: SafeChangeCheckShrinkRequest.CallBackInfo?

    public var changeDataType: String?

    public var changeDesc: String?

    public var changeEndTime: Int64?

    public var changeEnv: String?

    public var changeItems: String?

    public var changeObject: String?

    public var changeOptSubType: String?

    public var changeOptType: String?

    public var changeReason: String?

    public var changeRmarks: String?

    public var changeSchemes: String?

    public var changeStartTime: Int64?

    public var changeSubTypeDesc: String?

    public var changeSystem: String?

    public var changeTimes: [SafeChangeCheckShrinkRequest.ChangeTimes]?

    public var changeTitle: String?

    public var changeValidation: String?

    public var checker: [String]?

    public var creatorEmpId: String?

    public var damagedChangeNotices: [SafeChangeCheckShrinkRequest.DamagedChangeNotices]?

    public var executorEmpId: String?

    public var extraInfo: String?

    public var follower: [String]?

    public var grayStatus: String?

    public var harmChangeNoticeEnum: String?

    public var harmNoticeCombineParamShrink: String?

    public var incidence: String?

    public var influenceInfo: SafeChangeCheckShrinkRequest.InfluenceInfo?

    public var instance: SafeChangeCheckShrinkRequest.Instance?

    public var needModifyDoc: String?

    public var operateEmpNo: String?

    public var product: [SafeChangeCheckShrinkRequest.Product]?

    public var releasePackageInfos: [SafeChangeCheckShrinkRequest.ReleasePackageInfos]?

    public var reqTimestamp: Int64?

    public var reuseSourceOrderId: String?

    public var riskLevel: String?

    public var rollback: String?

    public var sourceName: String?

    public var sourceOrderId: String?

    public var sourceUrl: String?

    public var whiteType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.approveFlowParam?.validate()
        try self.bgCustomTemplateExtraDTO?.validate()
        try self.callBackInfo?.validate()
        try self.influenceInfo?.validate()
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.affectCustomer != nil {
            map["AffectCustomer"] = self.affectCustomer!
        }
        if self.approveFlowParam != nil {
            map["ApproveFlowParam"] = self.approveFlowParam?.toMap()
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.bgCustomTemplateExtraDTO != nil {
            map["BgCustomTemplateExtraDTO"] = self.bgCustomTemplateExtraDTO?.toMap()
        }
        if self.blockInfos != nil {
            var tmp : [Any] = []
            for k in self.blockInfos! {
                tmp.append(k.toMap())
            }
            map["BlockInfos"] = tmp
        }
        if self.callBackInfo != nil {
            map["CallBackInfo"] = self.callBackInfo?.toMap()
        }
        if self.changeDataType != nil {
            map["ChangeDataType"] = self.changeDataType!
        }
        if self.changeDesc != nil {
            map["ChangeDesc"] = self.changeDesc!
        }
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeEnv != nil {
            map["ChangeEnv"] = self.changeEnv!
        }
        if self.changeItems != nil {
            map["ChangeItems"] = self.changeItems!
        }
        if self.changeObject != nil {
            map["ChangeObject"] = self.changeObject!
        }
        if self.changeOptSubType != nil {
            map["ChangeOptSubType"] = self.changeOptSubType!
        }
        if self.changeOptType != nil {
            map["ChangeOptType"] = self.changeOptType!
        }
        if self.changeReason != nil {
            map["ChangeReason"] = self.changeReason!
        }
        if self.changeRmarks != nil {
            map["ChangeRmarks"] = self.changeRmarks!
        }
        if self.changeSchemes != nil {
            map["ChangeSchemes"] = self.changeSchemes!
        }
        if self.changeStartTime != nil {
            map["ChangeStartTime"] = self.changeStartTime!
        }
        if self.changeSubTypeDesc != nil {
            map["ChangeSubTypeDesc"] = self.changeSubTypeDesc!
        }
        if self.changeSystem != nil {
            map["ChangeSystem"] = self.changeSystem!
        }
        if self.changeTimes != nil {
            var tmp : [Any] = []
            for k in self.changeTimes! {
                tmp.append(k.toMap())
            }
            map["ChangeTimes"] = tmp
        }
        if self.changeTitle != nil {
            map["ChangeTitle"] = self.changeTitle!
        }
        if self.changeValidation != nil {
            map["ChangeValidation"] = self.changeValidation!
        }
        if self.checker != nil {
            map["Checker"] = self.checker!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.damagedChangeNotices != nil {
            var tmp : [Any] = []
            for k in self.damagedChangeNotices! {
                tmp.append(k.toMap())
            }
            map["DamagedChangeNotices"] = tmp
        }
        if self.executorEmpId != nil {
            map["ExecutorEmpId"] = self.executorEmpId!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.follower != nil {
            map["Follower"] = self.follower!
        }
        if self.grayStatus != nil {
            map["GrayStatus"] = self.grayStatus!
        }
        if self.harmChangeNoticeEnum != nil {
            map["HarmChangeNoticeEnum"] = self.harmChangeNoticeEnum!
        }
        if self.harmNoticeCombineParamShrink != nil {
            map["HarmNoticeCombineParam"] = self.harmNoticeCombineParamShrink!
        }
        if self.incidence != nil {
            map["Incidence"] = self.incidence!
        }
        if self.influenceInfo != nil {
            map["InfluenceInfo"] = self.influenceInfo?.toMap()
        }
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.needModifyDoc != nil {
            map["NeedModifyDoc"] = self.needModifyDoc!
        }
        if self.operateEmpNo != nil {
            map["OperateEmpNo"] = self.operateEmpNo!
        }
        if self.product != nil {
            var tmp : [Any] = []
            for k in self.product! {
                tmp.append(k.toMap())
            }
            map["Product"] = tmp
        }
        if self.releasePackageInfos != nil {
            var tmp : [Any] = []
            for k in self.releasePackageInfos! {
                tmp.append(k.toMap())
            }
            map["ReleasePackageInfos"] = tmp
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.reuseSourceOrderId != nil {
            map["ReuseSourceOrderId"] = self.reuseSourceOrderId!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.rollback != nil {
            map["Rollback"] = self.rollback!
        }
        if self.sourceName != nil {
            map["SourceName"] = self.sourceName!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        if self.whiteType != nil {
            map["whiteType"] = self.whiteType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AffectCustomer"] as? String {
            self.affectCustomer = value
        }
        if let value = dict["ApproveFlowParam"] as? [String: Any?] {
            var model = SafeChangeCheckShrinkRequest.ApproveFlowParam()
            model.fromMap(value)
            self.approveFlowParam = model
        }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["BgCustomTemplateExtraDTO"] as? [String: Any?] {
            var model = SafeChangeCheckShrinkRequest.BgCustomTemplateExtraDTO()
            model.fromMap(value)
            self.bgCustomTemplateExtraDTO = model
        }
        if let value = dict["BlockInfos"] as? [Any?] {
            var tmp : [SafeChangeCheckShrinkRequest.BlockInfos] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckShrinkRequest.BlockInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.blockInfos = tmp
        }
        if let value = dict["CallBackInfo"] as? [String: Any?] {
            var model = SafeChangeCheckShrinkRequest.CallBackInfo()
            model.fromMap(value)
            self.callBackInfo = model
        }
        if let value = dict["ChangeDataType"] as? String {
            self.changeDataType = value
        }
        if let value = dict["ChangeDesc"] as? String {
            self.changeDesc = value
        }
        if let value = dict["ChangeEndTime"] as? Int64 {
            self.changeEndTime = value
        }
        if let value = dict["ChangeEnv"] as? String {
            self.changeEnv = value
        }
        if let value = dict["ChangeItems"] as? String {
            self.changeItems = value
        }
        if let value = dict["ChangeObject"] as? String {
            self.changeObject = value
        }
        if let value = dict["ChangeOptSubType"] as? String {
            self.changeOptSubType = value
        }
        if let value = dict["ChangeOptType"] as? String {
            self.changeOptType = value
        }
        if let value = dict["ChangeReason"] as? String {
            self.changeReason = value
        }
        if let value = dict["ChangeRmarks"] as? String {
            self.changeRmarks = value
        }
        if let value = dict["ChangeSchemes"] as? String {
            self.changeSchemes = value
        }
        if let value = dict["ChangeStartTime"] as? Int64 {
            self.changeStartTime = value
        }
        if let value = dict["ChangeSubTypeDesc"] as? String {
            self.changeSubTypeDesc = value
        }
        if let value = dict["ChangeSystem"] as? String {
            self.changeSystem = value
        }
        if let value = dict["ChangeTimes"] as? [Any?] {
            var tmp : [SafeChangeCheckShrinkRequest.ChangeTimes] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckShrinkRequest.ChangeTimes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.changeTimes = tmp
        }
        if let value = dict["ChangeTitle"] as? String {
            self.changeTitle = value
        }
        if let value = dict["ChangeValidation"] as? String {
            self.changeValidation = value
        }
        if let value = dict["Checker"] as? [String] {
            self.checker = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["DamagedChangeNotices"] as? [Any?] {
            var tmp : [SafeChangeCheckShrinkRequest.DamagedChangeNotices] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckShrinkRequest.DamagedChangeNotices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.damagedChangeNotices = tmp
        }
        if let value = dict["ExecutorEmpId"] as? String {
            self.executorEmpId = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["Follower"] as? [String] {
            self.follower = value
        }
        if let value = dict["GrayStatus"] as? String {
            self.grayStatus = value
        }
        if let value = dict["HarmChangeNoticeEnum"] as? String {
            self.harmChangeNoticeEnum = value
        }
        if let value = dict["HarmNoticeCombineParam"] as? String {
            self.harmNoticeCombineParamShrink = value
        }
        if let value = dict["Incidence"] as? String {
            self.incidence = value
        }
        if let value = dict["InfluenceInfo"] as? [String: Any?] {
            var model = SafeChangeCheckShrinkRequest.InfluenceInfo()
            model.fromMap(value)
            self.influenceInfo = model
        }
        if let value = dict["Instance"] as? [String: Any?] {
            var model = SafeChangeCheckShrinkRequest.Instance()
            model.fromMap(value)
            self.instance = model
        }
        if let value = dict["NeedModifyDoc"] as? String {
            self.needModifyDoc = value
        }
        if let value = dict["OperateEmpNo"] as? String {
            self.operateEmpNo = value
        }
        if let value = dict["Product"] as? [Any?] {
            var tmp : [SafeChangeCheckShrinkRequest.Product] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckShrinkRequest.Product()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.product = tmp
        }
        if let value = dict["ReleasePackageInfos"] as? [Any?] {
            var tmp : [SafeChangeCheckShrinkRequest.ReleasePackageInfos] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeCheckShrinkRequest.ReleasePackageInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.releasePackageInfos = tmp
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["ReuseSourceOrderId"] as? String {
            self.reuseSourceOrderId = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["Rollback"] as? String {
            self.rollback = value
        }
        if let value = dict["SourceName"] as? String {
            self.sourceName = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["SourceUrl"] as? String {
            self.sourceUrl = value
        }
        if let value = dict["whiteType"] as? Int32 {
            self.whiteType = value
        }
    }
}

public class SafeChangeCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RuleDetailUrlList : Tea.TeaModel {
            public var sceneEnum: String?

            public var title: String?

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
                if self.sceneEnum != nil {
                    map["SceneEnum"] = self.sceneEnum!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SceneEnum"] as? String {
                    self.sceneEnum = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public var approveResultUrl: String?

        public var bgCheckStatus: String?

        public var bgVid: String?

        public var checkResultUrl: String?

        public var checkStatus: String?

        public var checkholdReason: [String]?

        public var ruleDetailUrlList: [SafeChangeCheckResponseBody.Data.RuleDetailUrlList]?

        public var sourceOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveResultUrl != nil {
                map["ApproveResultUrl"] = self.approveResultUrl!
            }
            if self.bgCheckStatus != nil {
                map["BgCheckStatus"] = self.bgCheckStatus!
            }
            if self.bgVid != nil {
                map["BgVid"] = self.bgVid!
            }
            if self.checkResultUrl != nil {
                map["CheckResultUrl"] = self.checkResultUrl!
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.checkholdReason != nil {
                map["CheckholdReason"] = self.checkholdReason!
            }
            if self.ruleDetailUrlList != nil {
                var tmp : [Any] = []
                for k in self.ruleDetailUrlList! {
                    tmp.append(k.toMap())
                }
                map["RuleDetailUrlList"] = tmp
            }
            if self.sourceOrderId != nil {
                map["SourceOrderId"] = self.sourceOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveResultUrl"] as? String {
                self.approveResultUrl = value
            }
            if let value = dict["BgCheckStatus"] as? String {
                self.bgCheckStatus = value
            }
            if let value = dict["BgVid"] as? String {
                self.bgVid = value
            }
            if let value = dict["CheckResultUrl"] as? String {
                self.checkResultUrl = value
            }
            if let value = dict["CheckStatus"] as? String {
                self.checkStatus = value
            }
            if let value = dict["CheckholdReason"] as? [String] {
                self.checkholdReason = value
            }
            if let value = dict["RuleDetailUrlList"] as? [Any?] {
                var tmp : [SafeChangeCheckResponseBody.Data.RuleDetailUrlList] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeCheckResponseBody.Data.RuleDetailUrlList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleDetailUrlList = tmp
            }
            if let value = dict["SourceOrderId"] as? String {
                self.sourceOrderId = value
            }
        }
    }
    public var code: Int32?

    public var data: SafeChangeCheckResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SafeChangeCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class SafeChangeCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SafeChangeCheckResponseBody?

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
            var model = SafeChangeCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SafeChangeEndRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var changeEndTime: Int64?

    public var changeResult: String?

    public var curBatchNo: Int32?

    public var executorEmpId: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public var totalBatchNo: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeResult != nil {
            map["ChangeResult"] = self.changeResult!
        }
        if self.curBatchNo != nil {
            map["CurBatchNo"] = self.curBatchNo!
        }
        if self.executorEmpId != nil {
            map["ExecutorEmpId"] = self.executorEmpId!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.totalBatchNo != nil {
            map["TotalBatchNo"] = self.totalBatchNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ChangeEndTime"] as? Int64 {
            self.changeEndTime = value
        }
        if let value = dict["ChangeResult"] as? String {
            self.changeResult = value
        }
        if let value = dict["CurBatchNo"] as? Int32 {
            self.curBatchNo = value
        }
        if let value = dict["ExecutorEmpId"] as? String {
            self.executorEmpId = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["TotalBatchNo"] as? Int32 {
            self.totalBatchNo = value
        }
    }
}

public class SafeChangeEndResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: Int32?

    public var data: SafeChangeEndResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SafeChangeEndResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class SafeChangeEndResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SafeChangeEndResponseBody?

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
            var model = SafeChangeEndResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SafeChangeQueryRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var needValidate: Bool?

    public var queryType: String?

    public var reqTimestamp: Int64?

    public var returnType: Bool?

    public var sourceOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.needValidate != nil {
            map["NeedValidate"] = self.needValidate!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.returnType != nil {
            map["ReturnType"] = self.returnType!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["NeedValidate"] as? Bool {
            self.needValidate = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["ReturnType"] as? Bool {
            self.returnType = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
    }
}

public class SafeChangeQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChangeTimes : Tea.TeaModel {
            public var changeEndTime: Int64?

            public var changeStartTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.changeEndTime != nil {
                    map["ChangeEndTime"] = self.changeEndTime!
                }
                if self.changeStartTime != nil {
                    map["ChangeStartTime"] = self.changeStartTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChangeEndTime"] as? Int64 {
                    self.changeEndTime = value
                }
                if let value = dict["ChangeStartTime"] as? Int64 {
                    self.changeStartTime = value
                }
            }
        }
        public var approveResultUrl: String?

        public var approveStatus: String?

        public var changeCancel: String?

        public var changeEndTime: Int64?

        public var changeObject: String?

        public var changeOptType: String?

        public var changeResult: String?

        public var changeStartTime: Int64?

        public var changeStatus: String?

        public var changeSystem: String?

        public var changeTimes: [SafeChangeQueryResponseBody.Data.ChangeTimes]?

        public var changeTitle: String?

        public var checkResultUrl: String?

        public var checkStatus: String?

        public var checkholdReason: [String]?

        public var executorEmpId: String?

        public var executorEmpName: String?

        public var sourceOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveResultUrl != nil {
                map["ApproveResultUrl"] = self.approveResultUrl!
            }
            if self.approveStatus != nil {
                map["ApproveStatus"] = self.approveStatus!
            }
            if self.changeCancel != nil {
                map["ChangeCancel"] = self.changeCancel!
            }
            if self.changeEndTime != nil {
                map["ChangeEndTime"] = self.changeEndTime!
            }
            if self.changeObject != nil {
                map["ChangeObject"] = self.changeObject!
            }
            if self.changeOptType != nil {
                map["ChangeOptType"] = self.changeOptType!
            }
            if self.changeResult != nil {
                map["ChangeResult"] = self.changeResult!
            }
            if self.changeStartTime != nil {
                map["ChangeStartTime"] = self.changeStartTime!
            }
            if self.changeStatus != nil {
                map["ChangeStatus"] = self.changeStatus!
            }
            if self.changeSystem != nil {
                map["ChangeSystem"] = self.changeSystem!
            }
            if self.changeTimes != nil {
                var tmp : [Any] = []
                for k in self.changeTimes! {
                    tmp.append(k.toMap())
                }
                map["ChangeTimes"] = tmp
            }
            if self.changeTitle != nil {
                map["ChangeTitle"] = self.changeTitle!
            }
            if self.checkResultUrl != nil {
                map["CheckResultUrl"] = self.checkResultUrl!
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.checkholdReason != nil {
                map["CheckholdReason"] = self.checkholdReason!
            }
            if self.executorEmpId != nil {
                map["ExecutorEmpId"] = self.executorEmpId!
            }
            if self.executorEmpName != nil {
                map["ExecutorEmpName"] = self.executorEmpName!
            }
            if self.sourceOrderId != nil {
                map["SourceOrderId"] = self.sourceOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveResultUrl"] as? String {
                self.approveResultUrl = value
            }
            if let value = dict["ApproveStatus"] as? String {
                self.approveStatus = value
            }
            if let value = dict["ChangeCancel"] as? String {
                self.changeCancel = value
            }
            if let value = dict["ChangeEndTime"] as? Int64 {
                self.changeEndTime = value
            }
            if let value = dict["ChangeObject"] as? String {
                self.changeObject = value
            }
            if let value = dict["ChangeOptType"] as? String {
                self.changeOptType = value
            }
            if let value = dict["ChangeResult"] as? String {
                self.changeResult = value
            }
            if let value = dict["ChangeStartTime"] as? Int64 {
                self.changeStartTime = value
            }
            if let value = dict["ChangeStatus"] as? String {
                self.changeStatus = value
            }
            if let value = dict["ChangeSystem"] as? String {
                self.changeSystem = value
            }
            if let value = dict["ChangeTimes"] as? [Any?] {
                var tmp : [SafeChangeQueryResponseBody.Data.ChangeTimes] = []
                for v in value {
                    if v != nil {
                        var model = SafeChangeQueryResponseBody.Data.ChangeTimes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.changeTimes = tmp
            }
            if let value = dict["ChangeTitle"] as? String {
                self.changeTitle = value
            }
            if let value = dict["CheckResultUrl"] as? String {
                self.checkResultUrl = value
            }
            if let value = dict["CheckStatus"] as? String {
                self.checkStatus = value
            }
            if let value = dict["CheckholdReason"] as? [String] {
                self.checkholdReason = value
            }
            if let value = dict["ExecutorEmpId"] as? String {
                self.executorEmpId = value
            }
            if let value = dict["ExecutorEmpName"] as? String {
                self.executorEmpName = value
            }
            if let value = dict["SourceOrderId"] as? String {
                self.sourceOrderId = value
            }
        }
    }
    public var code: Int32?

    public var data: SafeChangeQueryResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SafeChangeQueryResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class SafeChangeQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SafeChangeQueryResponseBody?

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
            var model = SafeChangeQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SafeChangeQueryApproveFlowRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public var stage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.stage != nil {
            map["Stage"] = self.stage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["Stage"] as? String {
            self.stage = value
        }
    }
}

public class SafeChangeQueryApproveFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var approveStrategy: String?

        public var approver: String?

        public var nodeName: String?

        public var nodeStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveStrategy != nil {
                map["ApproveStrategy"] = self.approveStrategy!
            }
            if self.approver != nil {
                map["Approver"] = self.approver!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.nodeStatus != nil {
                map["NodeStatus"] = self.nodeStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveStrategy"] as? String {
                self.approveStrategy = value
            }
            if let value = dict["Approver"] as? String {
                self.approver = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["NodeStatus"] as? String {
                self.nodeStatus = value
            }
        }
    }
    public var code: Int32?

    public var data: [SafeChangeQueryApproveFlowResponseBody.Data]?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [SafeChangeQueryApproveFlowResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = SafeChangeQueryApproveFlowResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class SafeChangeQueryApproveFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SafeChangeQueryApproveFlowResponseBody?

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
            var model = SafeChangeQueryApproveFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SafeChangeStartRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var changeEndTime: Int64?

    public var changeObject: String?

    public var changeOptType: String?

    public var changeStartTime: Int64?

    public var changeTitle: String?

    public var creatorEmpId: String?

    public var curBatchNo: Int32?

    public var executorEmpId: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public var totalBatchNo: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeObject != nil {
            map["ChangeObject"] = self.changeObject!
        }
        if self.changeOptType != nil {
            map["ChangeOptType"] = self.changeOptType!
        }
        if self.changeStartTime != nil {
            map["ChangeStartTime"] = self.changeStartTime!
        }
        if self.changeTitle != nil {
            map["ChangeTitle"] = self.changeTitle!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.curBatchNo != nil {
            map["CurBatchNo"] = self.curBatchNo!
        }
        if self.executorEmpId != nil {
            map["ExecutorEmpId"] = self.executorEmpId!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        if self.totalBatchNo != nil {
            map["TotalBatchNo"] = self.totalBatchNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ChangeEndTime"] as? Int64 {
            self.changeEndTime = value
        }
        if let value = dict["ChangeObject"] as? String {
            self.changeObject = value
        }
        if let value = dict["ChangeOptType"] as? String {
            self.changeOptType = value
        }
        if let value = dict["ChangeStartTime"] as? Int64 {
            self.changeStartTime = value
        }
        if let value = dict["ChangeTitle"] as? String {
            self.changeTitle = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["CurBatchNo"] as? Int32 {
            self.curBatchNo = value
        }
        if let value = dict["ExecutorEmpId"] as? String {
            self.executorEmpId = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
        if let value = dict["TotalBatchNo"] as? Int32 {
            self.totalBatchNo = value
        }
    }
}

public class SafeChangeStartResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var approveResultUrl: String?

        public var checkResultUrl: String?

        public var status: String?

        public var subSatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveResultUrl != nil {
                map["ApproveResultUrl"] = self.approveResultUrl!
            }
            if self.checkResultUrl != nil {
                map["CheckResultUrl"] = self.checkResultUrl!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subSatus != nil {
                map["SubSatus"] = self.subSatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveResultUrl"] as? String {
                self.approveResultUrl = value
            }
            if let value = dict["CheckResultUrl"] as? String {
                self.checkResultUrl = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubSatus"] as? String {
                self.subSatus = value
            }
        }
    }
    public var code: Int32?

    public var data: SafeChangeStartResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SafeChangeStartResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class SafeChangeStartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SafeChangeStartResponseBody?

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
            var model = SafeChangeStartResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SafeChangeStartApproveRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var creatorEmpId: String?

    public var extraInfo: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
    }
}

public class SafeChangeStartApproveResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var approveStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approveStatus != nil {
                map["ApproveStatus"] = self.approveStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveStatus"] as? String {
                self.approveStatus = value
            }
        }
    }
    public var code: Int32?

    public var data: SafeChangeStartApproveResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SafeChangeStartApproveResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class SafeChangeStartApproveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SafeChangeStartApproveResponseBody?

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
            var model = SafeChangeStartApproveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SafeScopeDataRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var category: String?

    public var codeList: String?

    public var factor: String?

    public var groupBy: String?

    public var idList: String?

    public var item: String?

    public var limit: Int32?

    public var needTotalCount: Bool?

    public var orderBy: String?

    public var orderDirection: String?

    public var page: Int32?

    public var parentCode: String?

    public var parentId: Int64?

    public var productCode: String?

    public var productId: Int64?

    public var regionNameEn: String?

    public var reqTimestamp: Int64?

    public var searchValue: String?

    public var type: Int32?

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
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.codeList != nil {
            map["CodeList"] = self.codeList!
        }
        if self.factor != nil {
            map["Factor"] = self.factor!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.idList != nil {
            map["IdList"] = self.idList!
        }
        if self.item != nil {
            map["Item"] = self.item!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.needTotalCount != nil {
            map["NeedTotalCount"] = self.needTotalCount!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["OrderDirection"] = self.orderDirection!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.parentCode != nil {
            map["ParentCode"] = self.parentCode!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionNameEn != nil {
            map["RegionNameEn"] = self.regionNameEn!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["CodeList"] as? String {
            self.codeList = value
        }
        if let value = dict["Factor"] as? String {
            self.factor = value
        }
        if let value = dict["GroupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["IdList"] as? String {
            self.idList = value
        }
        if let value = dict["Item"] as? String {
            self.item = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NeedTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["ParentCode"] as? String {
            self.parentCode = value
        }
        if let value = dict["ParentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RegionNameEn"] as? String {
            self.regionNameEn = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SearchValue"] as? String {
            self.searchValue = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
    }
}

public class SafeScopeDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Pagination : Tea.TeaModel {
            public var limit: Int32?

            public var page: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limit != nil {
                    map["Limit"] = self.limit!
                }
                if self.page != nil {
                    map["Page"] = self.page!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limit"] as? Int32 {
                    self.limit = value
                }
                if let value = dict["Page"] as? Int32 {
                    self.page = value
                }
            }
        }
        public var data: [Any]?

        public var extraInfo: [String: String]?

        public var pagination: SafeScopeDataResponseBody.Data.Pagination?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any] {
                self.data = value
            }
            if let value = dict["ExtraInfo"] as? [String: String] {
                self.extraInfo = value
            }
            if let value = dict["Pagination"] as? [String: Any?] {
                var model = SafeScopeDataResponseBody.Data.Pagination()
                model.fromMap(value)
                self.pagination = model
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: SafeScopeDataResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SafeScopeDataResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class SafeScopeDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SafeScopeDataResponseBody?

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
            var model = SafeScopeDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartApproveRequest : Tea.TeaModel {
    public var authKey: String?

    public var authSign: String?

    public var creatorEmpId: String?

    public var extraInfo: String?

    public var reqTimestamp: Int64?

    public var sourceOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.creatorEmpId != nil {
            map["CreatorEmpId"] = self.creatorEmpId!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.sourceOrderId != nil {
            map["SourceOrderId"] = self.sourceOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["CreatorEmpId"] as? String {
            self.creatorEmpId = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SourceOrderId"] as? String {
            self.sourceOrderId = value
        }
    }
}

public class StartApproveResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class StartApproveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartApproveResponseBody?

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
            var model = StartApproveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncProductRequest : Tea.TeaModel {
    public class SyncProductList : Tea.TeaModel {
        public class InnerProductList : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var code: String?

        public var innerProductList: [SyncProductRequest.SyncProductList.InnerProductList]?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.innerProductList != nil {
                var tmp : [Any] = []
                for k in self.innerProductList! {
                    tmp.append(k.toMap())
                }
                map["InnerProductList"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["InnerProductList"] as? [Any?] {
                var tmp : [SyncProductRequest.SyncProductList.InnerProductList] = []
                for v in value {
                    if v != nil {
                        var model = SyncProductRequest.SyncProductList.InnerProductList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.innerProductList = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var authKey: String?

    public var authSign: String?

    public var reqTimestamp: Int64?

    public var syncProductList: [SyncProductRequest.SyncProductList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authSign != nil {
            map["AuthSign"] = self.authSign!
        }
        if self.reqTimestamp != nil {
            map["ReqTimestamp"] = self.reqTimestamp!
        }
        if self.syncProductList != nil {
            var tmp : [Any] = []
            for k in self.syncProductList! {
                tmp.append(k.toMap())
            }
            map["SyncProductList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["AuthSign"] as? String {
            self.authSign = value
        }
        if let value = dict["ReqTimestamp"] as? Int64 {
            self.reqTimestamp = value
        }
        if let value = dict["SyncProductList"] as? [Any?] {
            var tmp : [SyncProductRequest.SyncProductList] = []
            for v in value {
                if v != nil {
                    var model = SyncProductRequest.SyncProductList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.syncProductList = tmp
        }
    }
}

public class SyncProductResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class SyncProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncProductResponseBody?

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
            var model = SyncProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
