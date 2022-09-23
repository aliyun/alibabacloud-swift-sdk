import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApplyCreateDistributionOrderRequest : Tea.TeaModel {
    public class ItemInfoLists : Tea.TeaModel {
        public var distributionMallId: String?

        public var lmItemId: String?

        public var quantity: Int32?

        public var skuId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.distributionMallId != nil {
                map["DistributionMallId"] = self.distributionMallId!
            }
            if self.lmItemId != nil {
                map["LmItemId"] = self.lmItemId!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.skuId != nil {
                map["SkuId"] = self.skuId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DistributionMallId") {
                self.distributionMallId = dict["DistributionMallId"] as! String
            }
            if dict.keys.contains("LmItemId") {
                self.lmItemId = dict["LmItemId"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! Int32
            }
            if dict.keys.contains("SkuId") {
                self.skuId = dict["SkuId"] as! String
            }
        }
    }
    public var buyerId: String?

    public var deliveryAddress: String?

    public var distributionSupplierId: String?

    public var distributorId: String?

    public var extInfo: String?

    public var itemInfoLists: [ApplyCreateDistributionOrderRequest.ItemInfoLists]?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyerId != nil {
            map["BuyerId"] = self.buyerId!
        }
        if self.deliveryAddress != nil {
            map["DeliveryAddress"] = self.deliveryAddress!
        }
        if self.distributionSupplierId != nil {
            map["DistributionSupplierId"] = self.distributionSupplierId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.itemInfoLists != nil {
            var tmp : [Any] = []
            for k in self.itemInfoLists! {
                tmp.append(k.toMap())
            }
            map["ItemInfoLists"] = tmp
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyerId") {
            self.buyerId = dict["BuyerId"] as! String
        }
        if dict.keys.contains("DeliveryAddress") {
            self.deliveryAddress = dict["DeliveryAddress"] as! String
        }
        if dict.keys.contains("DistributionSupplierId") {
            self.distributionSupplierId = dict["DistributionSupplierId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("ExtInfo") {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("ItemInfoLists") {
            self.itemInfoLists = dict["ItemInfoLists"] as! [ApplyCreateDistributionOrderRequest.ItemInfoLists]
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ApplyCreateDistributionOrderShrinkRequest : Tea.TeaModel {
    public var buyerId: String?

    public var deliveryAddress: String?

    public var distributionSupplierId: String?

    public var distributorId: String?

    public var extInfo: String?

    public var itemInfoListsShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyerId != nil {
            map["BuyerId"] = self.buyerId!
        }
        if self.deliveryAddress != nil {
            map["DeliveryAddress"] = self.deliveryAddress!
        }
        if self.distributionSupplierId != nil {
            map["DistributionSupplierId"] = self.distributionSupplierId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.itemInfoListsShrink != nil {
            map["ItemInfoLists"] = self.itemInfoListsShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyerId") {
            self.buyerId = dict["BuyerId"] as! String
        }
        if dict.keys.contains("DeliveryAddress") {
            self.deliveryAddress = dict["DeliveryAddress"] as! String
        }
        if dict.keys.contains("DistributionSupplierId") {
            self.distributionSupplierId = dict["DistributionSupplierId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("ExtInfo") {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("ItemInfoLists") {
            self.itemInfoListsShrink = dict["ItemInfoLists"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ApplyCreateDistributionOrderResponseBody : Tea.TeaModel {
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ApplyCreateDistributionOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyCreateDistributionOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ApplyCreateDistributionOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyRefund4DistributionRequest : Tea.TeaModel {
    public class LeavePictureLists : Tea.TeaModel {
        public var desc: String?

        public var picture: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.picture != nil {
                map["Picture"] = self.picture!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("Picture") {
                self.picture = dict["Picture"] as! String
            }
        }
    }
    public var applyReasonTextId: Int64?

    public var applyRefundCount: Int32?

    public var applyRefundFee: Int64?

    public var bizClaimType: Int32?

    public var distributorId: String?

    public var goodsStatus: Int32?

    public var leaveMessage: String?

    public var leavePictureLists: [ApplyRefund4DistributionRequest.LeavePictureLists]?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyReasonTextId != nil {
            map["ApplyReasonTextId"] = self.applyReasonTextId!
        }
        if self.applyRefundCount != nil {
            map["ApplyRefundCount"] = self.applyRefundCount!
        }
        if self.applyRefundFee != nil {
            map["ApplyRefundFee"] = self.applyRefundFee!
        }
        if self.bizClaimType != nil {
            map["BizClaimType"] = self.bizClaimType!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.goodsStatus != nil {
            map["GoodsStatus"] = self.goodsStatus!
        }
        if self.leaveMessage != nil {
            map["LeaveMessage"] = self.leaveMessage!
        }
        if self.leavePictureLists != nil {
            var tmp : [Any] = []
            for k in self.leavePictureLists! {
                tmp.append(k.toMap())
            }
            map["LeavePictureLists"] = tmp
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyReasonTextId") {
            self.applyReasonTextId = dict["ApplyReasonTextId"] as! Int64
        }
        if dict.keys.contains("ApplyRefundCount") {
            self.applyRefundCount = dict["ApplyRefundCount"] as! Int32
        }
        if dict.keys.contains("ApplyRefundFee") {
            self.applyRefundFee = dict["ApplyRefundFee"] as! Int64
        }
        if dict.keys.contains("BizClaimType") {
            self.bizClaimType = dict["BizClaimType"] as! Int32
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("GoodsStatus") {
            self.goodsStatus = dict["GoodsStatus"] as! Int32
        }
        if dict.keys.contains("LeaveMessage") {
            self.leaveMessage = dict["LeaveMessage"] as! String
        }
        if dict.keys.contains("LeavePictureLists") {
            self.leavePictureLists = dict["LeavePictureLists"] as! [ApplyRefund4DistributionRequest.LeavePictureLists]
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ApplyRefund4DistributionShrinkRequest : Tea.TeaModel {
    public var applyReasonTextId: Int64?

    public var applyRefundCount: Int32?

    public var applyRefundFee: Int64?

    public var bizClaimType: Int32?

    public var distributorId: String?

    public var goodsStatus: Int32?

    public var leaveMessage: String?

    public var leavePictureListsShrink: String?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyReasonTextId != nil {
            map["ApplyReasonTextId"] = self.applyReasonTextId!
        }
        if self.applyRefundCount != nil {
            map["ApplyRefundCount"] = self.applyRefundCount!
        }
        if self.applyRefundFee != nil {
            map["ApplyRefundFee"] = self.applyRefundFee!
        }
        if self.bizClaimType != nil {
            map["BizClaimType"] = self.bizClaimType!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.goodsStatus != nil {
            map["GoodsStatus"] = self.goodsStatus!
        }
        if self.leaveMessage != nil {
            map["LeaveMessage"] = self.leaveMessage!
        }
        if self.leavePictureListsShrink != nil {
            map["LeavePictureLists"] = self.leavePictureListsShrink!
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyReasonTextId") {
            self.applyReasonTextId = dict["ApplyReasonTextId"] as! Int64
        }
        if dict.keys.contains("ApplyRefundCount") {
            self.applyRefundCount = dict["ApplyRefundCount"] as! Int32
        }
        if dict.keys.contains("ApplyRefundFee") {
            self.applyRefundFee = dict["ApplyRefundFee"] as! Int64
        }
        if dict.keys.contains("BizClaimType") {
            self.bizClaimType = dict["BizClaimType"] as! Int32
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("GoodsStatus") {
            self.goodsStatus = dict["GoodsStatus"] as! Int32
        }
        if dict.keys.contains("LeaveMessage") {
            self.leaveMessage = dict["LeaveMessage"] as! String
        }
        if dict.keys.contains("LeavePictureLists") {
            self.leavePictureListsShrink = dict["LeavePictureLists"] as! String
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ApplyRefund4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var disputeId: Int64?

        public var disputeStatus: Int32?

        public var disputeType: Int32?

        public var subDistributionOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.disputeId != nil {
                map["DisputeId"] = self.disputeId!
            }
            if self.disputeStatus != nil {
                map["DisputeStatus"] = self.disputeStatus!
            }
            if self.disputeType != nil {
                map["DisputeType"] = self.disputeType!
            }
            if self.subDistributionOrderId != nil {
                map["SubDistributionOrderId"] = self.subDistributionOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisputeId") {
                self.disputeId = dict["DisputeId"] as! Int64
            }
            if dict.keys.contains("DisputeStatus") {
                self.disputeStatus = dict["DisputeStatus"] as! Int32
            }
            if dict.keys.contains("DisputeType") {
                self.disputeType = dict["DisputeType"] as! Int32
            }
            if dict.keys.contains("SubDistributionOrderId") {
                self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: ApplyRefund4DistributionResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = ApplyRefund4DistributionResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ApplyRefund4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyRefund4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ApplyRefund4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelDistributionTradeRequest : Tea.TeaModel {
    public var distributionTradeId: String?

    public var distributorId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributionTradeId != nil {
            map["DistributionTradeId"] = self.distributionTradeId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributionTradeId") {
            self.distributionTradeId = dict["DistributionTradeId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class CancelDistributionTradeResponseBody : Tea.TeaModel {
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class CancelDistributionTradeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelDistributionTradeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CancelDistributionTradeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelRefund4DistributionRequest : Tea.TeaModel {
    public var disputeId: Int64?

    public var distributorId: String?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disputeId != nil {
            map["DisputeId"] = self.disputeId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisputeId") {
            self.disputeId = dict["DisputeId"] as! Int64
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class CancelRefund4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var disputeId: Int64?

        public var disputeStatus: Int32?

        public var disputeType: Int32?

        public var subDistributionOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.disputeId != nil {
                map["DisputeId"] = self.disputeId!
            }
            if self.disputeStatus != nil {
                map["DisputeStatus"] = self.disputeStatus!
            }
            if self.disputeType != nil {
                map["DisputeType"] = self.disputeType!
            }
            if self.subDistributionOrderId != nil {
                map["SubDistributionOrderId"] = self.subDistributionOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisputeId") {
                self.disputeId = dict["DisputeId"] as! Int64
            }
            if dict.keys.contains("DisputeStatus") {
                self.disputeStatus = dict["DisputeStatus"] as! Int32
            }
            if dict.keys.contains("DisputeType") {
                self.disputeType = dict["DisputeType"] as! Int32
            }
            if dict.keys.contains("SubDistributionOrderId") {
                self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: CancelRefund4DistributionResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = CancelRefund4DistributionResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class CancelRefund4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRefund4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CancelRefund4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmDisburse4DistributionRequest : Tea.TeaModel {
    public var distributionTradeId: String?

    public var distributorId: String?

    public var mainDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributionTradeId != nil {
            map["DistributionTradeId"] = self.distributionTradeId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.mainDistributionOrderId != nil {
            map["MainDistributionOrderId"] = self.mainDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributionTradeId") {
            self.distributionTradeId = dict["DistributionTradeId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("MainDistributionOrderId") {
            self.mainDistributionOrderId = dict["MainDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ConfirmDisburse4DistributionResponseBody : Tea.TeaModel {
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ConfirmDisburse4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmDisburse4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ConfirmDisburse4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitApplyRefund4DistributionRequest : Tea.TeaModel {
    public var bizClaimType: Int32?

    public var distributorId: String?

    public var goodsStatus: Int32?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizClaimType != nil {
            map["BizClaimType"] = self.bizClaimType!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.goodsStatus != nil {
            map["GoodsStatus"] = self.goodsStatus!
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizClaimType") {
            self.bizClaimType = dict["BizClaimType"] as! Int32
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("GoodsStatus") {
            self.goodsStatus = dict["GoodsStatus"] as! Int32
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class InitApplyRefund4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class MaxRefundFeeData : Tea.TeaModel {
            public var maxRefundFee: Int64?

            public var minRefundFee: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxRefundFee != nil {
                    map["MaxRefundFee"] = self.maxRefundFee!
                }
                if self.minRefundFee != nil {
                    map["MinRefundFee"] = self.minRefundFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaxRefundFee") {
                    self.maxRefundFee = dict["MaxRefundFee"] as! Int64
                }
                if dict.keys.contains("MinRefundFee") {
                    self.minRefundFee = dict["MinRefundFee"] as! Int64
                }
            }
        }
        public class RefundReasonList : Tea.TeaModel {
            public var proofRequired: Bool?

            public var reasonTextId: String?

            public var reasonTips: String?

            public var refundDescRequired: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.proofRequired != nil {
                    map["ProofRequired"] = self.proofRequired!
                }
                if self.reasonTextId != nil {
                    map["ReasonTextId"] = self.reasonTextId!
                }
                if self.reasonTips != nil {
                    map["ReasonTips"] = self.reasonTips!
                }
                if self.refundDescRequired != nil {
                    map["RefundDescRequired"] = self.refundDescRequired!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProofRequired") {
                    self.proofRequired = dict["ProofRequired"] as! Bool
                }
                if dict.keys.contains("ReasonTextId") {
                    self.reasonTextId = dict["ReasonTextId"] as! String
                }
                if dict.keys.contains("ReasonTips") {
                    self.reasonTips = dict["ReasonTips"] as! String
                }
                if dict.keys.contains("RefundDescRequired") {
                    self.refundDescRequired = dict["RefundDescRequired"] as! Bool
                }
            }
        }
        public var bizClaimType: Int32?

        public var mainOrderRefund: Bool?

        public var maxRefundFeeData: InitApplyRefund4DistributionResponseBody.Model.MaxRefundFeeData?

        public var refundReasonList: [InitApplyRefund4DistributionResponseBody.Model.RefundReasonList]?

        public var subDistributionOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.maxRefundFeeData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizClaimType != nil {
                map["BizClaimType"] = self.bizClaimType!
            }
            if self.mainOrderRefund != nil {
                map["MainOrderRefund"] = self.mainOrderRefund!
            }
            if self.maxRefundFeeData != nil {
                map["MaxRefundFeeData"] = self.maxRefundFeeData?.toMap()
            }
            if self.refundReasonList != nil {
                var tmp : [Any] = []
                for k in self.refundReasonList! {
                    tmp.append(k.toMap())
                }
                map["RefundReasonList"] = tmp
            }
            if self.subDistributionOrderId != nil {
                map["SubDistributionOrderId"] = self.subDistributionOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizClaimType") {
                self.bizClaimType = dict["BizClaimType"] as! Int32
            }
            if dict.keys.contains("MainOrderRefund") {
                self.mainOrderRefund = dict["MainOrderRefund"] as! Bool
            }
            if dict.keys.contains("MaxRefundFeeData") {
                var model = InitApplyRefund4DistributionResponseBody.Model.MaxRefundFeeData()
                model.fromMap(dict["MaxRefundFeeData"] as! [String: Any])
                self.maxRefundFeeData = model
            }
            if dict.keys.contains("RefundReasonList") {
                self.refundReasonList = dict["RefundReasonList"] as! [InitApplyRefund4DistributionResponseBody.Model.RefundReasonList]
            }
            if dict.keys.contains("SubDistributionOrderId") {
                self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: InitApplyRefund4DistributionResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = InitApplyRefund4DistributionResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class InitApplyRefund4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitApplyRefund4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = InitApplyRefund4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitModifyRefund4DistributionRequest : Tea.TeaModel {
    public var bizClaimType: Int32?

    public var disputeId: Int64?

    public var distributorId: String?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizClaimType != nil {
            map["BizClaimType"] = self.bizClaimType!
        }
        if self.disputeId != nil {
            map["DisputeId"] = self.disputeId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizClaimType") {
            self.bizClaimType = dict["BizClaimType"] as! Int32
        }
        if dict.keys.contains("DisputeId") {
            self.disputeId = dict["DisputeId"] as! Int64
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class InitModifyRefund4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class MaxRefundFeeData : Tea.TeaModel {
            public var maxRefundFee: Int64?

            public var minRefundFee: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxRefundFee != nil {
                    map["MaxRefundFee"] = self.maxRefundFee!
                }
                if self.minRefundFee != nil {
                    map["MinRefundFee"] = self.minRefundFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaxRefundFee") {
                    self.maxRefundFee = dict["MaxRefundFee"] as! Int64
                }
                if dict.keys.contains("MinRefundFee") {
                    self.minRefundFee = dict["MinRefundFee"] as! Int64
                }
            }
        }
        public class RefundReasonList : Tea.TeaModel {
            public var proofRequired: Bool?

            public var reasonTextId: String?

            public var reasonTips: String?

            public var refundDescRequired: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.proofRequired != nil {
                    map["ProofRequired"] = self.proofRequired!
                }
                if self.reasonTextId != nil {
                    map["ReasonTextId"] = self.reasonTextId!
                }
                if self.reasonTips != nil {
                    map["ReasonTips"] = self.reasonTips!
                }
                if self.refundDescRequired != nil {
                    map["RefundDescRequired"] = self.refundDescRequired!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProofRequired") {
                    self.proofRequired = dict["ProofRequired"] as! Bool
                }
                if dict.keys.contains("ReasonTextId") {
                    self.reasonTextId = dict["ReasonTextId"] as! String
                }
                if dict.keys.contains("ReasonTips") {
                    self.reasonTips = dict["ReasonTips"] as! String
                }
                if dict.keys.contains("RefundDescRequired") {
                    self.refundDescRequired = dict["RefundDescRequired"] as! Bool
                }
            }
        }
        public var bizClaimType: Int32?

        public var mainOrderRefund: Bool?

        public var maxRefundFeeData: InitModifyRefund4DistributionResponseBody.Model.MaxRefundFeeData?

        public var refundReasonList: [InitModifyRefund4DistributionResponseBody.Model.RefundReasonList]?

        public var subDistributionOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.maxRefundFeeData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizClaimType != nil {
                map["BizClaimType"] = self.bizClaimType!
            }
            if self.mainOrderRefund != nil {
                map["MainOrderRefund"] = self.mainOrderRefund!
            }
            if self.maxRefundFeeData != nil {
                map["MaxRefundFeeData"] = self.maxRefundFeeData?.toMap()
            }
            if self.refundReasonList != nil {
                var tmp : [Any] = []
                for k in self.refundReasonList! {
                    tmp.append(k.toMap())
                }
                map["RefundReasonList"] = tmp
            }
            if self.subDistributionOrderId != nil {
                map["SubDistributionOrderId"] = self.subDistributionOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizClaimType") {
                self.bizClaimType = dict["BizClaimType"] as! Int32
            }
            if dict.keys.contains("MainOrderRefund") {
                self.mainOrderRefund = dict["MainOrderRefund"] as! Bool
            }
            if dict.keys.contains("MaxRefundFeeData") {
                var model = InitModifyRefund4DistributionResponseBody.Model.MaxRefundFeeData()
                model.fromMap(dict["MaxRefundFeeData"] as! [String: Any])
                self.maxRefundFeeData = model
            }
            if dict.keys.contains("RefundReasonList") {
                self.refundReasonList = dict["RefundReasonList"] as! [InitModifyRefund4DistributionResponseBody.Model.RefundReasonList]
            }
            if dict.keys.contains("SubDistributionOrderId") {
                self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: InitModifyRefund4DistributionResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = InitModifyRefund4DistributionResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class InitModifyRefund4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitModifyRefund4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = InitModifyRefund4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDistributionItemRequest : Tea.TeaModel {
    public var distributionMallId: String?

    public var distributorId: String?

    public var itemStatus: Int32?

    public var lmItemId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributionMallId != nil {
            map["DistributionMallId"] = self.distributionMallId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.itemStatus != nil {
            map["ItemStatus"] = self.itemStatus!
        }
        if self.lmItemId != nil {
            map["LmItemId"] = self.lmItemId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributionMallId") {
            self.distributionMallId = dict["DistributionMallId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("ItemStatus") {
            self.itemStatus = dict["ItemStatus"] as! Int32
        }
        if dict.keys.contains("LmItemId") {
            self.lmItemId = dict["LmItemId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ListDistributionItemResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class CategoryChain : Tea.TeaModel {
            public var categoryId: Int64?

            public var leaf: Bool?

            public var level: Int32?

            public var name: String?

            public var parentId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.leaf != nil {
                    map["Leaf"] = self.leaf!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryId") {
                    self.categoryId = dict["CategoryId"] as! Int64
                }
                if dict.keys.contains("Leaf") {
                    self.leaf = dict["Leaf"] as! Bool
                }
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ParentId") {
                    self.parentId = dict["ParentId"] as! Int64
                }
            }
        }
        public class SkuList : Tea.TeaModel {
            public class LmAttributeModels : Tea.TeaModel {
                public var attrId: Int64?

                public var category: Int32?

                public var dataType: String?

                public var description_: String?

                public var name: String?

                public var restriction: String?

                public var scopeList: [String]?

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
                    if self.attrId != nil {
                        map["AttrId"] = self.attrId!
                    }
                    if self.category != nil {
                        map["Category"] = self.category!
                    }
                    if self.dataType != nil {
                        map["DataType"] = self.dataType!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.restriction != nil {
                        map["Restriction"] = self.restriction!
                    }
                    if self.scopeList != nil {
                        map["ScopeList"] = self.scopeList!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AttrId") {
                        self.attrId = dict["AttrId"] as! Int64
                    }
                    if dict.keys.contains("Category") {
                        self.category = dict["Category"] as! Int32
                    }
                    if dict.keys.contains("DataType") {
                        self.dataType = dict["DataType"] as! String
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Restriction") {
                        self.restriction = dict["Restriction"] as! String
                    }
                    if dict.keys.contains("ScopeList") {
                        self.scopeList = dict["ScopeList"] as! [String]
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var canSell: Bool?

            public var customizedAttributeMap: [String: String]?

            public var extInfo: String?

            public var gmtModified: String?

            public var hasQuantity: Bool?

            public var itemId: Int64?

            public var lmAttributeModels: [ListDistributionItemResponseBody.Model.SkuList.LmAttributeModels]?

            public var lmItemId: String?

            public var priceCent: Int64?

            public var quantity: Int64?

            public var reservedPrice: Int64?

            public var simpleQuantity: String?

            public var skuDesc: String?

            public var skuId: Int64?

            public var skuPicUrl: String?

            public var skuProperties: [String: String]?

            public var skuPropertiesJson: String?

            public var skuTitle: String?

            public var status: Int32?

            public var tips: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.canSell != nil {
                    map["CanSell"] = self.canSell!
                }
                if self.customizedAttributeMap != nil {
                    map["CustomizedAttributeMap"] = self.customizedAttributeMap!
                }
                if self.extInfo != nil {
                    map["ExtInfo"] = self.extInfo!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.hasQuantity != nil {
                    map["HasQuantity"] = self.hasQuantity!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.lmAttributeModels != nil {
                    var tmp : [Any] = []
                    for k in self.lmAttributeModels! {
                        tmp.append(k.toMap())
                    }
                    map["LmAttributeModels"] = tmp
                }
                if self.lmItemId != nil {
                    map["LmItemId"] = self.lmItemId!
                }
                if self.priceCent != nil {
                    map["PriceCent"] = self.priceCent!
                }
                if self.quantity != nil {
                    map["Quantity"] = self.quantity!
                }
                if self.reservedPrice != nil {
                    map["ReservedPrice"] = self.reservedPrice!
                }
                if self.simpleQuantity != nil {
                    map["SimpleQuantity"] = self.simpleQuantity!
                }
                if self.skuDesc != nil {
                    map["SkuDesc"] = self.skuDesc!
                }
                if self.skuId != nil {
                    map["SkuId"] = self.skuId!
                }
                if self.skuPicUrl != nil {
                    map["SkuPicUrl"] = self.skuPicUrl!
                }
                if self.skuProperties != nil {
                    map["SkuProperties"] = self.skuProperties!
                }
                if self.skuPropertiesJson != nil {
                    map["SkuPropertiesJson"] = self.skuPropertiesJson!
                }
                if self.skuTitle != nil {
                    map["SkuTitle"] = self.skuTitle!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tips != nil {
                    map["Tips"] = self.tips!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CanSell") {
                    self.canSell = dict["CanSell"] as! Bool
                }
                if dict.keys.contains("CustomizedAttributeMap") {
                    self.customizedAttributeMap = dict["CustomizedAttributeMap"] as! [String: String]
                }
                if dict.keys.contains("ExtInfo") {
                    self.extInfo = dict["ExtInfo"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("HasQuantity") {
                    self.hasQuantity = dict["HasQuantity"] as! Bool
                }
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! Int64
                }
                if dict.keys.contains("LmAttributeModels") {
                    self.lmAttributeModels = dict["LmAttributeModels"] as! [ListDistributionItemResponseBody.Model.SkuList.LmAttributeModels]
                }
                if dict.keys.contains("LmItemId") {
                    self.lmItemId = dict["LmItemId"] as! String
                }
                if dict.keys.contains("PriceCent") {
                    self.priceCent = dict["PriceCent"] as! Int64
                }
                if dict.keys.contains("Quantity") {
                    self.quantity = dict["Quantity"] as! Int64
                }
                if dict.keys.contains("ReservedPrice") {
                    self.reservedPrice = dict["ReservedPrice"] as! Int64
                }
                if dict.keys.contains("SimpleQuantity") {
                    self.simpleQuantity = dict["SimpleQuantity"] as! String
                }
                if dict.keys.contains("SkuDesc") {
                    self.skuDesc = dict["SkuDesc"] as! String
                }
                if dict.keys.contains("SkuId") {
                    self.skuId = dict["SkuId"] as! Int64
                }
                if dict.keys.contains("SkuPicUrl") {
                    self.skuPicUrl = dict["SkuPicUrl"] as! String
                }
                if dict.keys.contains("SkuProperties") {
                    self.skuProperties = dict["SkuProperties"] as! [String: String]
                }
                if dict.keys.contains("SkuPropertiesJson") {
                    self.skuPropertiesJson = dict["SkuPropertiesJson"] as! String
                }
                if dict.keys.contains("SkuTitle") {
                    self.skuTitle = dict["SkuTitle"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Tips") {
                    self.tips = dict["Tips"] as! String
                }
            }
        }
        public var category: String?

        public var categoryChain: [ListDistributionItemResponseBody.Model.CategoryChain]?

        public var categoryId: Int64?

        public var descOption: String?

        public var distributionMallId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var hasQuantity: Bool?

        public var isCanSell: Bool?

        public var itemDesc: String?

        public var itemId: Int64?

        public var itemIdStr: String?

        public var itemImages: [String]?

        public var itemName: String?

        public var itemTitle: String?

        public var lmItemId: String?

        public var mainPicUrl: String?

        public var picUrl: String?

        public var priceCentScope: String?

        public var propertiesJson: String?

        public var quantity: Int32?

        public var reservedPrice: Int64?

        public var reservedPriceScope: String?

        public var simpleQuantity: String?

        public var simpleTotalSoldQuantity: String?

        public var skuList: [ListDistributionItemResponseBody.Model.SkuList]?

        public var status: Int32?

        public var tips: String?

        public var totalSoldQuantity: Int32?

        public override init() {
            super.init()
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
                map["Category"] = self.category!
            }
            if self.categoryChain != nil {
                var tmp : [Any] = []
                for k in self.categoryChain! {
                    tmp.append(k.toMap())
                }
                map["CategoryChain"] = tmp
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.descOption != nil {
                map["DescOption"] = self.descOption!
            }
            if self.distributionMallId != nil {
                map["DistributionMallId"] = self.distributionMallId!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.hasQuantity != nil {
                map["HasQuantity"] = self.hasQuantity!
            }
            if self.isCanSell != nil {
                map["IsCanSell"] = self.isCanSell!
            }
            if self.itemDesc != nil {
                map["ItemDesc"] = self.itemDesc!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemIdStr != nil {
                map["ItemIdStr"] = self.itemIdStr!
            }
            if self.itemImages != nil {
                map["ItemImages"] = self.itemImages!
            }
            if self.itemName != nil {
                map["ItemName"] = self.itemName!
            }
            if self.itemTitle != nil {
                map["ItemTitle"] = self.itemTitle!
            }
            if self.lmItemId != nil {
                map["LmItemId"] = self.lmItemId!
            }
            if self.mainPicUrl != nil {
                map["MainPicUrl"] = self.mainPicUrl!
            }
            if self.picUrl != nil {
                map["PicUrl"] = self.picUrl!
            }
            if self.priceCentScope != nil {
                map["PriceCentScope"] = self.priceCentScope!
            }
            if self.propertiesJson != nil {
                map["PropertiesJson"] = self.propertiesJson!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.reservedPrice != nil {
                map["ReservedPrice"] = self.reservedPrice!
            }
            if self.reservedPriceScope != nil {
                map["ReservedPriceScope"] = self.reservedPriceScope!
            }
            if self.simpleQuantity != nil {
                map["SimpleQuantity"] = self.simpleQuantity!
            }
            if self.simpleTotalSoldQuantity != nil {
                map["SimpleTotalSoldQuantity"] = self.simpleTotalSoldQuantity!
            }
            if self.skuList != nil {
                var tmp : [Any] = []
                for k in self.skuList! {
                    tmp.append(k.toMap())
                }
                map["SkuList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tips != nil {
                map["Tips"] = self.tips!
            }
            if self.totalSoldQuantity != nil {
                map["TotalSoldQuantity"] = self.totalSoldQuantity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CategoryChain") {
                self.categoryChain = dict["CategoryChain"] as! [ListDistributionItemResponseBody.Model.CategoryChain]
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("DescOption") {
                self.descOption = dict["DescOption"] as! String
            }
            if dict.keys.contains("DistributionMallId") {
                self.distributionMallId = dict["DistributionMallId"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("HasQuantity") {
                self.hasQuantity = dict["HasQuantity"] as! Bool
            }
            if dict.keys.contains("IsCanSell") {
                self.isCanSell = dict["IsCanSell"] as! Bool
            }
            if dict.keys.contains("ItemDesc") {
                self.itemDesc = dict["ItemDesc"] as! String
            }
            if dict.keys.contains("ItemId") {
                self.itemId = dict["ItemId"] as! Int64
            }
            if dict.keys.contains("ItemIdStr") {
                self.itemIdStr = dict["ItemIdStr"] as! String
            }
            if dict.keys.contains("ItemImages") {
                self.itemImages = dict["ItemImages"] as! [String]
            }
            if dict.keys.contains("ItemName") {
                self.itemName = dict["ItemName"] as! String
            }
            if dict.keys.contains("ItemTitle") {
                self.itemTitle = dict["ItemTitle"] as! String
            }
            if dict.keys.contains("LmItemId") {
                self.lmItemId = dict["LmItemId"] as! String
            }
            if dict.keys.contains("MainPicUrl") {
                self.mainPicUrl = dict["MainPicUrl"] as! String
            }
            if dict.keys.contains("PicUrl") {
                self.picUrl = dict["PicUrl"] as! String
            }
            if dict.keys.contains("PriceCentScope") {
                self.priceCentScope = dict["PriceCentScope"] as! String
            }
            if dict.keys.contains("PropertiesJson") {
                self.propertiesJson = dict["PropertiesJson"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! Int32
            }
            if dict.keys.contains("ReservedPrice") {
                self.reservedPrice = dict["ReservedPrice"] as! Int64
            }
            if dict.keys.contains("ReservedPriceScope") {
                self.reservedPriceScope = dict["ReservedPriceScope"] as! String
            }
            if dict.keys.contains("SimpleQuantity") {
                self.simpleQuantity = dict["SimpleQuantity"] as! String
            }
            if dict.keys.contains("SimpleTotalSoldQuantity") {
                self.simpleTotalSoldQuantity = dict["SimpleTotalSoldQuantity"] as! String
            }
            if dict.keys.contains("SkuList") {
                self.skuList = dict["SkuList"] as! [ListDistributionItemResponseBody.Model.SkuList]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Tips") {
                self.tips = dict["Tips"] as! String
            }
            if dict.keys.contains("TotalSoldQuantity") {
                self.totalSoldQuantity = dict["TotalSoldQuantity"] as! Int32
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: [ListDistributionItemResponseBody.Model]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! [ListDistributionItemResponseBody.Model]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDistributionItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDistributionItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ListDistributionItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDistributionMallRequest : Tea.TeaModel {
    public var channelSupplierId: String?

    public var distributionMallId: String?

    public var distributionMallName: String?

    public var distributorId: String?

    public var endDate: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startDate: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelSupplierId != nil {
            map["ChannelSupplierId"] = self.channelSupplierId!
        }
        if self.distributionMallId != nil {
            map["DistributionMallId"] = self.distributionMallId!
        }
        if self.distributionMallName != nil {
            map["DistributionMallName"] = self.distributionMallName!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelSupplierId") {
            self.channelSupplierId = dict["ChannelSupplierId"] as! String
        }
        if dict.keys.contains("DistributionMallId") {
            self.distributionMallId = dict["DistributionMallId"] as! String
        }
        if dict.keys.contains("DistributionMallName") {
            self.distributionMallName = dict["DistributionMallName"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ListDistributionMallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var channelSupplierId: String?

        public var distributionMallId: String?

        public var distributionMallName: String?

        public var distributionMallType: String?

        public var endDate: String?

        public var startDate: String?

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
            if self.channelSupplierId != nil {
                map["ChannelSupplierId"] = self.channelSupplierId!
            }
            if self.distributionMallId != nil {
                map["DistributionMallId"] = self.distributionMallId!
            }
            if self.distributionMallName != nil {
                map["DistributionMallName"] = self.distributionMallName!
            }
            if self.distributionMallType != nil {
                map["DistributionMallType"] = self.distributionMallType!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelSupplierId") {
                self.channelSupplierId = dict["ChannelSupplierId"] as! String
            }
            if dict.keys.contains("DistributionMallId") {
                self.distributionMallId = dict["DistributionMallId"] as! String
            }
            if dict.keys.contains("DistributionMallName") {
                self.distributionMallName = dict["DistributionMallName"] as! String
            }
            if dict.keys.contains("DistributionMallType") {
                self.distributionMallType = dict["DistributionMallType"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: [ListDistributionMallResponseBody.Model]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! [ListDistributionMallResponseBody.Model]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDistributionMallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDistributionMallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ListDistributionMallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyRefund4DistributionRequest : Tea.TeaModel {
    public class LeavePictureLists : Tea.TeaModel {
        public var desc: String?

        public var picture: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.picture != nil {
                map["Picture"] = self.picture!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("Picture") {
                self.picture = dict["Picture"] as! String
            }
        }
    }
    public var applyReasonTextId: Int64?

    public var applyRefundCount: Int32?

    public var applyRefundFee: Int64?

    public var bizClaimType: Int32?

    public var disputeId: Int64?

    public var distributorId: String?

    public var goodsStatus: Int32?

    public var leaveMessage: String?

    public var leavePictureLists: [ModifyRefund4DistributionRequest.LeavePictureLists]?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyReasonTextId != nil {
            map["ApplyReasonTextId"] = self.applyReasonTextId!
        }
        if self.applyRefundCount != nil {
            map["ApplyRefundCount"] = self.applyRefundCount!
        }
        if self.applyRefundFee != nil {
            map["ApplyRefundFee"] = self.applyRefundFee!
        }
        if self.bizClaimType != nil {
            map["BizClaimType"] = self.bizClaimType!
        }
        if self.disputeId != nil {
            map["DisputeId"] = self.disputeId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.goodsStatus != nil {
            map["GoodsStatus"] = self.goodsStatus!
        }
        if self.leaveMessage != nil {
            map["LeaveMessage"] = self.leaveMessage!
        }
        if self.leavePictureLists != nil {
            var tmp : [Any] = []
            for k in self.leavePictureLists! {
                tmp.append(k.toMap())
            }
            map["LeavePictureLists"] = tmp
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyReasonTextId") {
            self.applyReasonTextId = dict["ApplyReasonTextId"] as! Int64
        }
        if dict.keys.contains("ApplyRefundCount") {
            self.applyRefundCount = dict["ApplyRefundCount"] as! Int32
        }
        if dict.keys.contains("ApplyRefundFee") {
            self.applyRefundFee = dict["ApplyRefundFee"] as! Int64
        }
        if dict.keys.contains("BizClaimType") {
            self.bizClaimType = dict["BizClaimType"] as! Int32
        }
        if dict.keys.contains("DisputeId") {
            self.disputeId = dict["DisputeId"] as! Int64
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("GoodsStatus") {
            self.goodsStatus = dict["GoodsStatus"] as! Int32
        }
        if dict.keys.contains("LeaveMessage") {
            self.leaveMessage = dict["LeaveMessage"] as! String
        }
        if dict.keys.contains("LeavePictureLists") {
            self.leavePictureLists = dict["LeavePictureLists"] as! [ModifyRefund4DistributionRequest.LeavePictureLists]
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyRefund4DistributionShrinkRequest : Tea.TeaModel {
    public var applyReasonTextId: Int64?

    public var applyRefundCount: Int32?

    public var applyRefundFee: Int64?

    public var bizClaimType: Int32?

    public var disputeId: Int64?

    public var distributorId: String?

    public var goodsStatus: Int32?

    public var leaveMessage: String?

    public var leavePictureListsShrink: String?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyReasonTextId != nil {
            map["ApplyReasonTextId"] = self.applyReasonTextId!
        }
        if self.applyRefundCount != nil {
            map["ApplyRefundCount"] = self.applyRefundCount!
        }
        if self.applyRefundFee != nil {
            map["ApplyRefundFee"] = self.applyRefundFee!
        }
        if self.bizClaimType != nil {
            map["BizClaimType"] = self.bizClaimType!
        }
        if self.disputeId != nil {
            map["DisputeId"] = self.disputeId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.goodsStatus != nil {
            map["GoodsStatus"] = self.goodsStatus!
        }
        if self.leaveMessage != nil {
            map["LeaveMessage"] = self.leaveMessage!
        }
        if self.leavePictureListsShrink != nil {
            map["LeavePictureLists"] = self.leavePictureListsShrink!
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyReasonTextId") {
            self.applyReasonTextId = dict["ApplyReasonTextId"] as! Int64
        }
        if dict.keys.contains("ApplyRefundCount") {
            self.applyRefundCount = dict["ApplyRefundCount"] as! Int32
        }
        if dict.keys.contains("ApplyRefundFee") {
            self.applyRefundFee = dict["ApplyRefundFee"] as! Int64
        }
        if dict.keys.contains("BizClaimType") {
            self.bizClaimType = dict["BizClaimType"] as! Int32
        }
        if dict.keys.contains("DisputeId") {
            self.disputeId = dict["DisputeId"] as! Int64
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("GoodsStatus") {
            self.goodsStatus = dict["GoodsStatus"] as! Int32
        }
        if dict.keys.contains("LeaveMessage") {
            self.leaveMessage = dict["LeaveMessage"] as! String
        }
        if dict.keys.contains("LeavePictureLists") {
            self.leavePictureListsShrink = dict["LeavePictureLists"] as! String
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyRefund4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var disputeId: Int64?

        public var disputeStatus: Int32?

        public var disputeType: Int32?

        public var subDistributionOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.disputeId != nil {
                map["DisputeId"] = self.disputeId!
            }
            if self.disputeStatus != nil {
                map["DisputeStatus"] = self.disputeStatus!
            }
            if self.disputeType != nil {
                map["DisputeType"] = self.disputeType!
            }
            if self.subDistributionOrderId != nil {
                map["SubDistributionOrderId"] = self.subDistributionOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisputeId") {
                self.disputeId = dict["DisputeId"] as! Int64
            }
            if dict.keys.contains("DisputeStatus") {
                self.disputeStatus = dict["DisputeStatus"] as! Int32
            }
            if dict.keys.contains("DisputeType") {
                self.disputeType = dict["DisputeType"] as! Int32
            }
            if dict.keys.contains("SubDistributionOrderId") {
                self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: ModifyRefund4DistributionResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = ModifyRefund4DistributionResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ModifyRefund4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRefund4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ModifyRefund4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryChildDivisionCodeByIdRequest : Tea.TeaModel {
    public var distributorId: String?

    public var divisionCode: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.divisionCode != nil {
            map["DivisionCode"] = self.divisionCode!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("DivisionCode") {
            self.divisionCode = dict["DivisionCode"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class QueryChildDivisionCodeByIdResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class DivisionList : Tea.TeaModel {
            public var divisionCode: Int64?

            public var divisionLevel: Int64?

            public var divisionName: String?

            public var parentId: Int64?

            public var pinyin: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.divisionCode != nil {
                    map["DivisionCode"] = self.divisionCode!
                }
                if self.divisionLevel != nil {
                    map["DivisionLevel"] = self.divisionLevel!
                }
                if self.divisionName != nil {
                    map["DivisionName"] = self.divisionName!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.pinyin != nil {
                    map["Pinyin"] = self.pinyin!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DivisionCode") {
                    self.divisionCode = dict["DivisionCode"] as! Int64
                }
                if dict.keys.contains("DivisionLevel") {
                    self.divisionLevel = dict["DivisionLevel"] as! Int64
                }
                if dict.keys.contains("DivisionName") {
                    self.divisionName = dict["DivisionName"] as! String
                }
                if dict.keys.contains("ParentId") {
                    self.parentId = dict["ParentId"] as! Int64
                }
                if dict.keys.contains("Pinyin") {
                    self.pinyin = dict["Pinyin"] as! String
                }
            }
        }
        public var divisionList: [QueryChildDivisionCodeByIdResponseBody.Model.DivisionList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.divisionList != nil {
                var tmp : [Any] = []
                for k in self.divisionList! {
                    tmp.append(k.toMap())
                }
                map["DivisionList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DivisionList") {
                self.divisionList = dict["DivisionList"] as! [QueryChildDivisionCodeByIdResponseBody.Model.DivisionList]
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: QueryChildDivisionCodeByIdResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = QueryChildDivisionCodeByIdResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QueryChildDivisionCodeByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChildDivisionCodeByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryChildDivisionCodeByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDistributionMallRequest : Tea.TeaModel {
    public var distributionMallId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributionMallId != nil {
            map["DistributionMallId"] = self.distributionMallId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributionMallId") {
            self.distributionMallId = dict["DistributionMallId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class QueryDistributionMallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var channelSupplierId: String?

        public var distributionMallId: String?

        public var distributionMallName: String?

        public var distributionMallType: String?

        public var distributorId: String?

        public var endDate: String?

        public var startDate: String?

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
            if self.channelSupplierId != nil {
                map["ChannelSupplierId"] = self.channelSupplierId!
            }
            if self.distributionMallId != nil {
                map["DistributionMallId"] = self.distributionMallId!
            }
            if self.distributionMallName != nil {
                map["DistributionMallName"] = self.distributionMallName!
            }
            if self.distributionMallType != nil {
                map["DistributionMallType"] = self.distributionMallType!
            }
            if self.distributorId != nil {
                map["DistributorId"] = self.distributorId!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelSupplierId") {
                self.channelSupplierId = dict["ChannelSupplierId"] as! String
            }
            if dict.keys.contains("DistributionMallId") {
                self.distributionMallId = dict["DistributionMallId"] as! String
            }
            if dict.keys.contains("DistributionMallName") {
                self.distributionMallName = dict["DistributionMallName"] as! String
            }
            if dict.keys.contains("DistributionMallType") {
                self.distributionMallType = dict["DistributionMallType"] as! String
            }
            if dict.keys.contains("DistributorId") {
                self.distributorId = dict["DistributorId"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var bizViewData: [String: Any]?

    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: QueryDistributionMallResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizViewData != nil {
            map["BizViewData"] = self.bizViewData!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizViewData") {
            self.bizViewData = dict["BizViewData"] as! [String: Any]
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = QueryDistributionMallResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QueryDistributionMallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDistributionMallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryDistributionMallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDistributionTradeStatusRequest : Tea.TeaModel {
    public var distributionSupplierId: String?

    public var distributionTradeId: String?

    public var distributorId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributionSupplierId != nil {
            map["DistributionSupplierId"] = self.distributionSupplierId!
        }
        if self.distributionTradeId != nil {
            map["DistributionTradeId"] = self.distributionTradeId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributionSupplierId") {
            self.distributionSupplierId = dict["DistributionSupplierId"] as! String
        }
        if dict.keys.contains("DistributionTradeId") {
            self.distributionTradeId = dict["DistributionTradeId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class QueryDistributionTradeStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QueryDistributionTradeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDistributionTradeStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryDistributionTradeStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryItemDetailRequest : Tea.TeaModel {
    public var distributionMallId: String?

    public var distributorId: String?

    public var lmItemId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributionMallId != nil {
            map["DistributionMallId"] = self.distributionMallId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.lmItemId != nil {
            map["LmItemId"] = self.lmItemId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributionMallId") {
            self.distributionMallId = dict["DistributionMallId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("LmItemId") {
            self.lmItemId = dict["LmItemId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class QueryItemDetailResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class SkuModels : Tea.TeaModel {
            public var canNotBeSoldCode: String?

            public var canNotBeSoldMessage: String?

            public var customizedAttributeMap: [String: String]?

            public var distributionMallId: String?

            public var extJson: String?

            public var hasQuantity: Bool?

            public var invoiceType: Int32?

            public var itemId: Int64?

            public var lmItemId: String?

            public var lmSkuAttributeMap: [String: String]?

            public var priceCent: Int64?

            public var quantity: Int32?

            public var reservedPrice: Int64?

            public var simpleQuantity: String?

            public var skuId: Int64?

            public var skuPicUrl: String?

            public var skuPvs: String?

            public var skuTitle: String?

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
                if self.canNotBeSoldCode != nil {
                    map["CanNotBeSoldCode"] = self.canNotBeSoldCode!
                }
                if self.canNotBeSoldMessage != nil {
                    map["CanNotBeSoldMessage"] = self.canNotBeSoldMessage!
                }
                if self.customizedAttributeMap != nil {
                    map["CustomizedAttributeMap"] = self.customizedAttributeMap!
                }
                if self.distributionMallId != nil {
                    map["DistributionMallId"] = self.distributionMallId!
                }
                if self.extJson != nil {
                    map["ExtJson"] = self.extJson!
                }
                if self.hasQuantity != nil {
                    map["HasQuantity"] = self.hasQuantity!
                }
                if self.invoiceType != nil {
                    map["InvoiceType"] = self.invoiceType!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.lmItemId != nil {
                    map["LmItemId"] = self.lmItemId!
                }
                if self.lmSkuAttributeMap != nil {
                    map["LmSkuAttributeMap"] = self.lmSkuAttributeMap!
                }
                if self.priceCent != nil {
                    map["PriceCent"] = self.priceCent!
                }
                if self.quantity != nil {
                    map["Quantity"] = self.quantity!
                }
                if self.reservedPrice != nil {
                    map["ReservedPrice"] = self.reservedPrice!
                }
                if self.simpleQuantity != nil {
                    map["SimpleQuantity"] = self.simpleQuantity!
                }
                if self.skuId != nil {
                    map["SkuId"] = self.skuId!
                }
                if self.skuPicUrl != nil {
                    map["SkuPicUrl"] = self.skuPicUrl!
                }
                if self.skuPvs != nil {
                    map["SkuPvs"] = self.skuPvs!
                }
                if self.skuTitle != nil {
                    map["SkuTitle"] = self.skuTitle!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CanNotBeSoldCode") {
                    self.canNotBeSoldCode = dict["CanNotBeSoldCode"] as! String
                }
                if dict.keys.contains("CanNotBeSoldMessage") {
                    self.canNotBeSoldMessage = dict["CanNotBeSoldMessage"] as! String
                }
                if dict.keys.contains("CustomizedAttributeMap") {
                    self.customizedAttributeMap = dict["CustomizedAttributeMap"] as! [String: String]
                }
                if dict.keys.contains("DistributionMallId") {
                    self.distributionMallId = dict["DistributionMallId"] as! String
                }
                if dict.keys.contains("ExtJson") {
                    self.extJson = dict["ExtJson"] as! String
                }
                if dict.keys.contains("HasQuantity") {
                    self.hasQuantity = dict["HasQuantity"] as! Bool
                }
                if dict.keys.contains("InvoiceType") {
                    self.invoiceType = dict["InvoiceType"] as! Int32
                }
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! Int64
                }
                if dict.keys.contains("LmItemId") {
                    self.lmItemId = dict["LmItemId"] as! String
                }
                if dict.keys.contains("LmSkuAttributeMap") {
                    self.lmSkuAttributeMap = dict["LmSkuAttributeMap"] as! [String: String]
                }
                if dict.keys.contains("PriceCent") {
                    self.priceCent = dict["PriceCent"] as! Int64
                }
                if dict.keys.contains("Quantity") {
                    self.quantity = dict["Quantity"] as! Int32
                }
                if dict.keys.contains("ReservedPrice") {
                    self.reservedPrice = dict["ReservedPrice"] as! Int64
                }
                if dict.keys.contains("SimpleQuantity") {
                    self.simpleQuantity = dict["SimpleQuantity"] as! String
                }
                if dict.keys.contains("SkuId") {
                    self.skuId = dict["SkuId"] as! Int64
                }
                if dict.keys.contains("SkuPicUrl") {
                    self.skuPicUrl = dict["SkuPicUrl"] as! String
                }
                if dict.keys.contains("SkuPvs") {
                    self.skuPvs = dict["SkuPvs"] as! String
                }
                if dict.keys.contains("SkuTitle") {
                    self.skuTitle = dict["SkuTitle"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public class SkuPropertys : Tea.TeaModel {
            public class Values : Tea.TeaModel {
                public var id: Int64?

                public var text: String?

                public override init() {
                    super.init()
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
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Text") {
                        self.text = dict["Text"] as! String
                    }
                }
            }
            public var id: Int64?

            public var text: String?

            public var values: [QueryItemDetailResponseBody.Model.SkuPropertys.Values]?

            public override init() {
                super.init()
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
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.values != nil {
                    var tmp : [Any] = []
                    for k in self.values! {
                        tmp.append(k.toMap())
                    }
                    map["Values"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [QueryItemDetailResponseBody.Model.SkuPropertys.Values]
                }
            }
        }
        public var canNotBeSoldCode: String?

        public var canNotBeSoldMessage: String?

        public var categoryId: Int64?

        public var categoryIds: [Int64]?

        public var city: String?

        public var current: String?

        public var customizedAttributeMap: [String: String]?

        public var descOption: String?

        public var descPath: String?

        public var distributionMallId: String?

        public var features: [String: String]?

        public var firstPicUrl: String?

        public var hasQuantity: Bool?

        public var iforestProps: [[String: String]]?

        public var invoiceType: Int32?

        public var isCanSell: Bool?

        public var isSellerPayPostfee: Bool?

        public var itemId: Int64?

        public var itemImages: [String]?

        public var itemTitle: String?

        public var itemTotalSimpleValue: String?

        public var itemTotalValue: Int32?

        public var lmItemAttributeMap: [String: String]?

        public var lmItemCategory: String?

        public var lmItemId: String?

        public var mainPicUrl: String?

        public var minPrice: Int64?

        public var properties: [String: [String]]?

        public var prov: String?

        public var quantity: Int32?

        public var reservedPrice: Int64?

        public var simpleQuantity: String?

        public var skuModels: [QueryItemDetailResponseBody.Model.SkuModels]?

        public var skuPropertys: [QueryItemDetailResponseBody.Model.SkuPropertys]?

        public var thirdPartyItemId: String?

        public var thirdPartyName: String?

        public var videoPicUrl: String?

        public var videoUrl: String?

        public var virtualItemType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canNotBeSoldCode != nil {
                map["CanNotBeSoldCode"] = self.canNotBeSoldCode!
            }
            if self.canNotBeSoldMessage != nil {
                map["CanNotBeSoldMessage"] = self.canNotBeSoldMessage!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryIds != nil {
                map["CategoryIds"] = self.categoryIds!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.current != nil {
                map["Current"] = self.current!
            }
            if self.customizedAttributeMap != nil {
                map["CustomizedAttributeMap"] = self.customizedAttributeMap!
            }
            if self.descOption != nil {
                map["DescOption"] = self.descOption!
            }
            if self.descPath != nil {
                map["DescPath"] = self.descPath!
            }
            if self.distributionMallId != nil {
                map["DistributionMallId"] = self.distributionMallId!
            }
            if self.features != nil {
                map["Features"] = self.features!
            }
            if self.firstPicUrl != nil {
                map["FirstPicUrl"] = self.firstPicUrl!
            }
            if self.hasQuantity != nil {
                map["HasQuantity"] = self.hasQuantity!
            }
            if self.iforestProps != nil {
                map["IforestProps"] = self.iforestProps!
            }
            if self.invoiceType != nil {
                map["InvoiceType"] = self.invoiceType!
            }
            if self.isCanSell != nil {
                map["IsCanSell"] = self.isCanSell!
            }
            if self.isSellerPayPostfee != nil {
                map["IsSellerPayPostfee"] = self.isSellerPayPostfee!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemImages != nil {
                map["ItemImages"] = self.itemImages!
            }
            if self.itemTitle != nil {
                map["ItemTitle"] = self.itemTitle!
            }
            if self.itemTotalSimpleValue != nil {
                map["ItemTotalSimpleValue"] = self.itemTotalSimpleValue!
            }
            if self.itemTotalValue != nil {
                map["ItemTotalValue"] = self.itemTotalValue!
            }
            if self.lmItemAttributeMap != nil {
                map["LmItemAttributeMap"] = self.lmItemAttributeMap!
            }
            if self.lmItemCategory != nil {
                map["LmItemCategory"] = self.lmItemCategory!
            }
            if self.lmItemId != nil {
                map["LmItemId"] = self.lmItemId!
            }
            if self.mainPicUrl != nil {
                map["MainPicUrl"] = self.mainPicUrl!
            }
            if self.minPrice != nil {
                map["MinPrice"] = self.minPrice!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.prov != nil {
                map["Prov"] = self.prov!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.reservedPrice != nil {
                map["ReservedPrice"] = self.reservedPrice!
            }
            if self.simpleQuantity != nil {
                map["SimpleQuantity"] = self.simpleQuantity!
            }
            if self.skuModels != nil {
                var tmp : [Any] = []
                for k in self.skuModels! {
                    tmp.append(k.toMap())
                }
                map["SkuModels"] = tmp
            }
            if self.skuPropertys != nil {
                var tmp : [Any] = []
                for k in self.skuPropertys! {
                    tmp.append(k.toMap())
                }
                map["SkuPropertys"] = tmp
            }
            if self.thirdPartyItemId != nil {
                map["ThirdPartyItemId"] = self.thirdPartyItemId!
            }
            if self.thirdPartyName != nil {
                map["ThirdPartyName"] = self.thirdPartyName!
            }
            if self.videoPicUrl != nil {
                map["VideoPicUrl"] = self.videoPicUrl!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            if self.virtualItemType != nil {
                map["VirtualItemType"] = self.virtualItemType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanNotBeSoldCode") {
                self.canNotBeSoldCode = dict["CanNotBeSoldCode"] as! String
            }
            if dict.keys.contains("CanNotBeSoldMessage") {
                self.canNotBeSoldMessage = dict["CanNotBeSoldMessage"] as! String
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("CategoryIds") {
                self.categoryIds = dict["CategoryIds"] as! [Int64]
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Current") {
                self.current = dict["Current"] as! String
            }
            if dict.keys.contains("CustomizedAttributeMap") {
                self.customizedAttributeMap = dict["CustomizedAttributeMap"] as! [String: String]
            }
            if dict.keys.contains("DescOption") {
                self.descOption = dict["DescOption"] as! String
            }
            if dict.keys.contains("DescPath") {
                self.descPath = dict["DescPath"] as! String
            }
            if dict.keys.contains("DistributionMallId") {
                self.distributionMallId = dict["DistributionMallId"] as! String
            }
            if dict.keys.contains("Features") {
                self.features = dict["Features"] as! [String: String]
            }
            if dict.keys.contains("FirstPicUrl") {
                self.firstPicUrl = dict["FirstPicUrl"] as! String
            }
            if dict.keys.contains("HasQuantity") {
                self.hasQuantity = dict["HasQuantity"] as! Bool
            }
            if dict.keys.contains("IforestProps") {
                self.iforestProps = dict["IforestProps"] as! [[String: String]]
            }
            if dict.keys.contains("InvoiceType") {
                self.invoiceType = dict["InvoiceType"] as! Int32
            }
            if dict.keys.contains("IsCanSell") {
                self.isCanSell = dict["IsCanSell"] as! Bool
            }
            if dict.keys.contains("IsSellerPayPostfee") {
                self.isSellerPayPostfee = dict["IsSellerPayPostfee"] as! Bool
            }
            if dict.keys.contains("ItemId") {
                self.itemId = dict["ItemId"] as! Int64
            }
            if dict.keys.contains("ItemImages") {
                self.itemImages = dict["ItemImages"] as! [String]
            }
            if dict.keys.contains("ItemTitle") {
                self.itemTitle = dict["ItemTitle"] as! String
            }
            if dict.keys.contains("ItemTotalSimpleValue") {
                self.itemTotalSimpleValue = dict["ItemTotalSimpleValue"] as! String
            }
            if dict.keys.contains("ItemTotalValue") {
                self.itemTotalValue = dict["ItemTotalValue"] as! Int32
            }
            if dict.keys.contains("LmItemAttributeMap") {
                self.lmItemAttributeMap = dict["LmItemAttributeMap"] as! [String: String]
            }
            if dict.keys.contains("LmItemCategory") {
                self.lmItemCategory = dict["LmItemCategory"] as! String
            }
            if dict.keys.contains("LmItemId") {
                self.lmItemId = dict["LmItemId"] as! String
            }
            if dict.keys.contains("MainPicUrl") {
                self.mainPicUrl = dict["MainPicUrl"] as! String
            }
            if dict.keys.contains("MinPrice") {
                self.minPrice = dict["MinPrice"] as! Int64
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! [String: [String]]
            }
            if dict.keys.contains("Prov") {
                self.prov = dict["Prov"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! Int32
            }
            if dict.keys.contains("ReservedPrice") {
                self.reservedPrice = dict["ReservedPrice"] as! Int64
            }
            if dict.keys.contains("SimpleQuantity") {
                self.simpleQuantity = dict["SimpleQuantity"] as! String
            }
            if dict.keys.contains("SkuModels") {
                self.skuModels = dict["SkuModels"] as! [QueryItemDetailResponseBody.Model.SkuModels]
            }
            if dict.keys.contains("SkuPropertys") {
                self.skuPropertys = dict["SkuPropertys"] as! [QueryItemDetailResponseBody.Model.SkuPropertys]
            }
            if dict.keys.contains("ThirdPartyItemId") {
                self.thirdPartyItemId = dict["ThirdPartyItemId"] as! String
            }
            if dict.keys.contains("ThirdPartyName") {
                self.thirdPartyName = dict["ThirdPartyName"] as! String
            }
            if dict.keys.contains("VideoPicUrl") {
                self.videoPicUrl = dict["VideoPicUrl"] as! String
            }
            if dict.keys.contains("VideoUrl") {
                self.videoUrl = dict["VideoUrl"] as! String
            }
            if dict.keys.contains("VirtualItemType") {
                self.virtualItemType = dict["VirtualItemType"] as! String
            }
        }
    }
    public var bizViewData: [String: Any]?

    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: QueryItemDetailResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizViewData != nil {
            map["BizViewData"] = self.bizViewData!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizViewData") {
            self.bizViewData = dict["BizViewData"] as! [String: Any]
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = QueryItemDetailResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QueryItemDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryItemDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryItemDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryLogistics4DistributionRequest : Tea.TeaModel {
    public var distributorId: String?

    public var mainDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.mainDistributionOrderId != nil {
            map["MainDistributionOrderId"] = self.mainDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("MainDistributionOrderId") {
            self.mainDistributionOrderId = dict["MainDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class QueryLogistics4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Goods : Tea.TeaModel {
            public var goodName: String?

            public var itemId: String?

            public var quantity: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.goodName != nil {
                    map["GoodName"] = self.goodName!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.quantity != nil {
                    map["Quantity"] = self.quantity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GoodName") {
                    self.goodName = dict["GoodName"] as! String
                }
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! String
                }
                if dict.keys.contains("Quantity") {
                    self.quantity = dict["Quantity"] as! Int32
                }
            }
        }
        public class LogisticsDetailList : Tea.TeaModel {
            public var ocurrTimeStr: String?

            public var standerdDesc: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ocurrTimeStr != nil {
                    map["OcurrTimeStr"] = self.ocurrTimeStr!
                }
                if self.standerdDesc != nil {
                    map["StanderdDesc"] = self.standerdDesc!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OcurrTimeStr") {
                    self.ocurrTimeStr = dict["OcurrTimeStr"] as! String
                }
                if dict.keys.contains("StanderdDesc") {
                    self.standerdDesc = dict["StanderdDesc"] as! String
                }
            }
        }
        public var dataProvider: String?

        public var dataProviderTitle: String?

        public var goods: [QueryLogistics4DistributionResponseBody.Model.Goods]?

        public var logisticsCompanyCode: String?

        public var logisticsCompanyName: String?

        public var logisticsDetailList: [QueryLogistics4DistributionResponseBody.Model.LogisticsDetailList]?

        public var mailNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataProvider != nil {
                map["DataProvider"] = self.dataProvider!
            }
            if self.dataProviderTitle != nil {
                map["DataProviderTitle"] = self.dataProviderTitle!
            }
            if self.goods != nil {
                var tmp : [Any] = []
                for k in self.goods! {
                    tmp.append(k.toMap())
                }
                map["Goods"] = tmp
            }
            if self.logisticsCompanyCode != nil {
                map["LogisticsCompanyCode"] = self.logisticsCompanyCode!
            }
            if self.logisticsCompanyName != nil {
                map["LogisticsCompanyName"] = self.logisticsCompanyName!
            }
            if self.logisticsDetailList != nil {
                var tmp : [Any] = []
                for k in self.logisticsDetailList! {
                    tmp.append(k.toMap())
                }
                map["LogisticsDetailList"] = tmp
            }
            if self.mailNo != nil {
                map["MailNo"] = self.mailNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataProvider") {
                self.dataProvider = dict["DataProvider"] as! String
            }
            if dict.keys.contains("DataProviderTitle") {
                self.dataProviderTitle = dict["DataProviderTitle"] as! String
            }
            if dict.keys.contains("Goods") {
                self.goods = dict["Goods"] as! [QueryLogistics4DistributionResponseBody.Model.Goods]
            }
            if dict.keys.contains("LogisticsCompanyCode") {
                self.logisticsCompanyCode = dict["LogisticsCompanyCode"] as! String
            }
            if dict.keys.contains("LogisticsCompanyName") {
                self.logisticsCompanyName = dict["LogisticsCompanyName"] as! String
            }
            if dict.keys.contains("LogisticsDetailList") {
                self.logisticsDetailList = dict["LogisticsDetailList"] as! [QueryLogistics4DistributionResponseBody.Model.LogisticsDetailList]
            }
            if dict.keys.contains("MailNo") {
                self.mailNo = dict["MailNo"] as! String
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: [QueryLogistics4DistributionResponseBody.Model]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! [QueryLogistics4DistributionResponseBody.Model]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QueryLogistics4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryLogistics4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryLogistics4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOrderDetail4DistributionRequest : Tea.TeaModel {
    public var distributorId: String?

    public var mainDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.mainDistributionOrderId != nil {
            map["MainDistributionOrderId"] = self.mainDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("MainDistributionOrderId") {
            self.mainDistributionOrderId = dict["MainDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class QueryOrderDetail4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class SubOrderList : Tea.TeaModel {
            public class ItemPrice : Tea.TeaModel {
                public var fundAmountMoney: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fundAmountMoney != nil {
                        map["FundAmountMoney"] = self.fundAmountMoney!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FundAmountMoney") {
                        self.fundAmountMoney = dict["FundAmountMoney"] as! String
                    }
                }
            }
            public var itemId: String?

            public var itemPic: String?

            public var itemPrice: [QueryOrderDetail4DistributionResponseBody.Model.SubOrderList.ItemPrice]?

            public var itemTitle: String?

            public var logisticsStatus: String?

            public var mainDistributionOrderId: String?

            public var number: String?

            public var orderStatus: String?

            public var skuId: String?

            public var skuName: String?

            public var subDistributionOrderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.itemPic != nil {
                    map["ItemPic"] = self.itemPic!
                }
                if self.itemPrice != nil {
                    var tmp : [Any] = []
                    for k in self.itemPrice! {
                        tmp.append(k.toMap())
                    }
                    map["ItemPrice"] = tmp
                }
                if self.itemTitle != nil {
                    map["ItemTitle"] = self.itemTitle!
                }
                if self.logisticsStatus != nil {
                    map["LogisticsStatus"] = self.logisticsStatus!
                }
                if self.mainDistributionOrderId != nil {
                    map["MainDistributionOrderId"] = self.mainDistributionOrderId!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.orderStatus != nil {
                    map["OrderStatus"] = self.orderStatus!
                }
                if self.skuId != nil {
                    map["SkuId"] = self.skuId!
                }
                if self.skuName != nil {
                    map["SkuName"] = self.skuName!
                }
                if self.subDistributionOrderId != nil {
                    map["SubDistributionOrderId"] = self.subDistributionOrderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! String
                }
                if dict.keys.contains("ItemPic") {
                    self.itemPic = dict["ItemPic"] as! String
                }
                if dict.keys.contains("ItemPrice") {
                    self.itemPrice = dict["ItemPrice"] as! [QueryOrderDetail4DistributionResponseBody.Model.SubOrderList.ItemPrice]
                }
                if dict.keys.contains("ItemTitle") {
                    self.itemTitle = dict["ItemTitle"] as! String
                }
                if dict.keys.contains("LogisticsStatus") {
                    self.logisticsStatus = dict["LogisticsStatus"] as! String
                }
                if dict.keys.contains("MainDistributionOrderId") {
                    self.mainDistributionOrderId = dict["MainDistributionOrderId"] as! String
                }
                if dict.keys.contains("Number") {
                    self.number = dict["Number"] as! String
                }
                if dict.keys.contains("OrderStatus") {
                    self.orderStatus = dict["OrderStatus"] as! String
                }
                if dict.keys.contains("SkuId") {
                    self.skuId = dict["SkuId"] as! String
                }
                if dict.keys.contains("SkuName") {
                    self.skuName = dict["SkuName"] as! String
                }
                if dict.keys.contains("SubDistributionOrderId") {
                    self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
                }
            }
        }
        public var createDate: String?

        public var distributionOrderId: String?

        public var distributorId: String?

        public var logisticsStatus: String?

        public var orderAmount: String?

        public var orderStatus: String?

        public var subOrderList: [QueryOrderDetail4DistributionResponseBody.Model.SubOrderList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.distributionOrderId != nil {
                map["DistributionOrderId"] = self.distributionOrderId!
            }
            if self.distributorId != nil {
                map["DistributorId"] = self.distributorId!
            }
            if self.logisticsStatus != nil {
                map["LogisticsStatus"] = self.logisticsStatus!
            }
            if self.orderAmount != nil {
                map["OrderAmount"] = self.orderAmount!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.subOrderList != nil {
                var tmp : [Any] = []
                for k in self.subOrderList! {
                    tmp.append(k.toMap())
                }
                map["SubOrderList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DistributionOrderId") {
                self.distributionOrderId = dict["DistributionOrderId"] as! String
            }
            if dict.keys.contains("DistributorId") {
                self.distributorId = dict["DistributorId"] as! String
            }
            if dict.keys.contains("LogisticsStatus") {
                self.logisticsStatus = dict["LogisticsStatus"] as! String
            }
            if dict.keys.contains("OrderAmount") {
                self.orderAmount = dict["OrderAmount"] as! String
            }
            if dict.keys.contains("OrderStatus") {
                self.orderStatus = dict["OrderStatus"] as! String
            }
            if dict.keys.contains("SubOrderList") {
                self.subOrderList = dict["SubOrderList"] as! [QueryOrderDetail4DistributionResponseBody.Model.SubOrderList]
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: QueryOrderDetail4DistributionResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = QueryOrderDetail4DistributionResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QueryOrderDetail4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrderDetail4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryOrderDetail4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOrderList4DistributionRequest : Tea.TeaModel {
    public var distributorId: String?

    public var filterOption: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.filterOption != nil {
            map["FilterOption"] = self.filterOption!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("FilterOption") {
            self.filterOption = dict["FilterOption"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class QueryOrderList4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class SubOrderList : Tea.TeaModel {
            public class ItemPrice : Tea.TeaModel {
                public var fundAmountMoney: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fundAmountMoney != nil {
                        map["FundAmountMoney"] = self.fundAmountMoney!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FundAmountMoney") {
                        self.fundAmountMoney = dict["FundAmountMoney"] as! String
                    }
                }
            }
            public var itemId: String?

            public var itemPic: String?

            public var itemPrice: [QueryOrderList4DistributionResponseBody.Model.SubOrderList.ItemPrice]?

            public var itemTitle: String?

            public var logisticsStatus: String?

            public var mainDistributionOrderId: String?

            public var number: String?

            public var orderStatus: String?

            public var skuId: String?

            public var skuName: String?

            public var subDistributionOrderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.itemPic != nil {
                    map["ItemPic"] = self.itemPic!
                }
                if self.itemPrice != nil {
                    var tmp : [Any] = []
                    for k in self.itemPrice! {
                        tmp.append(k.toMap())
                    }
                    map["ItemPrice"] = tmp
                }
                if self.itemTitle != nil {
                    map["ItemTitle"] = self.itemTitle!
                }
                if self.logisticsStatus != nil {
                    map["LogisticsStatus"] = self.logisticsStatus!
                }
                if self.mainDistributionOrderId != nil {
                    map["MainDistributionOrderId"] = self.mainDistributionOrderId!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.orderStatus != nil {
                    map["OrderStatus"] = self.orderStatus!
                }
                if self.skuId != nil {
                    map["SkuId"] = self.skuId!
                }
                if self.skuName != nil {
                    map["SkuName"] = self.skuName!
                }
                if self.subDistributionOrderId != nil {
                    map["SubDistributionOrderId"] = self.subDistributionOrderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! String
                }
                if dict.keys.contains("ItemPic") {
                    self.itemPic = dict["ItemPic"] as! String
                }
                if dict.keys.contains("ItemPrice") {
                    self.itemPrice = dict["ItemPrice"] as! [QueryOrderList4DistributionResponseBody.Model.SubOrderList.ItemPrice]
                }
                if dict.keys.contains("ItemTitle") {
                    self.itemTitle = dict["ItemTitle"] as! String
                }
                if dict.keys.contains("LogisticsStatus") {
                    self.logisticsStatus = dict["LogisticsStatus"] as! String
                }
                if dict.keys.contains("MainDistributionOrderId") {
                    self.mainDistributionOrderId = dict["MainDistributionOrderId"] as! String
                }
                if dict.keys.contains("Number") {
                    self.number = dict["Number"] as! String
                }
                if dict.keys.contains("OrderStatus") {
                    self.orderStatus = dict["OrderStatus"] as! String
                }
                if dict.keys.contains("SkuId") {
                    self.skuId = dict["SkuId"] as! String
                }
                if dict.keys.contains("SkuName") {
                    self.skuName = dict["SkuName"] as! String
                }
                if dict.keys.contains("SubDistributionOrderId") {
                    self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
                }
            }
        }
        public var createDate: String?

        public var distributionOrderId: String?

        public var distributorId: String?

        public var logisticsStatus: String?

        public var orderAmount: String?

        public var orderStatus: String?

        public var subOrderList: [QueryOrderList4DistributionResponseBody.Model.SubOrderList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.distributionOrderId != nil {
                map["DistributionOrderId"] = self.distributionOrderId!
            }
            if self.distributorId != nil {
                map["DistributorId"] = self.distributorId!
            }
            if self.logisticsStatus != nil {
                map["LogisticsStatus"] = self.logisticsStatus!
            }
            if self.orderAmount != nil {
                map["OrderAmount"] = self.orderAmount!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.subOrderList != nil {
                var tmp : [Any] = []
                for k in self.subOrderList! {
                    tmp.append(k.toMap())
                }
                map["SubOrderList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DistributionOrderId") {
                self.distributionOrderId = dict["DistributionOrderId"] as! String
            }
            if dict.keys.contains("DistributorId") {
                self.distributorId = dict["DistributorId"] as! String
            }
            if dict.keys.contains("LogisticsStatus") {
                self.logisticsStatus = dict["LogisticsStatus"] as! String
            }
            if dict.keys.contains("OrderAmount") {
                self.orderAmount = dict["OrderAmount"] as! String
            }
            if dict.keys.contains("OrderStatus") {
                self.orderStatus = dict["OrderStatus"] as! String
            }
            if dict.keys.contains("SubOrderList") {
                self.subOrderList = dict["SubOrderList"] as! [QueryOrderList4DistributionResponseBody.Model.SubOrderList]
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: [QueryOrderList4DistributionResponseBody.Model]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! [QueryOrderList4DistributionResponseBody.Model]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QueryOrderList4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrderList4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryOrderList4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRefundApplicationDetail4DistributionRequest : Tea.TeaModel {
    public var distributorId: String?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class QueryRefundApplicationDetail4DistributionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class ApplyReason : Tea.TeaModel {
            public var reasonTextId: Int64?

            public var reasonTips: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.reasonTextId != nil {
                    map["ReasonTextId"] = self.reasonTextId!
                }
                if self.reasonTips != nil {
                    map["ReasonTips"] = self.reasonTips!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReasonTextId") {
                    self.reasonTextId = dict["ReasonTextId"] as! Int64
                }
                if dict.keys.contains("ReasonTips") {
                    self.reasonTips = dict["ReasonTips"] as! String
                }
            }
        }
        public class RefundFeeData : Tea.TeaModel {
            public var maxRefundFee: Int64?

            public var minRefundFee: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxRefundFee != nil {
                    map["MaxRefundFee"] = self.maxRefundFee!
                }
                if self.minRefundFee != nil {
                    map["MinRefundFee"] = self.minRefundFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaxRefundFee") {
                    self.maxRefundFee = dict["MaxRefundFee"] as! Int64
                }
                if dict.keys.contains("MinRefundFee") {
                    self.minRefundFee = dict["MinRefundFee"] as! Int64
                }
            }
        }
        public var applyDisputeDesc: String?

        public var applyReason: QueryRefundApplicationDetail4DistributionResponseBody.Model.ApplyReason?

        public var bizClaimType: Int32?

        public var disputeCreateTime: String?

        public var disputeDesc: String?

        public var disputeEndTime: String?

        public var disputeId: Int64?

        public var disputeStatus: Int32?

        public var disputeType: Int32?

        public var distributionOrderId: String?

        public var orderLogisticsStatus: Int32?

        public var realRefundFee: Int64?

        public var refundFee: Int64?

        public var refundFeeData: QueryRefundApplicationDetail4DistributionResponseBody.Model.RefundFeeData?

        public var refunderAddress: String?

        public var refunderName: String?

        public var refunderTel: String?

        public var refunderZipCode: String?

        public var returnGoodCount: Int64?

        public var returnGoodLogisticsStatus: Int32?

        public var sellerAgreeMsg: String?

        public var sellerRefuseAgreementMessage: String?

        public var sellerRefuseReason: String?

        public var subDistributionOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.applyReason?.validate()
            try self.refundFeeData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyDisputeDesc != nil {
                map["ApplyDisputeDesc"] = self.applyDisputeDesc!
            }
            if self.applyReason != nil {
                map["ApplyReason"] = self.applyReason?.toMap()
            }
            if self.bizClaimType != nil {
                map["BizClaimType"] = self.bizClaimType!
            }
            if self.disputeCreateTime != nil {
                map["DisputeCreateTime"] = self.disputeCreateTime!
            }
            if self.disputeDesc != nil {
                map["DisputeDesc"] = self.disputeDesc!
            }
            if self.disputeEndTime != nil {
                map["DisputeEndTime"] = self.disputeEndTime!
            }
            if self.disputeId != nil {
                map["DisputeId"] = self.disputeId!
            }
            if self.disputeStatus != nil {
                map["DisputeStatus"] = self.disputeStatus!
            }
            if self.disputeType != nil {
                map["DisputeType"] = self.disputeType!
            }
            if self.distributionOrderId != nil {
                map["DistributionOrderId"] = self.distributionOrderId!
            }
            if self.orderLogisticsStatus != nil {
                map["OrderLogisticsStatus"] = self.orderLogisticsStatus!
            }
            if self.realRefundFee != nil {
                map["RealRefundFee"] = self.realRefundFee!
            }
            if self.refundFee != nil {
                map["RefundFee"] = self.refundFee!
            }
            if self.refundFeeData != nil {
                map["RefundFeeData"] = self.refundFeeData?.toMap()
            }
            if self.refunderAddress != nil {
                map["RefunderAddress"] = self.refunderAddress!
            }
            if self.refunderName != nil {
                map["RefunderName"] = self.refunderName!
            }
            if self.refunderTel != nil {
                map["RefunderTel"] = self.refunderTel!
            }
            if self.refunderZipCode != nil {
                map["RefunderZipCode"] = self.refunderZipCode!
            }
            if self.returnGoodCount != nil {
                map["ReturnGoodCount"] = self.returnGoodCount!
            }
            if self.returnGoodLogisticsStatus != nil {
                map["ReturnGoodLogisticsStatus"] = self.returnGoodLogisticsStatus!
            }
            if self.sellerAgreeMsg != nil {
                map["SellerAgreeMsg"] = self.sellerAgreeMsg!
            }
            if self.sellerRefuseAgreementMessage != nil {
                map["SellerRefuseAgreementMessage"] = self.sellerRefuseAgreementMessage!
            }
            if self.sellerRefuseReason != nil {
                map["SellerRefuseReason"] = self.sellerRefuseReason!
            }
            if self.subDistributionOrderId != nil {
                map["SubDistributionOrderId"] = self.subDistributionOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplyDisputeDesc") {
                self.applyDisputeDesc = dict["ApplyDisputeDesc"] as! String
            }
            if dict.keys.contains("ApplyReason") {
                var model = QueryRefundApplicationDetail4DistributionResponseBody.Model.ApplyReason()
                model.fromMap(dict["ApplyReason"] as! [String: Any])
                self.applyReason = model
            }
            if dict.keys.contains("BizClaimType") {
                self.bizClaimType = dict["BizClaimType"] as! Int32
            }
            if dict.keys.contains("DisputeCreateTime") {
                self.disputeCreateTime = dict["DisputeCreateTime"] as! String
            }
            if dict.keys.contains("DisputeDesc") {
                self.disputeDesc = dict["DisputeDesc"] as! String
            }
            if dict.keys.contains("DisputeEndTime") {
                self.disputeEndTime = dict["DisputeEndTime"] as! String
            }
            if dict.keys.contains("DisputeId") {
                self.disputeId = dict["DisputeId"] as! Int64
            }
            if dict.keys.contains("DisputeStatus") {
                self.disputeStatus = dict["DisputeStatus"] as! Int32
            }
            if dict.keys.contains("DisputeType") {
                self.disputeType = dict["DisputeType"] as! Int32
            }
            if dict.keys.contains("DistributionOrderId") {
                self.distributionOrderId = dict["DistributionOrderId"] as! String
            }
            if dict.keys.contains("OrderLogisticsStatus") {
                self.orderLogisticsStatus = dict["OrderLogisticsStatus"] as! Int32
            }
            if dict.keys.contains("RealRefundFee") {
                self.realRefundFee = dict["RealRefundFee"] as! Int64
            }
            if dict.keys.contains("RefundFee") {
                self.refundFee = dict["RefundFee"] as! Int64
            }
            if dict.keys.contains("RefundFeeData") {
                var model = QueryRefundApplicationDetail4DistributionResponseBody.Model.RefundFeeData()
                model.fromMap(dict["RefundFeeData"] as! [String: Any])
                self.refundFeeData = model
            }
            if dict.keys.contains("RefunderAddress") {
                self.refunderAddress = dict["RefunderAddress"] as! String
            }
            if dict.keys.contains("RefunderName") {
                self.refunderName = dict["RefunderName"] as! String
            }
            if dict.keys.contains("RefunderTel") {
                self.refunderTel = dict["RefunderTel"] as! String
            }
            if dict.keys.contains("RefunderZipCode") {
                self.refunderZipCode = dict["RefunderZipCode"] as! String
            }
            if dict.keys.contains("ReturnGoodCount") {
                self.returnGoodCount = dict["ReturnGoodCount"] as! Int64
            }
            if dict.keys.contains("ReturnGoodLogisticsStatus") {
                self.returnGoodLogisticsStatus = dict["ReturnGoodLogisticsStatus"] as! Int32
            }
            if dict.keys.contains("SellerAgreeMsg") {
                self.sellerAgreeMsg = dict["SellerAgreeMsg"] as! String
            }
            if dict.keys.contains("SellerRefuseAgreementMessage") {
                self.sellerRefuseAgreementMessage = dict["SellerRefuseAgreementMessage"] as! String
            }
            if dict.keys.contains("SellerRefuseReason") {
                self.sellerRefuseReason = dict["SellerRefuseReason"] as! String
            }
            if dict.keys.contains("SubDistributionOrderId") {
                self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: QueryRefundApplicationDetail4DistributionResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = QueryRefundApplicationDetail4DistributionResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QueryRefundApplicationDetail4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRefundApplicationDetail4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryRefundApplicationDetail4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenderDistributionOrderRequest : Tea.TeaModel {
    public class ItemInfoLists : Tea.TeaModel {
        public var distributionMallId: String?

        public var lmItemId: String?

        public var quantity: Int32?

        public var skuId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.distributionMallId != nil {
                map["DistributionMallId"] = self.distributionMallId!
            }
            if self.lmItemId != nil {
                map["LmItemId"] = self.lmItemId!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.skuId != nil {
                map["SkuId"] = self.skuId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DistributionMallId") {
                self.distributionMallId = dict["DistributionMallId"] as! String
            }
            if dict.keys.contains("LmItemId") {
                self.lmItemId = dict["LmItemId"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! Int32
            }
            if dict.keys.contains("SkuId") {
                self.skuId = dict["SkuId"] as! String
            }
        }
    }
    public var buyerId: String?

    public var deliveryAddress: String?

    public var distributionSupplierId: String?

    public var distributorId: String?

    public var extInfo: String?

    public var itemInfoLists: [RenderDistributionOrderRequest.ItemInfoLists]?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyerId != nil {
            map["BuyerId"] = self.buyerId!
        }
        if self.deliveryAddress != nil {
            map["DeliveryAddress"] = self.deliveryAddress!
        }
        if self.distributionSupplierId != nil {
            map["DistributionSupplierId"] = self.distributionSupplierId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.itemInfoLists != nil {
            var tmp : [Any] = []
            for k in self.itemInfoLists! {
                tmp.append(k.toMap())
            }
            map["ItemInfoLists"] = tmp
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyerId") {
            self.buyerId = dict["BuyerId"] as! String
        }
        if dict.keys.contains("DeliveryAddress") {
            self.deliveryAddress = dict["DeliveryAddress"] as! String
        }
        if dict.keys.contains("DistributionSupplierId") {
            self.distributionSupplierId = dict["DistributionSupplierId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("ExtInfo") {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("ItemInfoLists") {
            self.itemInfoLists = dict["ItemInfoLists"] as! [RenderDistributionOrderRequest.ItemInfoLists]
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class RenderDistributionOrderShrinkRequest : Tea.TeaModel {
    public var buyerId: String?

    public var deliveryAddress: String?

    public var distributionSupplierId: String?

    public var distributorId: String?

    public var extInfo: String?

    public var itemInfoListsShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyerId != nil {
            map["BuyerId"] = self.buyerId!
        }
        if self.deliveryAddress != nil {
            map["DeliveryAddress"] = self.deliveryAddress!
        }
        if self.distributionSupplierId != nil {
            map["DistributionSupplierId"] = self.distributionSupplierId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.itemInfoListsShrink != nil {
            map["ItemInfoLists"] = self.itemInfoListsShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyerId") {
            self.buyerId = dict["BuyerId"] as! String
        }
        if dict.keys.contains("DeliveryAddress") {
            self.deliveryAddress = dict["DeliveryAddress"] as! String
        }
        if dict.keys.contains("DistributionSupplierId") {
            self.distributionSupplierId = dict["DistributionSupplierId"] as! String
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("ExtInfo") {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("ItemInfoLists") {
            self.itemInfoListsShrink = dict["ItemInfoLists"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class RenderDistributionOrderResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class AddressInfos : Tea.TeaModel {
            public var addressDetail: String?

            public var addressId: Int64?

            public var divisionCode: String?

            public var isDefault: Bool?

            public var receiver: String?

            public var receiverPhone: String?

            public var townDivisionCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressDetail != nil {
                    map["AddressDetail"] = self.addressDetail!
                }
                if self.addressId != nil {
                    map["AddressId"] = self.addressId!
                }
                if self.divisionCode != nil {
                    map["DivisionCode"] = self.divisionCode!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.receiver != nil {
                    map["Receiver"] = self.receiver!
                }
                if self.receiverPhone != nil {
                    map["ReceiverPhone"] = self.receiverPhone!
                }
                if self.townDivisionCode != nil {
                    map["TownDivisionCode"] = self.townDivisionCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressDetail") {
                    self.addressDetail = dict["AddressDetail"] as! String
                }
                if dict.keys.contains("AddressId") {
                    self.addressId = dict["AddressId"] as! Int64
                }
                if dict.keys.contains("DivisionCode") {
                    self.divisionCode = dict["DivisionCode"] as! String
                }
                if dict.keys.contains("IsDefault") {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
                if dict.keys.contains("Receiver") {
                    self.receiver = dict["Receiver"] as! String
                }
                if dict.keys.contains("ReceiverPhone") {
                    self.receiverPhone = dict["ReceiverPhone"] as! String
                }
                if dict.keys.contains("TownDivisionCode") {
                    self.townDivisionCode = dict["TownDivisionCode"] as! String
                }
            }
        }
        public class RenderOrderInfos : Tea.TeaModel {
            public class DeliveryInfos : Tea.TeaModel {
                public var displayName: String?

                public var id: String?

                public var postFee: Int64?

                public var serviceType: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.postFee != nil {
                        map["PostFee"] = self.postFee!
                    }
                    if self.serviceType != nil {
                        map["ServiceType"] = self.serviceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("PostFee") {
                        self.postFee = dict["PostFee"] as! Int64
                    }
                    if dict.keys.contains("ServiceType") {
                        self.serviceType = dict["ServiceType"] as! Int64
                    }
                }
            }
            public class InvoiceInfo : Tea.TeaModel {
                public var desc: String?

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
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Desc") {
                        self.desc = dict["Desc"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class ItemInfos : Tea.TeaModel {
                public class ItemPromInstVOS : Tea.TeaModel {
                    public class AvailableItems : Tea.TeaModel {
                        public var itemId: Int64?

                        public var lmItemId: String?

                        public var lmShopId: Int64?

                        public var number: Int32?

                        public var points: Int64?

                        public var pointsAmount: Int64?

                        public var priceCent: Int64?

                        public var removed: Bool?

                        public var skuId: Int64?

                        public var tbSellerId: Int64?

                        public var userPayFee: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.itemId != nil {
                                map["ItemId"] = self.itemId!
                            }
                            if self.lmItemId != nil {
                                map["LmItemId"] = self.lmItemId!
                            }
                            if self.lmShopId != nil {
                                map["LmShopId"] = self.lmShopId!
                            }
                            if self.number != nil {
                                map["Number"] = self.number!
                            }
                            if self.points != nil {
                                map["Points"] = self.points!
                            }
                            if self.pointsAmount != nil {
                                map["PointsAmount"] = self.pointsAmount!
                            }
                            if self.priceCent != nil {
                                map["PriceCent"] = self.priceCent!
                            }
                            if self.removed != nil {
                                map["Removed"] = self.removed!
                            }
                            if self.skuId != nil {
                                map["SkuId"] = self.skuId!
                            }
                            if self.tbSellerId != nil {
                                map["TbSellerId"] = self.tbSellerId!
                            }
                            if self.userPayFee != nil {
                                map["UserPayFee"] = self.userPayFee!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ItemId") {
                                self.itemId = dict["ItemId"] as! Int64
                            }
                            if dict.keys.contains("LmItemId") {
                                self.lmItemId = dict["LmItemId"] as! String
                            }
                            if dict.keys.contains("LmShopId") {
                                self.lmShopId = dict["LmShopId"] as! Int64
                            }
                            if dict.keys.contains("Number") {
                                self.number = dict["Number"] as! Int32
                            }
                            if dict.keys.contains("Points") {
                                self.points = dict["Points"] as! Int64
                            }
                            if dict.keys.contains("PointsAmount") {
                                self.pointsAmount = dict["PointsAmount"] as! Int64
                            }
                            if dict.keys.contains("PriceCent") {
                                self.priceCent = dict["PriceCent"] as! Int64
                            }
                            if dict.keys.contains("Removed") {
                                self.removed = dict["Removed"] as! Bool
                            }
                            if dict.keys.contains("SkuId") {
                                self.skuId = dict["SkuId"] as! Int64
                            }
                            if dict.keys.contains("TbSellerId") {
                                self.tbSellerId = dict["TbSellerId"] as! Int64
                            }
                            if dict.keys.contains("UserPayFee") {
                                self.userPayFee = dict["UserPayFee"] as! Int64
                            }
                        }
                    }
                    public var availableItems: [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ItemInfos.ItemPromInstVOS.AvailableItems]?

                    public var canUse: Bool?

                    public var discountPrice: Int64?

                    public var expireTime: Int64?

                    public var instanceId: String?

                    public var level: String?

                    public var lmItemId: String?

                    public var promotionName: String?

                    public var promotionType: String?

                    public var reason: String?

                    public var selected: Bool?

                    public var skuIds: [Int64]?

                    public var specialPrice: Int64?

                    public var subBizCode: String?

                    public var tbSellerId: Int64?

                    public var thresholdPrice: Int64?

                    public var useStartTime: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.availableItems != nil {
                            var tmp : [Any] = []
                            for k in self.availableItems! {
                                tmp.append(k.toMap())
                            }
                            map["AvailableItems"] = tmp
                        }
                        if self.canUse != nil {
                            map["CanUse"] = self.canUse!
                        }
                        if self.discountPrice != nil {
                            map["DiscountPrice"] = self.discountPrice!
                        }
                        if self.expireTime != nil {
                            map["ExpireTime"] = self.expireTime!
                        }
                        if self.instanceId != nil {
                            map["InstanceId"] = self.instanceId!
                        }
                        if self.level != nil {
                            map["Level"] = self.level!
                        }
                        if self.lmItemId != nil {
                            map["LmItemId"] = self.lmItemId!
                        }
                        if self.promotionName != nil {
                            map["PromotionName"] = self.promotionName!
                        }
                        if self.promotionType != nil {
                            map["PromotionType"] = self.promotionType!
                        }
                        if self.reason != nil {
                            map["Reason"] = self.reason!
                        }
                        if self.selected != nil {
                            map["Selected"] = self.selected!
                        }
                        if self.skuIds != nil {
                            map["SkuIds"] = self.skuIds!
                        }
                        if self.specialPrice != nil {
                            map["SpecialPrice"] = self.specialPrice!
                        }
                        if self.subBizCode != nil {
                            map["SubBizCode"] = self.subBizCode!
                        }
                        if self.tbSellerId != nil {
                            map["TbSellerId"] = self.tbSellerId!
                        }
                        if self.thresholdPrice != nil {
                            map["ThresholdPrice"] = self.thresholdPrice!
                        }
                        if self.useStartTime != nil {
                            map["UseStartTime"] = self.useStartTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvailableItems") {
                            self.availableItems = dict["AvailableItems"] as! [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ItemInfos.ItemPromInstVOS.AvailableItems]
                        }
                        if dict.keys.contains("CanUse") {
                            self.canUse = dict["CanUse"] as! Bool
                        }
                        if dict.keys.contains("DiscountPrice") {
                            self.discountPrice = dict["DiscountPrice"] as! Int64
                        }
                        if dict.keys.contains("ExpireTime") {
                            self.expireTime = dict["ExpireTime"] as! Int64
                        }
                        if dict.keys.contains("InstanceId") {
                            self.instanceId = dict["InstanceId"] as! String
                        }
                        if dict.keys.contains("Level") {
                            self.level = dict["Level"] as! String
                        }
                        if dict.keys.contains("LmItemId") {
                            self.lmItemId = dict["LmItemId"] as! String
                        }
                        if dict.keys.contains("PromotionName") {
                            self.promotionName = dict["PromotionName"] as! String
                        }
                        if dict.keys.contains("PromotionType") {
                            self.promotionType = dict["PromotionType"] as! String
                        }
                        if dict.keys.contains("Reason") {
                            self.reason = dict["Reason"] as! String
                        }
                        if dict.keys.contains("Selected") {
                            self.selected = dict["Selected"] as! Bool
                        }
                        if dict.keys.contains("SkuIds") {
                            self.skuIds = dict["SkuIds"] as! [Int64]
                        }
                        if dict.keys.contains("SpecialPrice") {
                            self.specialPrice = dict["SpecialPrice"] as! Int64
                        }
                        if dict.keys.contains("SubBizCode") {
                            self.subBizCode = dict["SubBizCode"] as! String
                        }
                        if dict.keys.contains("TbSellerId") {
                            self.tbSellerId = dict["TbSellerId"] as! Int64
                        }
                        if dict.keys.contains("ThresholdPrice") {
                            self.thresholdPrice = dict["ThresholdPrice"] as! Int64
                        }
                        if dict.keys.contains("UseStartTime") {
                            self.useStartTime = dict["UseStartTime"] as! Int64
                        }
                    }
                }
                public var canSell: Bool?

                public var distributionMallId: String?

                public var distributionSupplierId: String?

                public var distributorId: String?

                public var features: [String: String]?

                public var itemId: String?

                public var itemName: String?

                public var itemPicUrl: String?

                public var itemPromInstVOS: [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ItemInfos.ItemPromInstVOS]?

                public var itemUrl: String?

                public var message: String?

                public var price: Int64?

                public var promotionFee: Int64?

                public var quantity: Int32?

                public var reservePrice: Int64?

                public var skuId: Int64?

                public var skuName: String?

                public var virtualItemType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.canSell != nil {
                        map["CanSell"] = self.canSell!
                    }
                    if self.distributionMallId != nil {
                        map["DistributionMallId"] = self.distributionMallId!
                    }
                    if self.distributionSupplierId != nil {
                        map["DistributionSupplierId"] = self.distributionSupplierId!
                    }
                    if self.distributorId != nil {
                        map["DistributorId"] = self.distributorId!
                    }
                    if self.features != nil {
                        map["Features"] = self.features!
                    }
                    if self.itemId != nil {
                        map["ItemId"] = self.itemId!
                    }
                    if self.itemName != nil {
                        map["ItemName"] = self.itemName!
                    }
                    if self.itemPicUrl != nil {
                        map["ItemPicUrl"] = self.itemPicUrl!
                    }
                    if self.itemPromInstVOS != nil {
                        var tmp : [Any] = []
                        for k in self.itemPromInstVOS! {
                            tmp.append(k.toMap())
                        }
                        map["ItemPromInstVOS"] = tmp
                    }
                    if self.itemUrl != nil {
                        map["ItemUrl"] = self.itemUrl!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.price != nil {
                        map["Price"] = self.price!
                    }
                    if self.promotionFee != nil {
                        map["PromotionFee"] = self.promotionFee!
                    }
                    if self.quantity != nil {
                        map["Quantity"] = self.quantity!
                    }
                    if self.reservePrice != nil {
                        map["ReservePrice"] = self.reservePrice!
                    }
                    if self.skuId != nil {
                        map["SkuId"] = self.skuId!
                    }
                    if self.skuName != nil {
                        map["SkuName"] = self.skuName!
                    }
                    if self.virtualItemType != nil {
                        map["VirtualItemType"] = self.virtualItemType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CanSell") {
                        self.canSell = dict["CanSell"] as! Bool
                    }
                    if dict.keys.contains("DistributionMallId") {
                        self.distributionMallId = dict["DistributionMallId"] as! String
                    }
                    if dict.keys.contains("DistributionSupplierId") {
                        self.distributionSupplierId = dict["DistributionSupplierId"] as! String
                    }
                    if dict.keys.contains("DistributorId") {
                        self.distributorId = dict["DistributorId"] as! String
                    }
                    if dict.keys.contains("Features") {
                        self.features = dict["Features"] as! [String: String]
                    }
                    if dict.keys.contains("ItemId") {
                        self.itemId = dict["ItemId"] as! String
                    }
                    if dict.keys.contains("ItemName") {
                        self.itemName = dict["ItemName"] as! String
                    }
                    if dict.keys.contains("ItemPicUrl") {
                        self.itemPicUrl = dict["ItemPicUrl"] as! String
                    }
                    if dict.keys.contains("ItemPromInstVOS") {
                        self.itemPromInstVOS = dict["ItemPromInstVOS"] as! [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ItemInfos.ItemPromInstVOS]
                    }
                    if dict.keys.contains("ItemUrl") {
                        self.itemUrl = dict["ItemUrl"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Price") {
                        self.price = dict["Price"] as! Int64
                    }
                    if dict.keys.contains("PromotionFee") {
                        self.promotionFee = dict["PromotionFee"] as! Int64
                    }
                    if dict.keys.contains("Quantity") {
                        self.quantity = dict["Quantity"] as! Int32
                    }
                    if dict.keys.contains("ReservePrice") {
                        self.reservePrice = dict["ReservePrice"] as! Int64
                    }
                    if dict.keys.contains("SkuId") {
                        self.skuId = dict["SkuId"] as! Int64
                    }
                    if dict.keys.contains("SkuName") {
                        self.skuName = dict["SkuName"] as! String
                    }
                    if dict.keys.contains("VirtualItemType") {
                        self.virtualItemType = dict["VirtualItemType"] as! String
                    }
                }
            }
            public class ShopPromInstVOS : Tea.TeaModel {
                public class AvailableItems : Tea.TeaModel {
                    public var itemId: Int64?

                    public var lmItemId: String?

                    public var lmShopId: Int64?

                    public var number: Int32?

                    public var points: Int64?

                    public var pointsAmount: Int64?

                    public var priceCent: Int64?

                    public var removed: Bool?

                    public var skuId: Int64?

                    public var tbSellerId: Int64?

                    public var userPayFee: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.itemId != nil {
                            map["ItemId"] = self.itemId!
                        }
                        if self.lmItemId != nil {
                            map["LmItemId"] = self.lmItemId!
                        }
                        if self.lmShopId != nil {
                            map["LmShopId"] = self.lmShopId!
                        }
                        if self.number != nil {
                            map["Number"] = self.number!
                        }
                        if self.points != nil {
                            map["Points"] = self.points!
                        }
                        if self.pointsAmount != nil {
                            map["PointsAmount"] = self.pointsAmount!
                        }
                        if self.priceCent != nil {
                            map["PriceCent"] = self.priceCent!
                        }
                        if self.removed != nil {
                            map["Removed"] = self.removed!
                        }
                        if self.skuId != nil {
                            map["SkuId"] = self.skuId!
                        }
                        if self.tbSellerId != nil {
                            map["TbSellerId"] = self.tbSellerId!
                        }
                        if self.userPayFee != nil {
                            map["UserPayFee"] = self.userPayFee!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ItemId") {
                            self.itemId = dict["ItemId"] as! Int64
                        }
                        if dict.keys.contains("LmItemId") {
                            self.lmItemId = dict["LmItemId"] as! String
                        }
                        if dict.keys.contains("LmShopId") {
                            self.lmShopId = dict["LmShopId"] as! Int64
                        }
                        if dict.keys.contains("Number") {
                            self.number = dict["Number"] as! Int32
                        }
                        if dict.keys.contains("Points") {
                            self.points = dict["Points"] as! Int64
                        }
                        if dict.keys.contains("PointsAmount") {
                            self.pointsAmount = dict["PointsAmount"] as! Int64
                        }
                        if dict.keys.contains("PriceCent") {
                            self.priceCent = dict["PriceCent"] as! Int64
                        }
                        if dict.keys.contains("Removed") {
                            self.removed = dict["Removed"] as! Bool
                        }
                        if dict.keys.contains("SkuId") {
                            self.skuId = dict["SkuId"] as! Int64
                        }
                        if dict.keys.contains("TbSellerId") {
                            self.tbSellerId = dict["TbSellerId"] as! Int64
                        }
                        if dict.keys.contains("UserPayFee") {
                            self.userPayFee = dict["UserPayFee"] as! Int64
                        }
                    }
                }
                public var availableItems: [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ShopPromInstVOS.AvailableItems]?

                public var canUse: Bool?

                public var discountPrice: Int64?

                public var expireTime: Int64?

                public var instanceId: String?

                public var level: String?

                public var lmItemId: String?

                public var promotionName: String?

                public var promotionType: String?

                public var reason: String?

                public var selected: Bool?

                public var skuIds: [Int64]?

                public var specialPrice: Int64?

                public var subBizCode: String?

                public var tbSellerId: Int64?

                public var thresholdPrice: Int64?

                public var useStartTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableItems != nil {
                        var tmp : [Any] = []
                        for k in self.availableItems! {
                            tmp.append(k.toMap())
                        }
                        map["AvailableItems"] = tmp
                    }
                    if self.canUse != nil {
                        map["CanUse"] = self.canUse!
                    }
                    if self.discountPrice != nil {
                        map["DiscountPrice"] = self.discountPrice!
                    }
                    if self.expireTime != nil {
                        map["ExpireTime"] = self.expireTime!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.lmItemId != nil {
                        map["LmItemId"] = self.lmItemId!
                    }
                    if self.promotionName != nil {
                        map["PromotionName"] = self.promotionName!
                    }
                    if self.promotionType != nil {
                        map["PromotionType"] = self.promotionType!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.selected != nil {
                        map["Selected"] = self.selected!
                    }
                    if self.skuIds != nil {
                        map["SkuIds"] = self.skuIds!
                    }
                    if self.specialPrice != nil {
                        map["SpecialPrice"] = self.specialPrice!
                    }
                    if self.subBizCode != nil {
                        map["SubBizCode"] = self.subBizCode!
                    }
                    if self.tbSellerId != nil {
                        map["TbSellerId"] = self.tbSellerId!
                    }
                    if self.thresholdPrice != nil {
                        map["ThresholdPrice"] = self.thresholdPrice!
                    }
                    if self.useStartTime != nil {
                        map["UseStartTime"] = self.useStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AvailableItems") {
                        self.availableItems = dict["AvailableItems"] as! [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ShopPromInstVOS.AvailableItems]
                    }
                    if dict.keys.contains("CanUse") {
                        self.canUse = dict["CanUse"] as! Bool
                    }
                    if dict.keys.contains("DiscountPrice") {
                        self.discountPrice = dict["DiscountPrice"] as! Int64
                    }
                    if dict.keys.contains("ExpireTime") {
                        self.expireTime = dict["ExpireTime"] as! Int64
                    }
                    if dict.keys.contains("InstanceId") {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("Level") {
                        self.level = dict["Level"] as! String
                    }
                    if dict.keys.contains("LmItemId") {
                        self.lmItemId = dict["LmItemId"] as! String
                    }
                    if dict.keys.contains("PromotionName") {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                    if dict.keys.contains("PromotionType") {
                        self.promotionType = dict["PromotionType"] as! String
                    }
                    if dict.keys.contains("Reason") {
                        self.reason = dict["Reason"] as! String
                    }
                    if dict.keys.contains("Selected") {
                        self.selected = dict["Selected"] as! Bool
                    }
                    if dict.keys.contains("SkuIds") {
                        self.skuIds = dict["SkuIds"] as! [Int64]
                    }
                    if dict.keys.contains("SpecialPrice") {
                        self.specialPrice = dict["SpecialPrice"] as! Int64
                    }
                    if dict.keys.contains("SubBizCode") {
                        self.subBizCode = dict["SubBizCode"] as! String
                    }
                    if dict.keys.contains("TbSellerId") {
                        self.tbSellerId = dict["TbSellerId"] as! Int64
                    }
                    if dict.keys.contains("ThresholdPrice") {
                        self.thresholdPrice = dict["ThresholdPrice"] as! Int64
                    }
                    if dict.keys.contains("UseStartTime") {
                        self.useStartTime = dict["UseStartTime"] as! Int64
                    }
                }
            }
            public var canSell: Bool?

            public var deliveryInfos: [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.DeliveryInfos]?

            public var extInfo: [String: String]?

            public var invoiceInfo: RenderDistributionOrderResponseBody.Model.RenderOrderInfos.InvoiceInfo?

            public var itemInfos: [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ItemInfos]?

            public var message: String?

            public var shopPromInstVOS: [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ShopPromInstVOS]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.invoiceInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.canSell != nil {
                    map["CanSell"] = self.canSell!
                }
                if self.deliveryInfos != nil {
                    var tmp : [Any] = []
                    for k in self.deliveryInfos! {
                        tmp.append(k.toMap())
                    }
                    map["DeliveryInfos"] = tmp
                }
                if self.extInfo != nil {
                    map["ExtInfo"] = self.extInfo!
                }
                if self.invoiceInfo != nil {
                    map["InvoiceInfo"] = self.invoiceInfo?.toMap()
                }
                if self.itemInfos != nil {
                    var tmp : [Any] = []
                    for k in self.itemInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ItemInfos"] = tmp
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.shopPromInstVOS != nil {
                    var tmp : [Any] = []
                    for k in self.shopPromInstVOS! {
                        tmp.append(k.toMap())
                    }
                    map["ShopPromInstVOS"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CanSell") {
                    self.canSell = dict["CanSell"] as! Bool
                }
                if dict.keys.contains("DeliveryInfos") {
                    self.deliveryInfos = dict["DeliveryInfos"] as! [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.DeliveryInfos]
                }
                if dict.keys.contains("ExtInfo") {
                    self.extInfo = dict["ExtInfo"] as! [String: String]
                }
                if dict.keys.contains("InvoiceInfo") {
                    var model = RenderDistributionOrderResponseBody.Model.RenderOrderInfos.InvoiceInfo()
                    model.fromMap(dict["InvoiceInfo"] as! [String: Any])
                    self.invoiceInfo = model
                }
                if dict.keys.contains("ItemInfos") {
                    self.itemInfos = dict["ItemInfos"] as! [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ItemInfos]
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("ShopPromInstVOS") {
                    self.shopPromInstVOS = dict["ShopPromInstVOS"] as! [RenderDistributionOrderResponseBody.Model.RenderOrderInfos.ShopPromInstVOS]
                }
            }
        }
        public class UnsellableRenderOrderInfos : Tea.TeaModel {
            public class DeliveryInfos : Tea.TeaModel {
                public var displayName: String?

                public var id: String?

                public var postFee: Int64?

                public var serviceType: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.postFee != nil {
                        map["PostFee"] = self.postFee!
                    }
                    if self.serviceType != nil {
                        map["ServiceType"] = self.serviceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("PostFee") {
                        self.postFee = dict["PostFee"] as! Int64
                    }
                    if dict.keys.contains("ServiceType") {
                        self.serviceType = dict["ServiceType"] as! Int64
                    }
                }
            }
            public class InvoiceInfo : Tea.TeaModel {
                public var desc: String?

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
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Desc") {
                        self.desc = dict["Desc"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class ItemInfos : Tea.TeaModel {
                public class ItemPromInstVOS : Tea.TeaModel {
                    public class AvailableItems : Tea.TeaModel {
                        public var itemId: Int64?

                        public var lmItemId: String?

                        public var lmShopId: Int64?

                        public var number: Int32?

                        public var points: Int64?

                        public var pointsAmount: Int64?

                        public var priceCent: Int64?

                        public var removed: Bool?

                        public var skuId: Int64?

                        public var tbSellerId: Int64?

                        public var userPayFee: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.itemId != nil {
                                map["ItemId"] = self.itemId!
                            }
                            if self.lmItemId != nil {
                                map["LmItemId"] = self.lmItemId!
                            }
                            if self.lmShopId != nil {
                                map["LmShopId"] = self.lmShopId!
                            }
                            if self.number != nil {
                                map["Number"] = self.number!
                            }
                            if self.points != nil {
                                map["Points"] = self.points!
                            }
                            if self.pointsAmount != nil {
                                map["PointsAmount"] = self.pointsAmount!
                            }
                            if self.priceCent != nil {
                                map["PriceCent"] = self.priceCent!
                            }
                            if self.removed != nil {
                                map["Removed"] = self.removed!
                            }
                            if self.skuId != nil {
                                map["SkuId"] = self.skuId!
                            }
                            if self.tbSellerId != nil {
                                map["TbSellerId"] = self.tbSellerId!
                            }
                            if self.userPayFee != nil {
                                map["UserPayFee"] = self.userPayFee!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ItemId") {
                                self.itemId = dict["ItemId"] as! Int64
                            }
                            if dict.keys.contains("LmItemId") {
                                self.lmItemId = dict["LmItemId"] as! String
                            }
                            if dict.keys.contains("LmShopId") {
                                self.lmShopId = dict["LmShopId"] as! Int64
                            }
                            if dict.keys.contains("Number") {
                                self.number = dict["Number"] as! Int32
                            }
                            if dict.keys.contains("Points") {
                                self.points = dict["Points"] as! Int64
                            }
                            if dict.keys.contains("PointsAmount") {
                                self.pointsAmount = dict["PointsAmount"] as! Int64
                            }
                            if dict.keys.contains("PriceCent") {
                                self.priceCent = dict["PriceCent"] as! Int64
                            }
                            if dict.keys.contains("Removed") {
                                self.removed = dict["Removed"] as! Bool
                            }
                            if dict.keys.contains("SkuId") {
                                self.skuId = dict["SkuId"] as! Int64
                            }
                            if dict.keys.contains("TbSellerId") {
                                self.tbSellerId = dict["TbSellerId"] as! Int64
                            }
                            if dict.keys.contains("UserPayFee") {
                                self.userPayFee = dict["UserPayFee"] as! Int64
                            }
                        }
                    }
                    public var availableItems: [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ItemInfos.ItemPromInstVOS.AvailableItems]?

                    public var canUse: Bool?

                    public var discountPrice: Int64?

                    public var expireTime: Int64?

                    public var instanceId: String?

                    public var level: String?

                    public var lmItemId: String?

                    public var promotionName: String?

                    public var promotionType: String?

                    public var reason: String?

                    public var selected: Bool?

                    public var skuIds: [Int64]?

                    public var specialPrice: Int64?

                    public var subBizCode: String?

                    public var tbSellerId: Int64?

                    public var thresholdPrice: Int64?

                    public var useStartTime: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.availableItems != nil {
                            var tmp : [Any] = []
                            for k in self.availableItems! {
                                tmp.append(k.toMap())
                            }
                            map["AvailableItems"] = tmp
                        }
                        if self.canUse != nil {
                            map["CanUse"] = self.canUse!
                        }
                        if self.discountPrice != nil {
                            map["DiscountPrice"] = self.discountPrice!
                        }
                        if self.expireTime != nil {
                            map["ExpireTime"] = self.expireTime!
                        }
                        if self.instanceId != nil {
                            map["InstanceId"] = self.instanceId!
                        }
                        if self.level != nil {
                            map["Level"] = self.level!
                        }
                        if self.lmItemId != nil {
                            map["LmItemId"] = self.lmItemId!
                        }
                        if self.promotionName != nil {
                            map["PromotionName"] = self.promotionName!
                        }
                        if self.promotionType != nil {
                            map["PromotionType"] = self.promotionType!
                        }
                        if self.reason != nil {
                            map["Reason"] = self.reason!
                        }
                        if self.selected != nil {
                            map["Selected"] = self.selected!
                        }
                        if self.skuIds != nil {
                            map["SkuIds"] = self.skuIds!
                        }
                        if self.specialPrice != nil {
                            map["SpecialPrice"] = self.specialPrice!
                        }
                        if self.subBizCode != nil {
                            map["SubBizCode"] = self.subBizCode!
                        }
                        if self.tbSellerId != nil {
                            map["TbSellerId"] = self.tbSellerId!
                        }
                        if self.thresholdPrice != nil {
                            map["ThresholdPrice"] = self.thresholdPrice!
                        }
                        if self.useStartTime != nil {
                            map["UseStartTime"] = self.useStartTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvailableItems") {
                            self.availableItems = dict["AvailableItems"] as! [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ItemInfos.ItemPromInstVOS.AvailableItems]
                        }
                        if dict.keys.contains("CanUse") {
                            self.canUse = dict["CanUse"] as! Bool
                        }
                        if dict.keys.contains("DiscountPrice") {
                            self.discountPrice = dict["DiscountPrice"] as! Int64
                        }
                        if dict.keys.contains("ExpireTime") {
                            self.expireTime = dict["ExpireTime"] as! Int64
                        }
                        if dict.keys.contains("InstanceId") {
                            self.instanceId = dict["InstanceId"] as! String
                        }
                        if dict.keys.contains("Level") {
                            self.level = dict["Level"] as! String
                        }
                        if dict.keys.contains("LmItemId") {
                            self.lmItemId = dict["LmItemId"] as! String
                        }
                        if dict.keys.contains("PromotionName") {
                            self.promotionName = dict["PromotionName"] as! String
                        }
                        if dict.keys.contains("PromotionType") {
                            self.promotionType = dict["PromotionType"] as! String
                        }
                        if dict.keys.contains("Reason") {
                            self.reason = dict["Reason"] as! String
                        }
                        if dict.keys.contains("Selected") {
                            self.selected = dict["Selected"] as! Bool
                        }
                        if dict.keys.contains("SkuIds") {
                            self.skuIds = dict["SkuIds"] as! [Int64]
                        }
                        if dict.keys.contains("SpecialPrice") {
                            self.specialPrice = dict["SpecialPrice"] as! Int64
                        }
                        if dict.keys.contains("SubBizCode") {
                            self.subBizCode = dict["SubBizCode"] as! String
                        }
                        if dict.keys.contains("TbSellerId") {
                            self.tbSellerId = dict["TbSellerId"] as! Int64
                        }
                        if dict.keys.contains("ThresholdPrice") {
                            self.thresholdPrice = dict["ThresholdPrice"] as! Int64
                        }
                        if dict.keys.contains("UseStartTime") {
                            self.useStartTime = dict["UseStartTime"] as! Int64
                        }
                    }
                }
                public var canSell: Bool?

                public var distributionMallId: String?

                public var distributionSupplierId: String?

                public var distributorId: String?

                public var features: [String: String]?

                public var itemId: String?

                public var itemName: String?

                public var itemPicUrl: String?

                public var itemPromInstVOS: [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ItemInfos.ItemPromInstVOS]?

                public var itemUrl: String?

                public var message: String?

                public var price: Int64?

                public var promotionFee: Int64?

                public var quantity: Int32?

                public var reservePrice: Int64?

                public var skuId: Int64?

                public var skuName: String?

                public var virtualItemType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.canSell != nil {
                        map["CanSell"] = self.canSell!
                    }
                    if self.distributionMallId != nil {
                        map["DistributionMallId"] = self.distributionMallId!
                    }
                    if self.distributionSupplierId != nil {
                        map["DistributionSupplierId"] = self.distributionSupplierId!
                    }
                    if self.distributorId != nil {
                        map["DistributorId"] = self.distributorId!
                    }
                    if self.features != nil {
                        map["Features"] = self.features!
                    }
                    if self.itemId != nil {
                        map["ItemId"] = self.itemId!
                    }
                    if self.itemName != nil {
                        map["ItemName"] = self.itemName!
                    }
                    if self.itemPicUrl != nil {
                        map["ItemPicUrl"] = self.itemPicUrl!
                    }
                    if self.itemPromInstVOS != nil {
                        var tmp : [Any] = []
                        for k in self.itemPromInstVOS! {
                            tmp.append(k.toMap())
                        }
                        map["ItemPromInstVOS"] = tmp
                    }
                    if self.itemUrl != nil {
                        map["ItemUrl"] = self.itemUrl!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.price != nil {
                        map["Price"] = self.price!
                    }
                    if self.promotionFee != nil {
                        map["PromotionFee"] = self.promotionFee!
                    }
                    if self.quantity != nil {
                        map["Quantity"] = self.quantity!
                    }
                    if self.reservePrice != nil {
                        map["ReservePrice"] = self.reservePrice!
                    }
                    if self.skuId != nil {
                        map["SkuId"] = self.skuId!
                    }
                    if self.skuName != nil {
                        map["SkuName"] = self.skuName!
                    }
                    if self.virtualItemType != nil {
                        map["VirtualItemType"] = self.virtualItemType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CanSell") {
                        self.canSell = dict["CanSell"] as! Bool
                    }
                    if dict.keys.contains("DistributionMallId") {
                        self.distributionMallId = dict["DistributionMallId"] as! String
                    }
                    if dict.keys.contains("DistributionSupplierId") {
                        self.distributionSupplierId = dict["DistributionSupplierId"] as! String
                    }
                    if dict.keys.contains("DistributorId") {
                        self.distributorId = dict["DistributorId"] as! String
                    }
                    if dict.keys.contains("Features") {
                        self.features = dict["Features"] as! [String: String]
                    }
                    if dict.keys.contains("ItemId") {
                        self.itemId = dict["ItemId"] as! String
                    }
                    if dict.keys.contains("ItemName") {
                        self.itemName = dict["ItemName"] as! String
                    }
                    if dict.keys.contains("ItemPicUrl") {
                        self.itemPicUrl = dict["ItemPicUrl"] as! String
                    }
                    if dict.keys.contains("ItemPromInstVOS") {
                        self.itemPromInstVOS = dict["ItemPromInstVOS"] as! [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ItemInfos.ItemPromInstVOS]
                    }
                    if dict.keys.contains("ItemUrl") {
                        self.itemUrl = dict["ItemUrl"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Price") {
                        self.price = dict["Price"] as! Int64
                    }
                    if dict.keys.contains("PromotionFee") {
                        self.promotionFee = dict["PromotionFee"] as! Int64
                    }
                    if dict.keys.contains("Quantity") {
                        self.quantity = dict["Quantity"] as! Int32
                    }
                    if dict.keys.contains("ReservePrice") {
                        self.reservePrice = dict["ReservePrice"] as! Int64
                    }
                    if dict.keys.contains("SkuId") {
                        self.skuId = dict["SkuId"] as! Int64
                    }
                    if dict.keys.contains("SkuName") {
                        self.skuName = dict["SkuName"] as! String
                    }
                    if dict.keys.contains("VirtualItemType") {
                        self.virtualItemType = dict["VirtualItemType"] as! String
                    }
                }
            }
            public class ShopPromInstVOS : Tea.TeaModel {
                public class AvailableItems : Tea.TeaModel {
                    public var itemId: Int64?

                    public var lmItemId: String?

                    public var lmShopId: Int64?

                    public var number: Int32?

                    public var points: Int64?

                    public var pointsAmount: Int64?

                    public var priceCent: Int64?

                    public var removed: Bool?

                    public var skuId: Int64?

                    public var tbSellerId: Int64?

                    public var userPayFee: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.itemId != nil {
                            map["ItemId"] = self.itemId!
                        }
                        if self.lmItemId != nil {
                            map["LmItemId"] = self.lmItemId!
                        }
                        if self.lmShopId != nil {
                            map["LmShopId"] = self.lmShopId!
                        }
                        if self.number != nil {
                            map["Number"] = self.number!
                        }
                        if self.points != nil {
                            map["Points"] = self.points!
                        }
                        if self.pointsAmount != nil {
                            map["PointsAmount"] = self.pointsAmount!
                        }
                        if self.priceCent != nil {
                            map["PriceCent"] = self.priceCent!
                        }
                        if self.removed != nil {
                            map["Removed"] = self.removed!
                        }
                        if self.skuId != nil {
                            map["SkuId"] = self.skuId!
                        }
                        if self.tbSellerId != nil {
                            map["TbSellerId"] = self.tbSellerId!
                        }
                        if self.userPayFee != nil {
                            map["UserPayFee"] = self.userPayFee!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ItemId") {
                            self.itemId = dict["ItemId"] as! Int64
                        }
                        if dict.keys.contains("LmItemId") {
                            self.lmItemId = dict["LmItemId"] as! String
                        }
                        if dict.keys.contains("LmShopId") {
                            self.lmShopId = dict["LmShopId"] as! Int64
                        }
                        if dict.keys.contains("Number") {
                            self.number = dict["Number"] as! Int32
                        }
                        if dict.keys.contains("Points") {
                            self.points = dict["Points"] as! Int64
                        }
                        if dict.keys.contains("PointsAmount") {
                            self.pointsAmount = dict["PointsAmount"] as! Int64
                        }
                        if dict.keys.contains("PriceCent") {
                            self.priceCent = dict["PriceCent"] as! Int64
                        }
                        if dict.keys.contains("Removed") {
                            self.removed = dict["Removed"] as! Bool
                        }
                        if dict.keys.contains("SkuId") {
                            self.skuId = dict["SkuId"] as! Int64
                        }
                        if dict.keys.contains("TbSellerId") {
                            self.tbSellerId = dict["TbSellerId"] as! Int64
                        }
                        if dict.keys.contains("UserPayFee") {
                            self.userPayFee = dict["UserPayFee"] as! Int64
                        }
                    }
                }
                public var availableItems: [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ShopPromInstVOS.AvailableItems]?

                public var canUse: Bool?

                public var discountPrice: Int64?

                public var expireTime: Int64?

                public var instanceId: String?

                public var level: String?

                public var lmItemId: String?

                public var promotionName: String?

                public var promotionType: String?

                public var reason: String?

                public var selected: Bool?

                public var skuIds: [Int64]?

                public var specialPrice: Int64?

                public var subBizCode: String?

                public var tbSellerId: Int64?

                public var thresholdPrice: Int64?

                public var useStartTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableItems != nil {
                        var tmp : [Any] = []
                        for k in self.availableItems! {
                            tmp.append(k.toMap())
                        }
                        map["AvailableItems"] = tmp
                    }
                    if self.canUse != nil {
                        map["CanUse"] = self.canUse!
                    }
                    if self.discountPrice != nil {
                        map["DiscountPrice"] = self.discountPrice!
                    }
                    if self.expireTime != nil {
                        map["ExpireTime"] = self.expireTime!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.lmItemId != nil {
                        map["LmItemId"] = self.lmItemId!
                    }
                    if self.promotionName != nil {
                        map["PromotionName"] = self.promotionName!
                    }
                    if self.promotionType != nil {
                        map["PromotionType"] = self.promotionType!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.selected != nil {
                        map["Selected"] = self.selected!
                    }
                    if self.skuIds != nil {
                        map["SkuIds"] = self.skuIds!
                    }
                    if self.specialPrice != nil {
                        map["SpecialPrice"] = self.specialPrice!
                    }
                    if self.subBizCode != nil {
                        map["SubBizCode"] = self.subBizCode!
                    }
                    if self.tbSellerId != nil {
                        map["TbSellerId"] = self.tbSellerId!
                    }
                    if self.thresholdPrice != nil {
                        map["ThresholdPrice"] = self.thresholdPrice!
                    }
                    if self.useStartTime != nil {
                        map["UseStartTime"] = self.useStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AvailableItems") {
                        self.availableItems = dict["AvailableItems"] as! [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ShopPromInstVOS.AvailableItems]
                    }
                    if dict.keys.contains("CanUse") {
                        self.canUse = dict["CanUse"] as! Bool
                    }
                    if dict.keys.contains("DiscountPrice") {
                        self.discountPrice = dict["DiscountPrice"] as! Int64
                    }
                    if dict.keys.contains("ExpireTime") {
                        self.expireTime = dict["ExpireTime"] as! Int64
                    }
                    if dict.keys.contains("InstanceId") {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("Level") {
                        self.level = dict["Level"] as! String
                    }
                    if dict.keys.contains("LmItemId") {
                        self.lmItemId = dict["LmItemId"] as! String
                    }
                    if dict.keys.contains("PromotionName") {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                    if dict.keys.contains("PromotionType") {
                        self.promotionType = dict["PromotionType"] as! String
                    }
                    if dict.keys.contains("Reason") {
                        self.reason = dict["Reason"] as! String
                    }
                    if dict.keys.contains("Selected") {
                        self.selected = dict["Selected"] as! Bool
                    }
                    if dict.keys.contains("SkuIds") {
                        self.skuIds = dict["SkuIds"] as! [Int64]
                    }
                    if dict.keys.contains("SpecialPrice") {
                        self.specialPrice = dict["SpecialPrice"] as! Int64
                    }
                    if dict.keys.contains("SubBizCode") {
                        self.subBizCode = dict["SubBizCode"] as! String
                    }
                    if dict.keys.contains("TbSellerId") {
                        self.tbSellerId = dict["TbSellerId"] as! Int64
                    }
                    if dict.keys.contains("ThresholdPrice") {
                        self.thresholdPrice = dict["ThresholdPrice"] as! Int64
                    }
                    if dict.keys.contains("UseStartTime") {
                        self.useStartTime = dict["UseStartTime"] as! Int64
                    }
                }
            }
            public var canSell: Bool?

            public var deliveryInfos: [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.DeliveryInfos]?

            public var extInfo: [String: String]?

            public var invoiceInfo: RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.InvoiceInfo?

            public var itemInfos: [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ItemInfos]?

            public var message: String?

            public var shopPromInstVOS: [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ShopPromInstVOS]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.invoiceInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.canSell != nil {
                    map["CanSell"] = self.canSell!
                }
                if self.deliveryInfos != nil {
                    var tmp : [Any] = []
                    for k in self.deliveryInfos! {
                        tmp.append(k.toMap())
                    }
                    map["DeliveryInfos"] = tmp
                }
                if self.extInfo != nil {
                    map["ExtInfo"] = self.extInfo!
                }
                if self.invoiceInfo != nil {
                    map["InvoiceInfo"] = self.invoiceInfo?.toMap()
                }
                if self.itemInfos != nil {
                    var tmp : [Any] = []
                    for k in self.itemInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ItemInfos"] = tmp
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.shopPromInstVOS != nil {
                    var tmp : [Any] = []
                    for k in self.shopPromInstVOS! {
                        tmp.append(k.toMap())
                    }
                    map["ShopPromInstVOS"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CanSell") {
                    self.canSell = dict["CanSell"] as! Bool
                }
                if dict.keys.contains("DeliveryInfos") {
                    self.deliveryInfos = dict["DeliveryInfos"] as! [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.DeliveryInfos]
                }
                if dict.keys.contains("ExtInfo") {
                    self.extInfo = dict["ExtInfo"] as! [String: String]
                }
                if dict.keys.contains("InvoiceInfo") {
                    var model = RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.InvoiceInfo()
                    model.fromMap(dict["InvoiceInfo"] as! [String: Any])
                    self.invoiceInfo = model
                }
                if dict.keys.contains("ItemInfos") {
                    self.itemInfos = dict["ItemInfos"] as! [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ItemInfos]
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("ShopPromInstVOS") {
                    self.shopPromInstVOS = dict["ShopPromInstVOS"] as! [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos.ShopPromInstVOS]
                }
            }
        }
        public var addressInfos: [RenderDistributionOrderResponseBody.Model.AddressInfos]?

        public var canSell: Bool?

        public var extInfo: [String: String]?

        public var message: String?

        public var renderOrderInfos: [RenderDistributionOrderResponseBody.Model.RenderOrderInfos]?

        public var unsellableRenderOrderInfos: [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressInfos != nil {
                var tmp : [Any] = []
                for k in self.addressInfos! {
                    tmp.append(k.toMap())
                }
                map["AddressInfos"] = tmp
            }
            if self.canSell != nil {
                map["CanSell"] = self.canSell!
            }
            if self.extInfo != nil {
                map["ExtInfo"] = self.extInfo!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.renderOrderInfos != nil {
                var tmp : [Any] = []
                for k in self.renderOrderInfos! {
                    tmp.append(k.toMap())
                }
                map["RenderOrderInfos"] = tmp
            }
            if self.unsellableRenderOrderInfos != nil {
                var tmp : [Any] = []
                for k in self.unsellableRenderOrderInfos! {
                    tmp.append(k.toMap())
                }
                map["UnsellableRenderOrderInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressInfos") {
                self.addressInfos = dict["AddressInfos"] as! [RenderDistributionOrderResponseBody.Model.AddressInfos]
            }
            if dict.keys.contains("CanSell") {
                self.canSell = dict["CanSell"] as! Bool
            }
            if dict.keys.contains("ExtInfo") {
                self.extInfo = dict["ExtInfo"] as! [String: String]
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("RenderOrderInfos") {
                self.renderOrderInfos = dict["RenderOrderInfos"] as! [RenderDistributionOrderResponseBody.Model.RenderOrderInfos]
            }
            if dict.keys.contains("UnsellableRenderOrderInfos") {
                self.unsellableRenderOrderInfos = dict["UnsellableRenderOrderInfos"] as! [RenderDistributionOrderResponseBody.Model.UnsellableRenderOrderInfos]
            }
        }
    }
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var model: RenderDistributionOrderResponseBody.Model?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = RenderDistributionOrderResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class RenderDistributionOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenderDistributionOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = RenderDistributionOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitReturnGoodLogistics4DistributionRequest : Tea.TeaModel {
    public var cpCode: String?

    public var disputeId: Int64?

    public var distributorId: String?

    public var logisticsNo: String?

    public var subDistributionOrderId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpCode != nil {
            map["CpCode"] = self.cpCode!
        }
        if self.disputeId != nil {
            map["DisputeId"] = self.disputeId!
        }
        if self.distributorId != nil {
            map["DistributorId"] = self.distributorId!
        }
        if self.logisticsNo != nil {
            map["LogisticsNo"] = self.logisticsNo!
        }
        if self.subDistributionOrderId != nil {
            map["SubDistributionOrderId"] = self.subDistributionOrderId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CpCode") {
            self.cpCode = dict["CpCode"] as! String
        }
        if dict.keys.contains("DisputeId") {
            self.disputeId = dict["DisputeId"] as! Int64
        }
        if dict.keys.contains("DistributorId") {
            self.distributorId = dict["DistributorId"] as! String
        }
        if dict.keys.contains("LogisticsNo") {
            self.logisticsNo = dict["LogisticsNo"] as! String
        }
        if dict.keys.contains("SubDistributionOrderId") {
            self.subDistributionOrderId = dict["SubDistributionOrderId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class SubmitReturnGoodLogistics4DistributionResponseBody : Tea.TeaModel {
    public var code: String?

    public var logsId: String?

    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var subCode: String?

    public var subMessage: String?

    public var success: Bool?

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
            map["Code"] = self.code!
        }
        if self.logsId != nil {
            map["LogsId"] = self.logsId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subMessage != nil {
            map["SubMessage"] = self.subMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogsId") {
            self.logsId = dict["LogsId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCode") {
            self.subCode = dict["SubCode"] as! String
        }
        if dict.keys.contains("SubMessage") {
            self.subMessage = dict["SubMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class SubmitReturnGoodLogistics4DistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitReturnGoodLogistics4DistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SubmitReturnGoodLogistics4DistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
