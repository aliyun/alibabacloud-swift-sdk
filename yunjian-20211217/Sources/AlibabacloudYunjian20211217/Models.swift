import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDemandPlanHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class CreateDemandPlanRequest : Tea.TeaModel {
    public var accountId: String?

    public var description_: String?

    public var name: String?

    public var period: String?

    public var source: String?

    public var targetCid: Int64?

    public var type: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.period != nil {
            map["period"] = self.period!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.targetCid != nil {
            map["targetCid"] = self.targetCid!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["period"] as? String {
            self.period = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["targetCid"] as? Int64 {
            self.targetCid = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class CreateDemandPlanResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Int64?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class CreateDemandPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDemandPlanResponseBody?

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
            var model = CreateDemandPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDemandPlanV2Headers : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class CreateDemandPlanV2Request : Tea.TeaModel {
    public var accountId: String?

    public var description_: String?

    public var name: String?

    public var productType: String?

    public var targetCid: Int64?

    public var type: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        if self.targetCid != nil {
            map["targetCid"] = self.targetCid!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["productType"] as? String {
            self.productType = value
        }
        if let value = dict["targetCid"] as? Int64 {
            self.targetCid = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class CreateDemandPlanV2ResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Int64?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class CreateDemandPlanV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDemandPlanV2ResponseBody?

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
            var model = CreateDemandPlanV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUrgentDemandItemHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class DeleteUrgentDemandItemRequest : Tea.TeaModel {
    public var id: Int64?

    public var modifier: String?

    public override init() {
        super.init()
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
            map["id"] = self.id!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
    }
}

public class DeleteUrgentDemandItemResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Int64?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class DeleteUrgentDemandItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUrgentDemandItemResponseBody?

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
            var model = DeleteUrgentDemandItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUrgentDemandPlanHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class DeleteUrgentDemandPlanRequest : Tea.TeaModel {
    public var id: Int64?

    public var modifier: String?

    public override init() {
        super.init()
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
            map["id"] = self.id!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
    }
}

public class DeleteUrgentDemandPlanResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Int64?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class DeleteUrgentDemandPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUrgentDemandPlanResponseBody?

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
            var model = DeleteUrgentDemandPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeliveryItemDetailSynHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class DeliveryItemDetailSynRequest : Tea.TeaModel {
    public class DeliveryItemDetailDTOS : Tea.TeaModel {
        public var actualSupplyTime: String?

        public var amount: Int64?

        public var comment: String?

        public var deliveredAmount: Int64?

        public var deliveryItemId: String?

        public var deliveryPlanId: String?

        public var lastSupplyTime: String?

        public var status: String?

        public var subDemandSupplyPerformerName: String?

        public var subDemandSupplyPerformerUid: String?

        public var subDemandSupplyPmName: String?

        public var subDemandSupplyPmUid: String?

        public var subOrderId: Int64?

        public var supplyStatus: String?

        public var totalOrderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualSupplyTime != nil {
                map["actualSupplyTime"] = self.actualSupplyTime!
            }
            if self.amount != nil {
                map["amount"] = self.amount!
            }
            if self.comment != nil {
                map["comment"] = self.comment!
            }
            if self.deliveredAmount != nil {
                map["deliveredAmount"] = self.deliveredAmount!
            }
            if self.deliveryItemId != nil {
                map["deliveryItemId"] = self.deliveryItemId!
            }
            if self.deliveryPlanId != nil {
                map["deliveryPlanId"] = self.deliveryPlanId!
            }
            if self.lastSupplyTime != nil {
                map["lastSupplyTime"] = self.lastSupplyTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subDemandSupplyPerformerName != nil {
                map["subDemandSupplyPerformerName"] = self.subDemandSupplyPerformerName!
            }
            if self.subDemandSupplyPerformerUid != nil {
                map["subDemandSupplyPerformerUid"] = self.subDemandSupplyPerformerUid!
            }
            if self.subDemandSupplyPmName != nil {
                map["subDemandSupplyPmName"] = self.subDemandSupplyPmName!
            }
            if self.subDemandSupplyPmUid != nil {
                map["subDemandSupplyPmUid"] = self.subDemandSupplyPmUid!
            }
            if self.subOrderId != nil {
                map["subOrderId"] = self.subOrderId!
            }
            if self.supplyStatus != nil {
                map["supplyStatus"] = self.supplyStatus!
            }
            if self.totalOrderId != nil {
                map["totalOrderId"] = self.totalOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["actualSupplyTime"] as? String {
                self.actualSupplyTime = value
            }
            if let value = dict["amount"] as? Int64 {
                self.amount = value
            }
            if let value = dict["comment"] as? String {
                self.comment = value
            }
            if let value = dict["deliveredAmount"] as? Int64 {
                self.deliveredAmount = value
            }
            if let value = dict["deliveryItemId"] as? String {
                self.deliveryItemId = value
            }
            if let value = dict["deliveryPlanId"] as? String {
                self.deliveryPlanId = value
            }
            if let value = dict["lastSupplyTime"] as? String {
                self.lastSupplyTime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["subDemandSupplyPerformerName"] as? String {
                self.subDemandSupplyPerformerName = value
            }
            if let value = dict["subDemandSupplyPerformerUid"] as? String {
                self.subDemandSupplyPerformerUid = value
            }
            if let value = dict["subDemandSupplyPmName"] as? String {
                self.subDemandSupplyPmName = value
            }
            if let value = dict["subDemandSupplyPmUid"] as? String {
                self.subDemandSupplyPmUid = value
            }
            if let value = dict["subOrderId"] as? Int64 {
                self.subOrderId = value
            }
            if let value = dict["supplyStatus"] as? String {
                self.supplyStatus = value
            }
            if let value = dict["totalOrderId"] as? Int64 {
                self.totalOrderId = value
            }
        }
    }
    public var channel: String?

    public var deliveryItemDetailDTOS: [DeliveryItemDetailSynRequest.DeliveryItemDetailDTOS]?

    public var deliveryItemId: String?

    public var deliveryPlanId: String?

    public override init() {
        super.init()
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
            map["channel"] = self.channel!
        }
        if self.deliveryItemDetailDTOS != nil {
            var tmp : [Any] = []
            for k in self.deliveryItemDetailDTOS! {
                tmp.append(k.toMap())
            }
            map["deliveryItemDetailDTOS"] = tmp
        }
        if self.deliveryItemId != nil {
            map["deliveryItemId"] = self.deliveryItemId!
        }
        if self.deliveryPlanId != nil {
            map["deliveryPlanId"] = self.deliveryPlanId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["deliveryItemDetailDTOS"] as? [Any?] {
            var tmp : [DeliveryItemDetailSynRequest.DeliveryItemDetailDTOS] = []
            for v in value {
                if v != nil {
                    var model = DeliveryItemDetailSynRequest.DeliveryItemDetailDTOS()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deliveryItemDetailDTOS = tmp
        }
        if let value = dict["deliveryItemId"] as? String {
            self.deliveryItemId = value
        }
        if let value = dict["deliveryPlanId"] as? String {
            self.deliveryPlanId = value
        }
    }
}

public class DeliveryItemDetailSynResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Bool?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class DeliveryItemDetailSynResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeliveryItemDetailSynResponseBody?

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
            var model = DeliveryItemDetailSynResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUrgentDemandItemListHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class GetUrgentDemandItemListRequest : Tea.TeaModel {
    public var commodityCode: String?

    public var commodityTypeCode: String?

    public var current: Int64?

    public var planId: Int64?

    public var region: String?

    public var size: Int64?

    public var zone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCode != nil {
            map["commodityCode"] = self.commodityCode!
        }
        if self.commodityTypeCode != nil {
            map["commodityTypeCode"] = self.commodityTypeCode!
        }
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.zone != nil {
            map["zone"] = self.zone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["commodityTypeCode"] as? String {
            self.commodityTypeCode = value
        }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["planId"] as? Int64 {
            self.planId = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
        if let value = dict["zone"] as? String {
            self.zone = value
        }
    }
}

public class GetUrgentDemandItemListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class UrgentDemandEbsRequest : Tea.TeaModel {
                public var commodityCode: String?

                public var commodityNum: Int64?

                public var commodityTypeCode: String?

                public var dataDiskSize: Int64?

                public var itemId: Int64?

                public var performanceLevel: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.commodityCode != nil {
                        map["commodityCode"] = self.commodityCode!
                    }
                    if self.commodityNum != nil {
                        map["commodityNum"] = self.commodityNum!
                    }
                    if self.commodityTypeCode != nil {
                        map["commodityTypeCode"] = self.commodityTypeCode!
                    }
                    if self.dataDiskSize != nil {
                        map["dataDiskSize"] = self.dataDiskSize!
                    }
                    if self.itemId != nil {
                        map["itemId"] = self.itemId!
                    }
                    if self.performanceLevel != nil {
                        map["performanceLevel"] = self.performanceLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["commodityCode"] as? String {
                        self.commodityCode = value
                    }
                    if let value = dict["commodityNum"] as? Int64 {
                        self.commodityNum = value
                    }
                    if let value = dict["commodityTypeCode"] as? String {
                        self.commodityTypeCode = value
                    }
                    if let value = dict["dataDiskSize"] as? Int64 {
                        self.dataDiskSize = value
                    }
                    if let value = dict["itemId"] as? Int64 {
                        self.itemId = value
                    }
                    if let value = dict["performanceLevel"] as? Int64 {
                        self.performanceLevel = value
                    }
                }
            }
            public class UrgentDemandEcsRequest : Tea.TeaModel {
                public var commodityCode: String?

                public var commodityNum: Int64?

                public var commodityTypeCode: String?

                public var itemId: Int64?

                public var vcpuCount: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.commodityCode != nil {
                        map["commodityCode"] = self.commodityCode!
                    }
                    if self.commodityNum != nil {
                        map["commodityNum"] = self.commodityNum!
                    }
                    if self.commodityTypeCode != nil {
                        map["commodityTypeCode"] = self.commodityTypeCode!
                    }
                    if self.itemId != nil {
                        map["itemId"] = self.itemId!
                    }
                    if self.vcpuCount != nil {
                        map["vcpuCount"] = self.vcpuCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["commodityCode"] as? String {
                        self.commodityCode = value
                    }
                    if let value = dict["commodityNum"] as? Int64 {
                        self.commodityNum = value
                    }
                    if let value = dict["commodityTypeCode"] as? String {
                        self.commodityTypeCode = value
                    }
                    if let value = dict["itemId"] as? Int64 {
                        self.itemId = value
                    }
                    if let value = dict["vcpuCount"] as? Int64 {
                        self.vcpuCount = value
                    }
                }
            }
            public var zone: String?

            public var accountId: String?

            public var commodityCode: String?

            public var commodityNum: Int64?

            public var commodityTypeCode: String?

            public var creator: String?

            public var creatorName: String?

            public var effectTime: String?

            public var gmtModified: String?

            public var id: Int64?

            public var modifier: String?

            public var modifierName: String?

            public var networkType: String?

            public var payDuration: Int64?

            public var payDurationUnit: String?

            public var payType: String?

            public var planId: Int64?

            public var region: String?

            public var urgentDemandEbsRequest: GetUrgentDemandItemListResponseBody.Data.Records.UrgentDemandEbsRequest?

            public var urgentDemandEcsRequest: GetUrgentDemandItemListResponseBody.Data.Records.UrgentDemandEcsRequest?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.urgentDemandEbsRequest?.validate()
                try self.urgentDemandEcsRequest?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.zone != nil {
                    map["Zone"] = self.zone!
                }
                if self.accountId != nil {
                    map["accountId"] = self.accountId!
                }
                if self.commodityCode != nil {
                    map["commodityCode"] = self.commodityCode!
                }
                if self.commodityNum != nil {
                    map["commodityNum"] = self.commodityNum!
                }
                if self.commodityTypeCode != nil {
                    map["commodityTypeCode"] = self.commodityTypeCode!
                }
                if self.creator != nil {
                    map["creator"] = self.creator!
                }
                if self.creatorName != nil {
                    map["creatorName"] = self.creatorName!
                }
                if self.effectTime != nil {
                    map["effectTime"] = self.effectTime!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.modifier != nil {
                    map["modifier"] = self.modifier!
                }
                if self.modifierName != nil {
                    map["modifierName"] = self.modifierName!
                }
                if self.networkType != nil {
                    map["networkType"] = self.networkType!
                }
                if self.payDuration != nil {
                    map["payDuration"] = self.payDuration!
                }
                if self.payDurationUnit != nil {
                    map["payDurationUnit"] = self.payDurationUnit!
                }
                if self.payType != nil {
                    map["payType"] = self.payType!
                }
                if self.planId != nil {
                    map["planId"] = self.planId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.urgentDemandEbsRequest != nil {
                    map["urgentDemandEbsRequest"] = self.urgentDemandEbsRequest?.toMap()
                }
                if self.urgentDemandEcsRequest != nil {
                    map["urgentDemandEcsRequest"] = self.urgentDemandEcsRequest?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Zone"] as? String {
                    self.zone = value
                }
                if let value = dict["accountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["commodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["commodityNum"] as? Int64 {
                    self.commodityNum = value
                }
                if let value = dict["commodityTypeCode"] as? String {
                    self.commodityTypeCode = value
                }
                if let value = dict["creator"] as? String {
                    self.creator = value
                }
                if let value = dict["creatorName"] as? String {
                    self.creatorName = value
                }
                if let value = dict["effectTime"] as? String {
                    self.effectTime = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["modifierName"] as? String {
                    self.modifierName = value
                }
                if let value = dict["networkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["payDuration"] as? Int64 {
                    self.payDuration = value
                }
                if let value = dict["payDurationUnit"] as? String {
                    self.payDurationUnit = value
                }
                if let value = dict["payType"] as? String {
                    self.payType = value
                }
                if let value = dict["planId"] as? Int64 {
                    self.planId = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["urgentDemandEbsRequest"] as? [String: Any?] {
                    var model = GetUrgentDemandItemListResponseBody.Data.Records.UrgentDemandEbsRequest()
                    model.fromMap(value)
                    self.urgentDemandEbsRequest = model
                }
                if let value = dict["urgentDemandEcsRequest"] as? [String: Any?] {
                    var model = GetUrgentDemandItemListResponseBody.Data.Records.UrgentDemandEcsRequest()
                    model.fromMap(value)
                    self.urgentDemandEcsRequest = model
                }
            }
        }
        public var current: Int64?

        public var pages: Int64?

        public var records: [GetUrgentDemandItemListResponseBody.Data.Records]?

        public var size: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.current != nil {
                map["current"] = self.current!
            }
            if self.pages != nil {
                map["pages"] = self.pages!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["records"] = tmp
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["current"] as? Int64 {
                self.current = value
            }
            if let value = dict["pages"] as? Int64 {
                self.pages = value
            }
            if let value = dict["records"] as? [Any?] {
                var tmp : [GetUrgentDemandItemListResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetUrgentDemandItemListResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["size"] as? Int64 {
                self.size = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int64?

    public var data: GetUrgentDemandItemListResponseBody.Data?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetUrgentDemandItemListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class GetUrgentDemandItemListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUrgentDemandItemListResponseBody?

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
            var model = GetUrgentDemandItemListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUrgentDemandPlanDetailHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class GetUrgentDemandPlanDetailRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["planId"] as? String {
            self.planId = value
        }
    }
}

public class GetUrgentDemandPlanDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountDept: String?

        public var accountId: String?

        public var accountName: String?

        public var approvalUrl: String?

        public var bpmSubstate: [String: Any]?

        public var commodityTypeCodeList: [String]?

        public var creator: String?

        public var creatorName: String?

        public var description_: String?

        public var detailType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var modifier: String?

        public var modifierName: String?

        public var planId: Int64?

        public var planName: String?

        public var status: Int64?

        public var yunzhiProductName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountDept != nil {
                map["accountDept"] = self.accountDept!
            }
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["accountName"] = self.accountName!
            }
            if self.approvalUrl != nil {
                map["approvalUrl"] = self.approvalUrl!
            }
            if self.bpmSubstate != nil {
                map["bpmSubstate"] = self.bpmSubstate!
            }
            if self.commodityTypeCodeList != nil {
                map["commodityTypeCodeList"] = self.commodityTypeCodeList!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.detailType != nil {
                map["detailType"] = self.detailType!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.modifierName != nil {
                map["modifierName"] = self.modifierName!
            }
            if self.planId != nil {
                map["planId"] = self.planId!
            }
            if self.planName != nil {
                map["planName"] = self.planName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.yunzhiProductName != nil {
                map["yunzhiProductName"] = self.yunzhiProductName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountDept"] as? String {
                self.accountDept = value
            }
            if let value = dict["accountId"] as? String {
                self.accountId = value
            }
            if let value = dict["accountName"] as? String {
                self.accountName = value
            }
            if let value = dict["approvalUrl"] as? String {
                self.approvalUrl = value
            }
            if let value = dict["bpmSubstate"] as? [String: Any] {
                self.bpmSubstate = value
            }
            if let value = dict["commodityTypeCodeList"] as? [String] {
                self.commodityTypeCodeList = value
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["detailType"] as? String {
                self.detailType = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["modifier"] as? String {
                self.modifier = value
            }
            if let value = dict["modifierName"] as? String {
                self.modifierName = value
            }
            if let value = dict["planId"] as? Int64 {
                self.planId = value
            }
            if let value = dict["planName"] as? String {
                self.planName = value
            }
            if let value = dict["status"] as? Int64 {
                self.status = value
            }
            if let value = dict["yunzhiProductName"] as? String {
                self.yunzhiProductName = value
            }
        }
    }
    public var code: Int64?

    public var data: GetUrgentDemandPlanDetailResponseBody.Data?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetUrgentDemandPlanDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class GetUrgentDemandPlanDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUrgentDemandPlanDetailResponseBody?

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
            var model = GetUrgentDemandPlanDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUrgentDemandPlanListHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class GetUrgentDemandPlanListRequest : Tea.TeaModel {
    public var current: Int64?

    public var period: String?

    public var planType: Int64?

    public var size: Int64?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.period != nil {
            map["period"] = self.period!
        }
        if self.planType != nil {
            map["planType"] = self.planType!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["period"] as? String {
            self.period = value
        }
        if let value = dict["planType"] as? Int64 {
            self.planType = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GetUrgentDemandPlanListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var accountId: String?

            public var accountName: String?

            public var accountType: String?

            public var approvalUrl: String?

            public var creator: String?

            public var creatorName: String?

            public var description_: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var modifier: String?

            public var modifierName: String?

            public var planId: Int64?

            public var planName: String?

            public var status: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["accountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["accountName"] = self.accountName!
                }
                if self.accountType != nil {
                    map["accountType"] = self.accountType!
                }
                if self.approvalUrl != nil {
                    map["approvalUrl"] = self.approvalUrl!
                }
                if self.creator != nil {
                    map["creator"] = self.creator!
                }
                if self.creatorName != nil {
                    map["creatorName"] = self.creatorName!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.modifier != nil {
                    map["modifier"] = self.modifier!
                }
                if self.modifierName != nil {
                    map["modifierName"] = self.modifierName!
                }
                if self.planId != nil {
                    map["planId"] = self.planId!
                }
                if self.planName != nil {
                    map["planName"] = self.planName!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["accountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["accountType"] as? String {
                    self.accountType = value
                }
                if let value = dict["approvalUrl"] as? String {
                    self.approvalUrl = value
                }
                if let value = dict["creator"] as? String {
                    self.creator = value
                }
                if let value = dict["creatorName"] as? String {
                    self.creatorName = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["modifierName"] as? String {
                    self.modifierName = value
                }
                if let value = dict["planId"] as? Int64 {
                    self.planId = value
                }
                if let value = dict["planName"] as? String {
                    self.planName = value
                }
                if let value = dict["status"] as? Int64 {
                    self.status = value
                }
            }
        }
        public var current: Int64?

        public var pages: Int64?

        public var records: [GetUrgentDemandPlanListResponseBody.Data.Records]?

        public var size: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.current != nil {
                map["current"] = self.current!
            }
            if self.pages != nil {
                map["pages"] = self.pages!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["records"] = tmp
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["current"] as? Int64 {
                self.current = value
            }
            if let value = dict["pages"] as? Int64 {
                self.pages = value
            }
            if let value = dict["records"] as? [Any?] {
                var tmp : [GetUrgentDemandPlanListResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetUrgentDemandPlanListResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["size"] as? Int64 {
                self.size = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int64?

    public var data: GetUrgentDemandPlanListResponseBody.Data?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetUrgentDemandPlanListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class GetUrgentDemandPlanListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUrgentDemandPlanListResponseBody?

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
            var model = GetUrgentDemandPlanListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PageDemandPlanWithDemandInfoHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class PageDemandPlanWithDemandInfoRequest : Tea.TeaModel {
    public var approvalStatus: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var creatorStaffId: String?

    public var demandDeliveryStatus: String?

    public var demandId: [Int64]?

    public var demandPlanId: [Int64]?

    public var demandPlanStatus: String?

    public var operator_: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var roCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalStatus != nil {
            map["approvalStatus"] = self.approvalStatus!
        }
        if self.createTimeEnd != nil {
            map["createTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["createTimeStart"] = self.createTimeStart!
        }
        if self.creatorStaffId != nil {
            map["creatorStaffId"] = self.creatorStaffId!
        }
        if self.demandDeliveryStatus != nil {
            map["demandDeliveryStatus"] = self.demandDeliveryStatus!
        }
        if self.demandId != nil {
            map["demandId"] = self.demandId!
        }
        if self.demandPlanId != nil {
            map["demandPlanId"] = self.demandPlanId!
        }
        if self.demandPlanStatus != nil {
            map["demandPlanStatus"] = self.demandPlanStatus!
        }
        if self.operator_ != nil {
            map["operator"] = self.operator_!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.roCode != nil {
            map["roCode"] = self.roCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["approvalStatus"] as? String {
            self.approvalStatus = value
        }
        if let value = dict["createTimeEnd"] as? String {
            self.createTimeEnd = value
        }
        if let value = dict["createTimeStart"] as? String {
            self.createTimeStart = value
        }
        if let value = dict["creatorStaffId"] as? String {
            self.creatorStaffId = value
        }
        if let value = dict["demandDeliveryStatus"] as? String {
            self.demandDeliveryStatus = value
        }
        if let value = dict["demandId"] as? [Int64] {
            self.demandId = value
        }
        if let value = dict["demandPlanId"] as? [Int64] {
            self.demandPlanId = value
        }
        if let value = dict["demandPlanStatus"] as? String {
            self.demandPlanStatus = value
        }
        if let value = dict["operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["roCode"] as? String {
            self.roCode = value
        }
    }
}

public class PageDemandPlanWithDemandInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var accountId: String?

            public var accountName: String?

            public var approvalNodeStatus: String?

            public var approvalStatus: String?

            public var creator: String?

            public var deliveryPlanId: String?

            public var deliveryStatus: String?

            public var demandDesc: String?

            public var demandId: Int64?

            public var demandName: String?

            public var demandPlanId: Double?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var modifier: String?

            public var requirementObjectCode: String?

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
                if self.accountId != nil {
                    map["accountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["accountName"] = self.accountName!
                }
                if self.approvalNodeStatus != nil {
                    map["approvalNodeStatus"] = self.approvalNodeStatus!
                }
                if self.approvalStatus != nil {
                    map["approvalStatus"] = self.approvalStatus!
                }
                if self.creator != nil {
                    map["creator"] = self.creator!
                }
                if self.deliveryPlanId != nil {
                    map["deliveryPlanId"] = self.deliveryPlanId!
                }
                if self.deliveryStatus != nil {
                    map["deliveryStatus"] = self.deliveryStatus!
                }
                if self.demandDesc != nil {
                    map["demandDesc"] = self.demandDesc!
                }
                if self.demandId != nil {
                    map["demandId"] = self.demandId!
                }
                if self.demandName != nil {
                    map["demandName"] = self.demandName!
                }
                if self.demandPlanId != nil {
                    map["demandPlanId"] = self.demandPlanId!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.modifier != nil {
                    map["modifier"] = self.modifier!
                }
                if self.requirementObjectCode != nil {
                    map["requirementObjectCode"] = self.requirementObjectCode!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["accountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["approvalNodeStatus"] as? String {
                    self.approvalNodeStatus = value
                }
                if let value = dict["approvalStatus"] as? String {
                    self.approvalStatus = value
                }
                if let value = dict["creator"] as? String {
                    self.creator = value
                }
                if let value = dict["deliveryPlanId"] as? String {
                    self.deliveryPlanId = value
                }
                if let value = dict["deliveryStatus"] as? String {
                    self.deliveryStatus = value
                }
                if let value = dict["demandDesc"] as? String {
                    self.demandDesc = value
                }
                if let value = dict["demandId"] as? Int64 {
                    self.demandId = value
                }
                if let value = dict["demandName"] as? String {
                    self.demandName = value
                }
                if let value = dict["demandPlanId"] as? Double {
                    self.demandPlanId = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["requirementObjectCode"] as? String {
                    self.requirementObjectCode = value
                }
                if let value = dict["uid"] as? Int64 {
                    self.uid = value
                }
            }
        }
        public var data: [PageDemandPlanWithDemandInfoResponseBody.Data.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int64?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
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
            if let value = dict["data"] as? [Any?] {
                var tmp : [PageDemandPlanWithDemandInfoResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = PageDemandPlanWithDemandInfoResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["pageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var data: PageDemandPlanWithDemandInfoResponseBody.Data?

    public var requestId: String?

    public var traceId: String?

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
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = PageDemandPlanWithDemandInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class PageDemandPlanWithDemandInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageDemandPlanWithDemandInfoResponseBody?

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
            var model = PageDemandPlanWithDemandInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushResourcePlanHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class PushResourcePlanRequest : Tea.TeaModel {
    public class MethodList : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public var classZone: String?

            public var convertHostType: String?

            public var logicZone: String?

            public var netArch: String?

            public var nic: String?

            public var product3: String?

            public var safeZone: String?

            public var scenario: String?

            public var supplyAmount: Int64?

            public var supplyDate: String?

            public var supplyType: Int64?

            public var supplyVmAmount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classZone != nil {
                    map["classZone"] = self.classZone!
                }
                if self.convertHostType != nil {
                    map["convertHostType"] = self.convertHostType!
                }
                if self.logicZone != nil {
                    map["logicZone"] = self.logicZone!
                }
                if self.netArch != nil {
                    map["netArch"] = self.netArch!
                }
                if self.nic != nil {
                    map["nic"] = self.nic!
                }
                if self.product3 != nil {
                    map["product3"] = self.product3!
                }
                if self.safeZone != nil {
                    map["safeZone"] = self.safeZone!
                }
                if self.scenario != nil {
                    map["scenario"] = self.scenario!
                }
                if self.supplyAmount != nil {
                    map["supplyAmount"] = self.supplyAmount!
                }
                if self.supplyDate != nil {
                    map["supplyDate"] = self.supplyDate!
                }
                if self.supplyType != nil {
                    map["supplyType"] = self.supplyType!
                }
                if self.supplyVmAmount != nil {
                    map["supplyVmAmount"] = self.supplyVmAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["classZone"] as? String {
                    self.classZone = value
                }
                if let value = dict["convertHostType"] as? String {
                    self.convertHostType = value
                }
                if let value = dict["logicZone"] as? String {
                    self.logicZone = value
                }
                if let value = dict["netArch"] as? String {
                    self.netArch = value
                }
                if let value = dict["nic"] as? String {
                    self.nic = value
                }
                if let value = dict["product3"] as? String {
                    self.product3 = value
                }
                if let value = dict["safeZone"] as? String {
                    self.safeZone = value
                }
                if let value = dict["scenario"] as? String {
                    self.scenario = value
                }
                if let value = dict["supplyAmount"] as? Int64 {
                    self.supplyAmount = value
                }
                if let value = dict["supplyDate"] as? String {
                    self.supplyDate = value
                }
                if let value = dict["supplyType"] as? Int64 {
                    self.supplyType = value
                }
                if let value = dict["supplyVmAmount"] as? Int32 {
                    self.supplyVmAmount = value
                }
            }
        }
        public var azone: String?

        public var bufferCnt: Int64?

        public var cluster: String?

        public var comment: String?

        public var convertHostCnt: Int64?

        public var convertHostType: String?

        public var dataList: [PushResourcePlanRequest.MethodList.DataList]?

        public var denamdCount: Int64?

        public var gapCnt: Int64?

        public var promiseDate: String?

        public var region: String?

        public var resourceMethodId: Int64?

        public var roomCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.azone != nil {
                map["azone"] = self.azone!
            }
            if self.bufferCnt != nil {
                map["bufferCnt"] = self.bufferCnt!
            }
            if self.cluster != nil {
                map["cluster"] = self.cluster!
            }
            if self.comment != nil {
                map["comment"] = self.comment!
            }
            if self.convertHostCnt != nil {
                map["convertHostCnt"] = self.convertHostCnt!
            }
            if self.convertHostType != nil {
                map["convertHostType"] = self.convertHostType!
            }
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["dataList"] = tmp
            }
            if self.denamdCount != nil {
                map["denamdCount"] = self.denamdCount!
            }
            if self.gapCnt != nil {
                map["gapCnt"] = self.gapCnt!
            }
            if self.promiseDate != nil {
                map["promiseDate"] = self.promiseDate!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.resourceMethodId != nil {
                map["resourceMethodId"] = self.resourceMethodId!
            }
            if self.roomCode != nil {
                map["roomCode"] = self.roomCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["azone"] as? String {
                self.azone = value
            }
            if let value = dict["bufferCnt"] as? Int64 {
                self.bufferCnt = value
            }
            if let value = dict["cluster"] as? String {
                self.cluster = value
            }
            if let value = dict["comment"] as? String {
                self.comment = value
            }
            if let value = dict["convertHostCnt"] as? Int64 {
                self.convertHostCnt = value
            }
            if let value = dict["convertHostType"] as? String {
                self.convertHostType = value
            }
            if let value = dict["dataList"] as? [Any?] {
                var tmp : [PushResourcePlanRequest.MethodList.DataList] = []
                for v in value {
                    if v != nil {
                        var model = PushResourcePlanRequest.MethodList.DataList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataList = tmp
            }
            if let value = dict["denamdCount"] as? Int64 {
                self.denamdCount = value
            }
            if let value = dict["gapCnt"] as? Int64 {
                self.gapCnt = value
            }
            if let value = dict["promiseDate"] as? String {
                self.promiseDate = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["resourceMethodId"] as? Int64 {
                self.resourceMethodId = value
            }
            if let value = dict["roomCode"] as? String {
                self.roomCode = value
            }
        }
    }
    public var bufferCnt: Int64?

    public var demandCount: Int64?

    public var demandId: String?

    public var methodList: [PushResourcePlanRequest.MethodList]?

    public var requestId: String?

    public var requireCnt: Int64?

    public var subDemandId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bufferCnt != nil {
            map["bufferCnt"] = self.bufferCnt!
        }
        if self.demandCount != nil {
            map["demandCount"] = self.demandCount!
        }
        if self.demandId != nil {
            map["demandId"] = self.demandId!
        }
        if self.methodList != nil {
            var tmp : [Any] = []
            for k in self.methodList! {
                tmp.append(k.toMap())
            }
            map["methodList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.requireCnt != nil {
            map["requireCnt"] = self.requireCnt!
        }
        if self.subDemandId != nil {
            map["subDemandId"] = self.subDemandId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bufferCnt"] as? Int64 {
            self.bufferCnt = value
        }
        if let value = dict["demandCount"] as? Int64 {
            self.demandCount = value
        }
        if let value = dict["demandId"] as? String {
            self.demandId = value
        }
        if let value = dict["methodList"] as? [Any?] {
            var tmp : [PushResourcePlanRequest.MethodList] = []
            for v in value {
                if v != nil {
                    var model = PushResourcePlanRequest.MethodList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.methodList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["requireCnt"] as? Int64 {
            self.requireCnt = value
        }
        if let value = dict["subDemandId"] as? String {
            self.subDemandId = value
        }
    }
}

public class PushResourcePlanResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Bool?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class PushResourcePlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushResourcePlanResponseBody?

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
            var model = PushResourcePlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeliveredSupplyItemsRequest : Tea.TeaModel {
    public var accountId: String?

    public var commodityTypeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.commodityTypeCode != nil {
            map["commodityTypeCode"] = self.commodityTypeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["commodityTypeCode"] as? String {
            self.commodityTypeCode = value
        }
    }
}

public class QueryDeliveredSupplyItemsResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var accountId: String?

        public var commodityTypeCode: String?

        public var demandPlanId: Int64?

        public var planTitle: String?

        public var region: String?

        public var zone: String?

        public var commodityCode: String?

        public var demandCount: Int32?

        public var deliveredAmount: Int32?

        public var openCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.commodityTypeCode != nil {
                map["commodityTypeCode"] = self.commodityTypeCode!
            }
            if self.demandPlanId != nil {
                map["demandPlanId"] = self.demandPlanId!
            }
            if self.planTitle != nil {
                map["planTitle"] = self.planTitle!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.zone != nil {
                map["zone"] = self.zone!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.demandCount != nil {
                map["demandCount"] = self.demandCount!
            }
            if self.deliveredAmount != nil {
                map["deliveredAmount"] = self.deliveredAmount!
            }
            if self.openCount != nil {
                map["openCount"] = self.openCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountId"] as? String {
                self.accountId = value
            }
            if let value = dict["commodityTypeCode"] as? String {
                self.commodityTypeCode = value
            }
            if let value = dict["demandPlanId"] as? Int64 {
                self.demandPlanId = value
            }
            if let value = dict["planTitle"] as? String {
                self.planTitle = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["zone"] as? String {
                self.zone = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["demandCount"] as? Int32 {
                self.demandCount = value
            }
            if let value = dict["deliveredAmount"] as? Int32 {
                self.deliveredAmount = value
            }
            if let value = dict["openCount"] as? Int32 {
                self.openCount = value
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [QueryDeliveredSupplyItemsResponse.Body]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
        if let value = dict["body"] as? [Any?] {
            var tmp : [QueryDeliveredSupplyItemsResponse.Body] = []
            for v in value {
                if v != nil {
                    var model = QueryDeliveredSupplyItemsResponse.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class QueryPeriodBudgetBillRequest : Tea.TeaModel {
    public var objectIds: String?

    public var objectType: String?

    public var period: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectIds != nil {
            map["objectIds"] = self.objectIds!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        if self.period != nil {
            map["period"] = self.period!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["objectIds"] as? String {
            self.objectIds = value
        }
        if let value = dict["objectType"] as? String {
            self.objectType = value
        }
        if let value = dict["period"] as? String {
            self.period = value
        }
    }
}

public class QueryPeriodBudgetBillResponseBody : Tea.TeaModel {
    public class PeriodBudgetBillDTOS : Tea.TeaModel {
        public var bill: Double?

        public var budget: Double?

        public var lastYearBill: Double?

        public var month: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bill != nil {
                map["bill"] = self.bill!
            }
            if self.budget != nil {
                map["budget"] = self.budget!
            }
            if self.lastYearBill != nil {
                map["lastYearBill"] = self.lastYearBill!
            }
            if self.month != nil {
                map["month"] = self.month!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bill"] as? Double {
                self.bill = value
            }
            if let value = dict["budget"] as? Double {
                self.budget = value
            }
            if let value = dict["lastYearBill"] as? Double {
                self.lastYearBill = value
            }
            if let value = dict["month"] as? String {
                self.month = value
            }
        }
    }
    public var periodBudgetBillDTOS: [QueryPeriodBudgetBillResponseBody.PeriodBudgetBillDTOS]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.periodBudgetBillDTOS != nil {
            var tmp : [Any] = []
            for k in self.periodBudgetBillDTOS! {
                tmp.append(k.toMap())
            }
            map["periodBudgetBillDTOS"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["periodBudgetBillDTOS"] as? [Any?] {
            var tmp : [QueryPeriodBudgetBillResponseBody.PeriodBudgetBillDTOS] = []
            for v in value {
                if v != nil {
                    var model = QueryPeriodBudgetBillResponseBody.PeriodBudgetBillDTOS()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.periodBudgetBillDTOS = tmp
        }
    }
}

public class QueryPeriodBudgetBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPeriodBudgetBillResponseBody?

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
            var model = QueryPeriodBudgetBillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveUrgentDemandItemHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class SaveUrgentDemandItemRequest : Tea.TeaModel {
    public class UrgentDemandEbsRequest : Tea.TeaModel {
        public var commodityCode: String?

        public var commodityNum: Int64?

        public var commodityTypeCode: String?

        public var itemId: Int64?

        public var performanceLevel: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.commodityNum != nil {
                map["commodityNum"] = self.commodityNum!
            }
            if self.commodityTypeCode != nil {
                map["commodityTypeCode"] = self.commodityTypeCode!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.performanceLevel != nil {
                map["performanceLevel"] = self.performanceLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["commodityNum"] as? Int64 {
                self.commodityNum = value
            }
            if let value = dict["commodityTypeCode"] as? String {
                self.commodityTypeCode = value
            }
            if let value = dict["itemId"] as? Int64 {
                self.itemId = value
            }
            if let value = dict["performanceLevel"] as? Int64 {
                self.performanceLevel = value
            }
        }
    }
    public class UrgentDemandEcsRequest : Tea.TeaModel {
        public var commodityCode: String?

        public var commodityNum: Int64?

        public var commodityTypeCode: String?

        public var itemId: Int64?

        public var vCpuCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.commodityNum != nil {
                map["commodityNum"] = self.commodityNum!
            }
            if self.commodityTypeCode != nil {
                map["commodityTypeCode"] = self.commodityTypeCode!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.vCpuCount != nil {
                map["vCpuCount"] = self.vCpuCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["commodityNum"] as? Int64 {
                self.commodityNum = value
            }
            if let value = dict["commodityTypeCode"] as? String {
                self.commodityTypeCode = value
            }
            if let value = dict["itemId"] as? Int64 {
                self.itemId = value
            }
            if let value = dict["vCpuCount"] as? Int64 {
                self.vCpuCount = value
            }
        }
    }
    public var accountId: String?

    public var creator: String?

    public var effectTime: String?

    public var modifier: String?

    public var networkType: String?

    public var payDuration: String?

    public var payDurationUnit: String?

    public var payType: String?

    public var planId: Int64?

    public var region: String?

    public var urgentDemandEbsRequest: SaveUrgentDemandItemRequest.UrgentDemandEbsRequest?

    public var urgentDemandEcsRequest: SaveUrgentDemandItemRequest.UrgentDemandEcsRequest?

    public var zone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.urgentDemandEbsRequest?.validate()
        try self.urgentDemandEcsRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.effectTime != nil {
            map["effectTime"] = self.effectTime!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.networkType != nil {
            map["networkType"] = self.networkType!
        }
        if self.payDuration != nil {
            map["payDuration"] = self.payDuration!
        }
        if self.payDurationUnit != nil {
            map["payDurationUnit"] = self.payDurationUnit!
        }
        if self.payType != nil {
            map["payType"] = self.payType!
        }
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.urgentDemandEbsRequest != nil {
            map["urgentDemandEbsRequest"] = self.urgentDemandEbsRequest?.toMap()
        }
        if self.urgentDemandEcsRequest != nil {
            map["urgentDemandEcsRequest"] = self.urgentDemandEcsRequest?.toMap()
        }
        if self.zone != nil {
            map["zone"] = self.zone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["effectTime"] as? String {
            self.effectTime = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["networkType"] as? String {
            self.networkType = value
        }
        if let value = dict["payDuration"] as? String {
            self.payDuration = value
        }
        if let value = dict["payDurationUnit"] as? String {
            self.payDurationUnit = value
        }
        if let value = dict["payType"] as? String {
            self.payType = value
        }
        if let value = dict["planId"] as? Int64 {
            self.planId = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["urgentDemandEbsRequest"] as? [String: Any?] {
            var model = SaveUrgentDemandItemRequest.UrgentDemandEbsRequest()
            model.fromMap(value)
            self.urgentDemandEbsRequest = model
        }
        if let value = dict["urgentDemandEcsRequest"] as? [String: Any?] {
            var model = SaveUrgentDemandItemRequest.UrgentDemandEcsRequest()
            model.fromMap(value)
            self.urgentDemandEcsRequest = model
        }
        if let value = dict["zone"] as? String {
            self.zone = value
        }
    }
}

public class SaveUrgentDemandItemResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: [Int64]?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? [Int64] {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class SaveUrgentDemandItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveUrgentDemandItemResponseBody?

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
            var model = SaveUrgentDemandItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitUrgentDemandPlanHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var yunUserId: String?

    public override init() {
        super.init()
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
        if self.yunUserId != nil {
            map["Yun-User-Id"] = self.yunUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Yun-User-Id"] as? String {
            self.yunUserId = value
        }
    }
}

public class SubmitUrgentDemandPlanRequest : Tea.TeaModel {
    public var planId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["planId"] as? String {
            self.planId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class SubmitUrgentDemandPlanResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Bool?

    public var message: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int64 {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class SubmitUrgentDemandPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitUrgentDemandPlanResponseBody?

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
            var model = SubmitUrgentDemandPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AcceptFulfillmentDecisionRequest : Tea.TeaModel {
    public var decisionConclusion: String?

    public var decisionType: String?

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
        if self.decisionConclusion != nil {
            map["DecisionConclusion"] = self.decisionConclusion!
        }
        if self.decisionType != nil {
            map["DecisionType"] = self.decisionType!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DecisionConclusion"] as? String {
            self.decisionConclusion = value
        }
        if let value = dict["DecisionType"] as? String {
            self.decisionType = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
    }
}

public class AcceptFulfillmentDecisionResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AcceptFulfillmentDecisionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptFulfillmentDecisionResponseBody?

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
            var model = AcceptFulfillmentDecisionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
