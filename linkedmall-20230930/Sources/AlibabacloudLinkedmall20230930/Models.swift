import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddressInfo : Tea.TeaModel {
    public var addressDetail: String?

    public var addressId: Int64?

    public var divisionCode: String?

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
            map["addressDetail"] = self.addressDetail!
        }
        if self.addressId != nil {
            map["addressId"] = self.addressId!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        if self.receiver != nil {
            map["receiver"] = self.receiver!
        }
        if self.receiverPhone != nil {
            map["receiverPhone"] = self.receiverPhone!
        }
        if self.townDivisionCode != nil {
            map["townDivisionCode"] = self.townDivisionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("addressDetail") && dict["addressDetail"] != nil {
            self.addressDetail = dict["addressDetail"] as! String
        }
        if dict.keys.contains("addressId") && dict["addressId"] != nil {
            self.addressId = dict["addressId"] as! Int64
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("receiver") && dict["receiver"] != nil {
            self.receiver = dict["receiver"] as! String
        }
        if dict.keys.contains("receiverPhone") && dict["receiverPhone"] != nil {
            self.receiverPhone = dict["receiverPhone"] as! String
        }
        if dict.keys.contains("townDivisionCode") && dict["townDivisionCode"] != nil {
            self.townDivisionCode = dict["townDivisionCode"] as! String
        }
    }
}

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
            map["reasonTextId"] = self.reasonTextId!
        }
        if self.reasonTips != nil {
            map["reasonTips"] = self.reasonTips!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("reasonTextId") && dict["reasonTextId"] != nil {
            self.reasonTextId = dict["reasonTextId"] as! Int64
        }
        if dict.keys.contains("reasonTips") && dict["reasonTips"] != nil {
            self.reasonTips = dict["reasonTips"] as! String
        }
    }
}

public class Category : Tea.TeaModel {
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
            map["categoryId"] = self.categoryId!
        }
        if self.leaf != nil {
            map["leaf"] = self.leaf!
        }
        if self.level != nil {
            map["level"] = self.level!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("categoryId") && dict["categoryId"] != nil {
            self.categoryId = dict["categoryId"] as! Int64
        }
        if dict.keys.contains("leaf") && dict["leaf"] != nil {
            self.leaf = dict["leaf"] as! Bool
        }
        if dict.keys.contains("level") && dict["level"] != nil {
            self.level = dict["level"] as! Int32
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentId") && dict["parentId"] != nil {
            self.parentId = dict["parentId"] as! Int64
        }
    }
}

public class ConfirmDisburseCmd : Tea.TeaModel {
    public var orderId: String?

    public var purchaseOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.purchaseOrderId != nil {
            map["purchaseOrderId"] = self.purchaseOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("orderId") && dict["orderId"] != nil {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("purchaseOrderId") && dict["purchaseOrderId"] != nil {
            self.purchaseOrderId = dict["purchaseOrderId"] as! String
        }
    }
}

public class ConfirmDisburseResult : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! String
        }
    }
}

public class DeliveryInfo : Tea.TeaModel {
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
            map["displayName"] = self.displayName!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.postFee != nil {
            map["postFee"] = self.postFee!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("postFee") && dict["postFee"] != nil {
            self.postFee = dict["postFee"] as! Int64
        }
        if dict.keys.contains("serviceType") && dict["serviceType"] != nil {
            self.serviceType = dict["serviceType"] as! Int64
        }
    }
}

public class DistributionMaxRefundFee : Tea.TeaModel {
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
            map["maxRefundFee"] = self.maxRefundFee!
        }
        if self.minRefundFee != nil {
            map["minRefundFee"] = self.minRefundFee!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxRefundFee") && dict["maxRefundFee"] != nil {
            self.maxRefundFee = dict["maxRefundFee"] as! Int64
        }
        if dict.keys.contains("minRefundFee") && dict["minRefundFee"] != nil {
            self.minRefundFee = dict["minRefundFee"] as! Int64
        }
    }
}

public class Division : Tea.TeaModel {
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
            map["divisionCode"] = self.divisionCode!
        }
        if self.divisionLevel != nil {
            map["divisionLevel"] = self.divisionLevel!
        }
        if self.divisionName != nil {
            map["divisionName"] = self.divisionName!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.pinyin != nil {
            map["pinyin"] = self.pinyin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! Int64
        }
        if dict.keys.contains("divisionLevel") && dict["divisionLevel"] != nil {
            self.divisionLevel = dict["divisionLevel"] as! Int64
        }
        if dict.keys.contains("divisionName") && dict["divisionName"] != nil {
            self.divisionName = dict["divisionName"] as! String
        }
        if dict.keys.contains("parentId") && dict["parentId"] != nil {
            self.parentId = dict["parentId"] as! Int64
        }
        if dict.keys.contains("pinyin") && dict["pinyin"] != nil {
            self.pinyin = dict["pinyin"] as! String
        }
    }
}

public class DivisionPageResult : Tea.TeaModel {
    public var divisionList: [Division]?

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
        if self.divisionList != nil {
            var tmp : [Any] = []
            for k in self.divisionList! {
                tmp.append(k.toMap())
            }
            map["divisionList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("divisionList") && dict["divisionList"] != nil {
            var tmp : [Division] = []
            for v in dict["divisionList"] as! [Any] {
                var model = Division()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.divisionList = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DivisionQuery : Tea.TeaModel {
    public var divisionCode: String?

    public override init() {
        super.init()
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
            map["divisionCode"] = self.divisionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
    }
}

public class GeneralBill : Tea.TeaModel {
    public var billId: String?

    public var billPeriod: String?

    public var downloadUrl: [String]?

    public var endTime: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var shopId: String?

    public var shopName: String?

    public var startTime: String?

    public var totalAmount: Money?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.totalAmount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["billId"] = self.billId!
        }
        if self.billPeriod != nil {
            map["billPeriod"] = self.billPeriod!
        }
        if self.downloadUrl != nil {
            map["downloadUrl"] = self.downloadUrl!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.shopName != nil {
            map["shopName"] = self.shopName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.totalAmount != nil {
            map["totalAmount"] = self.totalAmount?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("billId") && dict["billId"] != nil {
            self.billId = dict["billId"] as! String
        }
        if dict.keys.contains("billPeriod") && dict["billPeriod"] != nil {
            self.billPeriod = dict["billPeriod"] as! String
        }
        if dict.keys.contains("downloadUrl") && dict["downloadUrl"] != nil {
            self.downloadUrl = dict["downloadUrl"] as! [String]
        }
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopName") && dict["shopName"] != nil {
            self.shopName = dict["shopName"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("totalAmount") && dict["totalAmount"] != nil {
            var model = Money()
            model.fromMap(dict["totalAmount"] as! [String: Any])
            self.totalAmount = model
        }
    }
}

public class GeneralBillPageQuery : Tea.TeaModel {
    public var asc: Bool?

    public var billId: String?

    public var billPeriod: String?

    public var limit: Int32?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var shopId: String?

    public var start: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asc != nil {
            map["asc"] = self.asc!
        }
        if self.billId != nil {
            map["billId"] = self.billId!
        }
        if self.billPeriod != nil {
            map["billPeriod"] = self.billPeriod!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("asc") && dict["asc"] != nil {
            self.asc = dict["asc"] as! Bool
        }
        if dict.keys.contains("billId") && dict["billId"] != nil {
            self.billId = dict["billId"] as! String
        }
        if dict.keys.contains("billPeriod") && dict["billPeriod"] != nil {
            self.billPeriod = dict["billPeriod"] as! String
        }
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("orderBy") && dict["orderBy"] != nil {
            self.orderBy = dict["orderBy"] as! String
        }
        if dict.keys.contains("orderDirection") && dict["orderDirection"] != nil {
            self.orderDirection = dict["orderDirection"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("start") && dict["start"] != nil {
            self.start = dict["start"] as! Int32
        }
    }
}

public class GeneralBillPageResult : Tea.TeaModel {
    public var generalBills: [GeneralBill]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.generalBills != nil {
            var tmp : [Any] = []
            for k in self.generalBills! {
                tmp.append(k.toMap())
            }
            map["generalBills"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("generalBills") && dict["generalBills"] != nil {
            var tmp : [GeneralBill] = []
            for v in dict["generalBills"] as! [Any] {
                var model = GeneralBill()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.generalBills = tmp
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") && dict["total"] != nil {
            self.total = dict["total"] as! Int32
        }
    }
}

public class Good : Tea.TeaModel {
    public var goodName: String?

    public var productId: String?

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
            map["goodName"] = self.goodName!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("goodName") && dict["goodName"] != nil {
            self.goodName = dict["goodName"] as! String
        }
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("quantity") && dict["quantity"] != nil {
            self.quantity = dict["quantity"] as! Int32
        }
    }
}

public class GoodsShippingNoticeCreateCmd : Tea.TeaModel {
    public var cpCode: String?

    public var disputeId: Int64?

    public var logisticsNo: String?

    public override init() {
        super.init()
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
            map["cpCode"] = self.cpCode!
        }
        if self.disputeId != nil {
            map["disputeId"] = self.disputeId!
        }
        if self.logisticsNo != nil {
            map["logisticsNo"] = self.logisticsNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cpCode") && dict["cpCode"] != nil {
            self.cpCode = dict["cpCode"] as! String
        }
        if dict.keys.contains("disputeId") && dict["disputeId"] != nil {
            self.disputeId = dict["disputeId"] as! Int64
        }
        if dict.keys.contains("logisticsNo") && dict["logisticsNo"] != nil {
            self.logisticsNo = dict["logisticsNo"] as! String
        }
    }
}

public class GoodsShippingNoticeCreateResult : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! String
        }
    }
}

public class LeavePictureList : Tea.TeaModel {
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
            map["desc"] = self.desc!
        }
        if self.picture != nil {
            map["picture"] = self.picture!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("desc") && dict["desc"] != nil {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("picture") && dict["picture"] != nil {
            self.picture = dict["picture"] as! String
        }
    }
}

public class LogisticsDetail : Tea.TeaModel {
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
            map["ocurrTimeStr"] = self.ocurrTimeStr!
        }
        if self.standerdDesc != nil {
            map["standerdDesc"] = self.standerdDesc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ocurrTimeStr") && dict["ocurrTimeStr"] != nil {
            self.ocurrTimeStr = dict["ocurrTimeStr"] as! String
        }
        if dict.keys.contains("standerdDesc") && dict["standerdDesc"] != nil {
            self.standerdDesc = dict["standerdDesc"] as! String
        }
    }
}

public class LogisticsOrderListResult : Tea.TeaModel {
    public var logisticsOrderList: [LogisticsOrderResult]?

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
        if self.logisticsOrderList != nil {
            var tmp : [Any] = []
            for k in self.logisticsOrderList! {
                tmp.append(k.toMap())
            }
            map["logisticsOrderList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logisticsOrderList") && dict["logisticsOrderList"] != nil {
            var tmp : [LogisticsOrderResult] = []
            for v in dict["logisticsOrderList"] as! [Any] {
                var model = LogisticsOrderResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.logisticsOrderList = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class LogisticsOrderResult : Tea.TeaModel {
    public var dataProvider: String?

    public var dataProviderTitle: String?

    public var goods: [Good]?

    public var logisticsCompanyCode: String?

    public var logisticsCompanyName: String?

    public var logisticsDetailList: [LogisticsDetail]?

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
            map["dataProvider"] = self.dataProvider!
        }
        if self.dataProviderTitle != nil {
            map["dataProviderTitle"] = self.dataProviderTitle!
        }
        if self.goods != nil {
            var tmp : [Any] = []
            for k in self.goods! {
                tmp.append(k.toMap())
            }
            map["goods"] = tmp
        }
        if self.logisticsCompanyCode != nil {
            map["logisticsCompanyCode"] = self.logisticsCompanyCode!
        }
        if self.logisticsCompanyName != nil {
            map["logisticsCompanyName"] = self.logisticsCompanyName!
        }
        if self.logisticsDetailList != nil {
            var tmp : [Any] = []
            for k in self.logisticsDetailList! {
                tmp.append(k.toMap())
            }
            map["logisticsDetailList"] = tmp
        }
        if self.mailNo != nil {
            map["mailNo"] = self.mailNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataProvider") && dict["dataProvider"] != nil {
            self.dataProvider = dict["dataProvider"] as! String
        }
        if dict.keys.contains("dataProviderTitle") && dict["dataProviderTitle"] != nil {
            self.dataProviderTitle = dict["dataProviderTitle"] as! String
        }
        if dict.keys.contains("goods") && dict["goods"] != nil {
            var tmp : [Good] = []
            for v in dict["goods"] as! [Any] {
                var model = Good()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.goods = tmp
        }
        if dict.keys.contains("logisticsCompanyCode") && dict["logisticsCompanyCode"] != nil {
            self.logisticsCompanyCode = dict["logisticsCompanyCode"] as! String
        }
        if dict.keys.contains("logisticsCompanyName") && dict["logisticsCompanyName"] != nil {
            self.logisticsCompanyName = dict["logisticsCompanyName"] as! String
        }
        if dict.keys.contains("logisticsDetailList") && dict["logisticsDetailList"] != nil {
            var tmp : [LogisticsDetail] = []
            for v in dict["logisticsDetailList"] as! [Any] {
                var model = LogisticsDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.logisticsDetailList = tmp
        }
        if dict.keys.contains("mailNo") && dict["mailNo"] != nil {
            self.mailNo = dict["mailNo"] as! String
        }
    }
}

public class Money : Tea.TeaModel {
    public class Currency : Tea.TeaModel {
        public var currencyCode: String?

        public var defaultFractionDigits: Int32?

        public var displayName: String?

        public var numericCode: Int32?

        public var symbol: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currencyCode != nil {
                map["currencyCode"] = self.currencyCode!
            }
            if self.defaultFractionDigits != nil {
                map["defaultFractionDigits"] = self.defaultFractionDigits!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.numericCode != nil {
                map["numericCode"] = self.numericCode!
            }
            if self.symbol != nil {
                map["symbol"] = self.symbol!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currencyCode") && dict["currencyCode"] != nil {
                self.currencyCode = dict["currencyCode"] as! String
            }
            if dict.keys.contains("defaultFractionDigits") && dict["defaultFractionDigits"] != nil {
                self.defaultFractionDigits = dict["defaultFractionDigits"] as! Int32
            }
            if dict.keys.contains("displayName") && dict["displayName"] != nil {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("numericCode") && dict["numericCode"] != nil {
                self.numericCode = dict["numericCode"] as! Int32
            }
            if dict.keys.contains("symbol") && dict["symbol"] != nil {
                self.symbol = dict["symbol"] as! String
            }
        }
    }
    public var amount: Int64?

    public var amountAsString: String?

    public var amountString: String?

    public var cent: Int64?

    public var currency: Money.Currency?

    public var currencyCode: String?

    public var positive: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.currency?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["amount"] = self.amount!
        }
        if self.amountAsString != nil {
            map["amountAsString"] = self.amountAsString!
        }
        if self.amountString != nil {
            map["amountString"] = self.amountString!
        }
        if self.cent != nil {
            map["cent"] = self.cent!
        }
        if self.currency != nil {
            map["currency"] = self.currency?.toMap()
        }
        if self.currencyCode != nil {
            map["currencyCode"] = self.currencyCode!
        }
        if self.positive != nil {
            map["positive"] = self.positive!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("amount") && dict["amount"] != nil {
            self.amount = dict["amount"] as! Int64
        }
        if dict.keys.contains("amountAsString") && dict["amountAsString"] != nil {
            self.amountAsString = dict["amountAsString"] as! String
        }
        if dict.keys.contains("amountString") && dict["amountString"] != nil {
            self.amountString = dict["amountString"] as! String
        }
        if dict.keys.contains("cent") && dict["cent"] != nil {
            self.cent = dict["cent"] as! Int64
        }
        if dict.keys.contains("currency") && dict["currency"] != nil {
            var model = Money.Currency()
            model.fromMap(dict["currency"] as! [String: Any])
            self.currency = model
        }
        if dict.keys.contains("currencyCode") && dict["currencyCode"] != nil {
            self.currencyCode = dict["currencyCode"] as! String
        }
        if dict.keys.contains("positive") && dict["positive"] != nil {
            self.positive = dict["positive"] as! Bool
        }
    }
}

public class OrderLineResult : Tea.TeaModel {
    public var logisticsStatus: String?

    public var number: String?

    public var orderId: String?

    public var orderLineId: String?

    public var orderLineStatus: String?

    public var productId: String?

    public var productPic: String?

    public var productPrice: [ProductPrice]?

    public var productTitle: String?

    public var skuId: String?

    public var skuTitle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logisticsStatus != nil {
            map["logisticsStatus"] = self.logisticsStatus!
        }
        if self.number != nil {
            map["number"] = self.number!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.orderLineId != nil {
            map["orderLineId"] = self.orderLineId!
        }
        if self.orderLineStatus != nil {
            map["orderLineStatus"] = self.orderLineStatus!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productPic != nil {
            map["productPic"] = self.productPic!
        }
        if self.productPrice != nil {
            var tmp : [Any] = []
            for k in self.productPrice! {
                tmp.append(k.toMap())
            }
            map["productPrice"] = tmp
        }
        if self.productTitle != nil {
            map["productTitle"] = self.productTitle!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        if self.skuTitle != nil {
            map["skuTitle"] = self.skuTitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logisticsStatus") && dict["logisticsStatus"] != nil {
            self.logisticsStatus = dict["logisticsStatus"] as! String
        }
        if dict.keys.contains("number") && dict["number"] != nil {
            self.number = dict["number"] as! String
        }
        if dict.keys.contains("orderId") && dict["orderId"] != nil {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("orderLineId") && dict["orderLineId"] != nil {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("orderLineStatus") && dict["orderLineStatus"] != nil {
            self.orderLineStatus = dict["orderLineStatus"] as! String
        }
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productPic") && dict["productPic"] != nil {
            self.productPic = dict["productPic"] as! String
        }
        if dict.keys.contains("productPrice") && dict["productPrice"] != nil {
            var tmp : [ProductPrice] = []
            for v in dict["productPrice"] as! [Any] {
                var model = ProductPrice()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productPrice = tmp
        }
        if dict.keys.contains("productTitle") && dict["productTitle"] != nil {
            self.productTitle = dict["productTitle"] as! String
        }
        if dict.keys.contains("skuId") && dict["skuId"] != nil {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuTitle") && dict["skuTitle"] != nil {
            self.skuTitle = dict["skuTitle"] as! String
        }
    }
}

public class OrderListResult : Tea.TeaModel {
    public var orderList: [OrderResult]?

    public var requestId: String?

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
        if self.orderList != nil {
            var tmp : [Any] = []
            for k in self.orderList! {
                tmp.append(k.toMap())
            }
            map["orderList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("orderList") && dict["orderList"] != nil {
            var tmp : [OrderResult] = []
            for v in dict["orderList"] as! [Any] {
                var model = OrderResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderList = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") && dict["total"] != nil {
            self.total = dict["total"] as! Int32
        }
    }
}

public class OrderPageQuery : Tea.TeaModel {
    public var orderIdList: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var purchaseOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderIdList != nil {
            map["orderIdList"] = self.orderIdList!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.purchaseOrderId != nil {
            map["purchaseOrderId"] = self.purchaseOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("orderIdList") && dict["orderIdList"] != nil {
            self.orderIdList = dict["orderIdList"] as! [String]
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("purchaseOrderId") && dict["purchaseOrderId"] != nil {
            self.purchaseOrderId = dict["purchaseOrderId"] as! String
        }
    }
}

public class OrderProductResult : Tea.TeaModel {
    public var canSell: Bool?

    public var features: [String: Any]?

    public var message: String?

    public var price: Int64?

    public var productId: String?

    public var productPicUrl: String?

    public var productTitle: String?

    public var quantity: Int32?

    public var shopId: String?

    public var skuId: String?

    public var skuTitle: String?

    public override init() {
        super.init()
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
            map["canSell"] = self.canSell!
        }
        if self.features != nil {
            map["features"] = self.features!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.price != nil {
            map["price"] = self.price!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productPicUrl != nil {
            map["productPicUrl"] = self.productPicUrl!
        }
        if self.productTitle != nil {
            map["productTitle"] = self.productTitle!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        if self.skuTitle != nil {
            map["skuTitle"] = self.skuTitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("canSell") && dict["canSell"] != nil {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("features") && dict["features"] != nil {
            self.features = dict["features"] as! [String: Any]
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("price") && dict["price"] != nil {
            self.price = dict["price"] as! Int64
        }
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productPicUrl") && dict["productPicUrl"] != nil {
            self.productPicUrl = dict["productPicUrl"] as! String
        }
        if dict.keys.contains("productTitle") && dict["productTitle"] != nil {
            self.productTitle = dict["productTitle"] as! String
        }
        if dict.keys.contains("quantity") && dict["quantity"] != nil {
            self.quantity = dict["quantity"] as! Int32
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skuId") && dict["skuId"] != nil {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuTitle") && dict["skuTitle"] != nil {
            self.skuTitle = dict["skuTitle"] as! String
        }
    }
}

public class OrderRenderProductDTO : Tea.TeaModel {
    public var productId: String?

    public var quantity: Int32?

    public var shopId: String?

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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("quantity") && dict["quantity"] != nil {
            self.quantity = dict["quantity"] as! Int32
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skuId") && dict["skuId"] != nil {
            self.skuId = dict["skuId"] as! String
        }
    }
}

public class OrderRenderResult : Tea.TeaModel {
    public var canSell: Bool?

    public var deliveryInfoList: [DeliveryInfo]?

    public var extInfo: [String: Any]?

    public var message: String?

    public var productList: [OrderProductResult]?

    public override init() {
        super.init()
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
            map["canSell"] = self.canSell!
        }
        if self.deliveryInfoList != nil {
            var tmp : [Any] = []
            for k in self.deliveryInfoList! {
                tmp.append(k.toMap())
            }
            map["deliveryInfoList"] = tmp
        }
        if self.extInfo != nil {
            map["extInfo"] = self.extInfo!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.productList != nil {
            var tmp : [Any] = []
            for k in self.productList! {
                tmp.append(k.toMap())
            }
            map["productList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("canSell") && dict["canSell"] != nil {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("deliveryInfoList") && dict["deliveryInfoList"] != nil {
            var tmp : [DeliveryInfo] = []
            for v in dict["deliveryInfoList"] as! [Any] {
                var model = DeliveryInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deliveryInfoList = tmp
        }
        if dict.keys.contains("extInfo") && dict["extInfo"] != nil {
            self.extInfo = dict["extInfo"] as! [String: Any]
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("productList") && dict["productList"] != nil {
            var tmp : [OrderProductResult] = []
            for v in dict["productList"] as! [Any] {
                var model = OrderProductResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productList = tmp
        }
    }
}

public class OrderResult : Tea.TeaModel {
    public var createDate: String?

    public var distributorId: String?

    public var logisticsStatus: String?

    public var orderAmount: String?

    public var orderId: String?

    public var orderLineList: [OrderLineResult]?

    public var orderStatus: String?

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
        if self.createDate != nil {
            map["createDate"] = self.createDate!
        }
        if self.distributorId != nil {
            map["distributorId"] = self.distributorId!
        }
        if self.logisticsStatus != nil {
            map["logisticsStatus"] = self.logisticsStatus!
        }
        if self.orderAmount != nil {
            map["orderAmount"] = self.orderAmount!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.orderLineList != nil {
            var tmp : [Any] = []
            for k in self.orderLineList! {
                tmp.append(k.toMap())
            }
            map["orderLineList"] = tmp
        }
        if self.orderStatus != nil {
            map["orderStatus"] = self.orderStatus!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createDate") && dict["createDate"] != nil {
            self.createDate = dict["createDate"] as! String
        }
        if dict.keys.contains("distributorId") && dict["distributorId"] != nil {
            self.distributorId = dict["distributorId"] as! String
        }
        if dict.keys.contains("logisticsStatus") && dict["logisticsStatus"] != nil {
            self.logisticsStatus = dict["logisticsStatus"] as! String
        }
        if dict.keys.contains("orderAmount") && dict["orderAmount"] != nil {
            self.orderAmount = dict["orderAmount"] as! String
        }
        if dict.keys.contains("orderId") && dict["orderId"] != nil {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("orderLineList") && dict["orderLineList"] != nil {
            var tmp : [OrderLineResult] = []
            for v in dict["orderLineList"] as! [Any] {
                var model = OrderLineResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderLineList = tmp
        }
        if dict.keys.contains("orderStatus") && dict["orderStatus"] != nil {
            self.orderStatus = dict["orderStatus"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class Product : Tea.TeaModel {
    public var canSell: Bool?

    public var categoryChain: [Category]?

    public var categoryLeafId: Int64?

    public var descPath: String?

    public var divisionCode: String?

    public var fuzzyQuantity: String?

    public var images: [String]?

    public var picUrl: String?

    public var productId: String?

    public var productSpecs: [ProductSpec]?

    public var productStatus: String?

    public var productType: String?

    public var properties: [ProductProperty]?

    public var quantity: Int64?

    public var requestId: String?

    public var shopId: String?

    public var skus: [Sku]?

    public var soldQuantity: String?

    public var taxCode: String?

    public var taxRate: Int32?

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
        if self.canSell != nil {
            map["canSell"] = self.canSell!
        }
        if self.categoryChain != nil {
            var tmp : [Any] = []
            for k in self.categoryChain! {
                tmp.append(k.toMap())
            }
            map["categoryChain"] = tmp
        }
        if self.categoryLeafId != nil {
            map["categoryLeafId"] = self.categoryLeafId!
        }
        if self.descPath != nil {
            map["descPath"] = self.descPath!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        if self.fuzzyQuantity != nil {
            map["fuzzyQuantity"] = self.fuzzyQuantity!
        }
        if self.images != nil {
            map["images"] = self.images!
        }
        if self.picUrl != nil {
            map["picUrl"] = self.picUrl!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productSpecs != nil {
            var tmp : [Any] = []
            for k in self.productSpecs! {
                tmp.append(k.toMap())
            }
            map["productSpecs"] = tmp
        }
        if self.productStatus != nil {
            map["productStatus"] = self.productStatus!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        if self.properties != nil {
            var tmp : [Any] = []
            for k in self.properties! {
                tmp.append(k.toMap())
            }
            map["properties"] = tmp
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.skus != nil {
            var tmp : [Any] = []
            for k in self.skus! {
                tmp.append(k.toMap())
            }
            map["skus"] = tmp
        }
        if self.soldQuantity != nil {
            map["soldQuantity"] = self.soldQuantity!
        }
        if self.taxCode != nil {
            map["taxCode"] = self.taxCode!
        }
        if self.taxRate != nil {
            map["taxRate"] = self.taxRate!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("canSell") && dict["canSell"] != nil {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("categoryChain") && dict["categoryChain"] != nil {
            var tmp : [Category] = []
            for v in dict["categoryChain"] as! [Any] {
                var model = Category()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.categoryChain = tmp
        }
        if dict.keys.contains("categoryLeafId") && dict["categoryLeafId"] != nil {
            self.categoryLeafId = dict["categoryLeafId"] as! Int64
        }
        if dict.keys.contains("descPath") && dict["descPath"] != nil {
            self.descPath = dict["descPath"] as! String
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("fuzzyQuantity") && dict["fuzzyQuantity"] != nil {
            self.fuzzyQuantity = dict["fuzzyQuantity"] as! String
        }
        if dict.keys.contains("images") && dict["images"] != nil {
            self.images = dict["images"] as! [String]
        }
        if dict.keys.contains("picUrl") && dict["picUrl"] != nil {
            self.picUrl = dict["picUrl"] as! String
        }
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productSpecs") && dict["productSpecs"] != nil {
            var tmp : [ProductSpec] = []
            for v in dict["productSpecs"] as! [Any] {
                var model = ProductSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productSpecs = tmp
        }
        if dict.keys.contains("productStatus") && dict["productStatus"] != nil {
            self.productStatus = dict["productStatus"] as! String
        }
        if dict.keys.contains("productType") && dict["productType"] != nil {
            self.productType = dict["productType"] as! String
        }
        if dict.keys.contains("properties") && dict["properties"] != nil {
            var tmp : [ProductProperty] = []
            for v in dict["properties"] as! [Any] {
                var model = ProductProperty()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.properties = tmp
        }
        if dict.keys.contains("quantity") && dict["quantity"] != nil {
            self.quantity = dict["quantity"] as! Int64
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skus") && dict["skus"] != nil {
            var tmp : [Sku] = []
            for v in dict["skus"] as! [Any] {
                var model = Sku()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.skus = tmp
        }
        if dict.keys.contains("soldQuantity") && dict["soldQuantity"] != nil {
            self.soldQuantity = dict["soldQuantity"] as! String
        }
        if dict.keys.contains("taxCode") && dict["taxCode"] != nil {
            self.taxCode = dict["taxCode"] as! String
        }
        if dict.keys.contains("taxRate") && dict["taxRate"] != nil {
            self.taxRate = dict["taxRate"] as! Int32
        }
        if dict.keys.contains("title") && dict["title"] != nil {
            self.title = dict["title"] as! String
        }
    }
}

public class ProductDTO : Tea.TeaModel {
    public var price: Int64?

    public var productId: String?

    public var quantity: Int32?

    public var shopId: String?

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
        if self.price != nil {
            map["price"] = self.price!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("price") && dict["price"] != nil {
            self.price = dict["price"] as! Int64
        }
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("quantity") && dict["quantity"] != nil {
            self.quantity = dict["quantity"] as! Int32
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skuId") && dict["skuId"] != nil {
            self.skuId = dict["skuId"] as! String
        }
    }
}

public class ProductPageResult : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var products: [Product]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["products"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("products") && dict["products"] != nil {
            var tmp : [Product] = []
            for v in dict["products"] as! [Any] {
                var model = Product()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") && dict["total"] != nil {
            self.total = dict["total"] as! Int32
        }
    }
}

public class ProductPrice : Tea.TeaModel {
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
            map["fundAmountMoney"] = self.fundAmountMoney!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fundAmountMoney") && dict["fundAmountMoney"] != nil {
            self.fundAmountMoney = dict["fundAmountMoney"] as! String
        }
    }
}

public class ProductProperty : Tea.TeaModel {
    public var text: String?

    public var values: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.values != nil {
            map["values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("text") && dict["text"] != nil {
            self.text = dict["text"] as! String
        }
        if dict.keys.contains("values") && dict["values"] != nil {
            self.values = dict["values"] as! [String]
        }
    }
}

public class ProductQuery : Tea.TeaModel {
    public var distributorShopId: String?

    public var divisionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorShopId != nil {
            map["distributorShopId"] = self.distributorShopId!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("distributorShopId") && dict["distributorShopId"] != nil {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
    }
}

public class ProductSaleInfo : Tea.TeaModel {
    public var canSell: Bool?

    public var divisionCode: String?

    public var fuzzyQuantity: String?

    public var productId: String?

    public var productStatus: String?

    public var quantity: Int64?

    public var requestId: String?

    public var shopId: String?

    public var skus: [SkuSaleInfo]?

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
        if self.canSell != nil {
            map["canSell"] = self.canSell!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        if self.fuzzyQuantity != nil {
            map["fuzzyQuantity"] = self.fuzzyQuantity!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productStatus != nil {
            map["productStatus"] = self.productStatus!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.skus != nil {
            var tmp : [Any] = []
            for k in self.skus! {
                tmp.append(k.toMap())
            }
            map["skus"] = tmp
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("canSell") && dict["canSell"] != nil {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("fuzzyQuantity") && dict["fuzzyQuantity"] != nil {
            self.fuzzyQuantity = dict["fuzzyQuantity"] as! String
        }
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productStatus") && dict["productStatus"] != nil {
            self.productStatus = dict["productStatus"] as! String
        }
        if dict.keys.contains("quantity") && dict["quantity"] != nil {
            self.quantity = dict["quantity"] as! Int64
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skus") && dict["skus"] != nil {
            var tmp : [SkuSaleInfo] = []
            for v in dict["skus"] as! [Any] {
                var model = SkuSaleInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.skus = tmp
        }
        if dict.keys.contains("title") && dict["title"] != nil {
            self.title = dict["title"] as! String
        }
    }
}

public class ProductSaleInfoListQuery : Tea.TeaModel {
    public var distributorShopId: String?

    public var divisionCode: String?

    public var productIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorShopId != nil {
            map["distributorShopId"] = self.distributorShopId!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        if self.productIds != nil {
            map["productIds"] = self.productIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("distributorShopId") && dict["distributorShopId"] != nil {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("productIds") && dict["productIds"] != nil {
            self.productIds = dict["productIds"] as! [String]
        }
    }
}

public class ProductSaleInfoListResult : Tea.TeaModel {
    public var productSaleInfos: [ProductSaleInfo]?

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
        if self.productSaleInfos != nil {
            var tmp : [Any] = []
            for k in self.productSaleInfos! {
                tmp.append(k.toMap())
            }
            map["productSaleInfos"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productSaleInfos") && dict["productSaleInfos"] != nil {
            var tmp : [ProductSaleInfo] = []
            for v in dict["productSaleInfos"] as! [Any] {
                var model = ProductSaleInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productSaleInfos = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ProductSaleInfoQuery : Tea.TeaModel {
    public var distributorShopId: String?

    public var divisionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorShopId != nil {
            map["distributorShopId"] = self.distributorShopId!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("distributorShopId") && dict["distributorShopId"] != nil {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
    }
}

public class ProductSpec : Tea.TeaModel {
    public var key: String?

    public var keyId: Int64?

    public var values: [ProductSpecValue]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.keyId != nil {
            map["keyId"] = self.keyId!
        }
        if self.values != nil {
            var tmp : [Any] = []
            for k in self.values! {
                tmp.append(k.toMap())
            }
            map["values"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") && dict["key"] != nil {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("keyId") && dict["keyId"] != nil {
            self.keyId = dict["keyId"] as! Int64
        }
        if dict.keys.contains("values") && dict["values"] != nil {
            var tmp : [ProductSpecValue] = []
            for v in dict["values"] as! [Any] {
                var model = ProductSpecValue()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.values = tmp
        }
    }
}

public class ProductSpecValue : Tea.TeaModel {
    public var value: String?

    public var valueId: Int64?

    public override init() {
        super.init()
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
        if self.valueId != nil {
            map["valueId"] = self.valueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("valueId") && dict["valueId"] != nil {
            self.valueId = dict["valueId"] as! Int64
        }
    }
}

public class PurchaseOrderCreateCmd : Tea.TeaModel {
    public var buyerId: String?

    public var deliveryAddress: AddressInfo?

    public var extInfo: [String: Any]?

    public var outerPurchaseOrderId: String?

    public var productList: [ProductDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryAddress?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyerId != nil {
            map["buyerId"] = self.buyerId!
        }
        if self.deliveryAddress != nil {
            map["deliveryAddress"] = self.deliveryAddress?.toMap()
        }
        if self.extInfo != nil {
            map["extInfo"] = self.extInfo!
        }
        if self.outerPurchaseOrderId != nil {
            map["outerPurchaseOrderId"] = self.outerPurchaseOrderId!
        }
        if self.productList != nil {
            var tmp : [Any] = []
            for k in self.productList! {
                tmp.append(k.toMap())
            }
            map["productList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buyerId") && dict["buyerId"] != nil {
            self.buyerId = dict["buyerId"] as! String
        }
        if dict.keys.contains("deliveryAddress") && dict["deliveryAddress"] != nil {
            var model = AddressInfo()
            model.fromMap(dict["deliveryAddress"] as! [String: Any])
            self.deliveryAddress = model
        }
        if dict.keys.contains("extInfo") && dict["extInfo"] != nil {
            self.extInfo = dict["extInfo"] as! [String: Any]
        }
        if dict.keys.contains("outerPurchaseOrderId") && dict["outerPurchaseOrderId"] != nil {
            self.outerPurchaseOrderId = dict["outerPurchaseOrderId"] as! String
        }
        if dict.keys.contains("productList") && dict["productList"] != nil {
            var tmp : [ProductDTO] = []
            for v in dict["productList"] as! [Any] {
                var model = ProductDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productList = tmp
        }
    }
}

public class PurchaseOrderCreateResult : Tea.TeaModel {
    public var purchaseOrderId: String?

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
        if self.purchaseOrderId != nil {
            map["purchaseOrderId"] = self.purchaseOrderId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("purchaseOrderId") && dict["purchaseOrderId"] != nil {
            self.purchaseOrderId = dict["purchaseOrderId"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class PurchaseOrderRenderQuery : Tea.TeaModel {
    public var buyerId: String?

    public var deliveryAddress: AddressInfo?

    public var extInfo: [String: Any]?

    public var productList: [OrderRenderProductDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryAddress?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyerId != nil {
            map["buyerId"] = self.buyerId!
        }
        if self.deliveryAddress != nil {
            map["deliveryAddress"] = self.deliveryAddress?.toMap()
        }
        if self.extInfo != nil {
            map["extInfo"] = self.extInfo!
        }
        if self.productList != nil {
            var tmp : [Any] = []
            for k in self.productList! {
                tmp.append(k.toMap())
            }
            map["productList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buyerId") && dict["buyerId"] != nil {
            self.buyerId = dict["buyerId"] as! String
        }
        if dict.keys.contains("deliveryAddress") && dict["deliveryAddress"] != nil {
            var model = AddressInfo()
            model.fromMap(dict["deliveryAddress"] as! [String: Any])
            self.deliveryAddress = model
        }
        if dict.keys.contains("extInfo") && dict["extInfo"] != nil {
            self.extInfo = dict["extInfo"] as! [String: Any]
        }
        if dict.keys.contains("productList") && dict["productList"] != nil {
            var tmp : [OrderRenderProductDTO] = []
            for v in dict["productList"] as! [Any] {
                var model = OrderRenderProductDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productList = tmp
        }
    }
}

public class PurchaseOrderRenderResult : Tea.TeaModel {
    public var addressList: [AddressInfo]?

    public var canSell: Bool?

    public var extInfo: [String: Any]?

    public var message: String?

    public var orderList: [OrderRenderResult]?

    public var requestId: String?

    public var unsellableOrderList: [OrderRenderResult]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressList != nil {
            var tmp : [Any] = []
            for k in self.addressList! {
                tmp.append(k.toMap())
            }
            map["addressList"] = tmp
        }
        if self.canSell != nil {
            map["canSell"] = self.canSell!
        }
        if self.extInfo != nil {
            map["extInfo"] = self.extInfo!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.orderList != nil {
            var tmp : [Any] = []
            for k in self.orderList! {
                tmp.append(k.toMap())
            }
            map["orderList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.unsellableOrderList != nil {
            var tmp : [Any] = []
            for k in self.unsellableOrderList! {
                tmp.append(k.toMap())
            }
            map["unsellableOrderList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("addressList") && dict["addressList"] != nil {
            var tmp : [AddressInfo] = []
            for v in dict["addressList"] as! [Any] {
                var model = AddressInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addressList = tmp
        }
        if dict.keys.contains("canSell") && dict["canSell"] != nil {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("extInfo") && dict["extInfo"] != nil {
            self.extInfo = dict["extInfo"] as! [String: Any]
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("orderList") && dict["orderList"] != nil {
            var tmp : [OrderRenderResult] = []
            for v in dict["orderList"] as! [Any] {
                var model = OrderRenderResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderList = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("unsellableOrderList") && dict["unsellableOrderList"] != nil {
            var tmp : [OrderRenderResult] = []
            for v in dict["unsellableOrderList"] as! [Any] {
                var model = OrderRenderResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.unsellableOrderList = tmp
        }
    }
}

public class PurchaseOrderStatusResult : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
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
            map["maxRefundFee"] = self.maxRefundFee!
        }
        if self.minRefundFee != nil {
            map["minRefundFee"] = self.minRefundFee!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxRefundFee") && dict["maxRefundFee"] != nil {
            self.maxRefundFee = dict["maxRefundFee"] as! Int64
        }
        if dict.keys.contains("minRefundFee") && dict["minRefundFee"] != nil {
            self.minRefundFee = dict["minRefundFee"] as! Int64
        }
    }
}

public class RefundOrderCmd : Tea.TeaModel {
    public var applyReasonTextId: Int64?

    public var applyReasonTips: String?

    public var applyRefundCount: Int32?

    public var applyRefundFee: Int64?

    public var bizClaimType: Int32?

    public var goodsStatus: Int32?

    public var leaveMessage: String?

    public var leavePictureLists: [LeavePictureList]?

    public var orderLineId: String?

    public override init() {
        super.init()
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
            map["applyReasonTextId"] = self.applyReasonTextId!
        }
        if self.applyReasonTips != nil {
            map["applyReasonTips"] = self.applyReasonTips!
        }
        if self.applyRefundCount != nil {
            map["applyRefundCount"] = self.applyRefundCount!
        }
        if self.applyRefundFee != nil {
            map["applyRefundFee"] = self.applyRefundFee!
        }
        if self.bizClaimType != nil {
            map["bizClaimType"] = self.bizClaimType!
        }
        if self.goodsStatus != nil {
            map["goodsStatus"] = self.goodsStatus!
        }
        if self.leaveMessage != nil {
            map["leaveMessage"] = self.leaveMessage!
        }
        if self.leavePictureLists != nil {
            var tmp : [Any] = []
            for k in self.leavePictureLists! {
                tmp.append(k.toMap())
            }
            map["leavePictureLists"] = tmp
        }
        if self.orderLineId != nil {
            map["orderLineId"] = self.orderLineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applyReasonTextId") && dict["applyReasonTextId"] != nil {
            self.applyReasonTextId = dict["applyReasonTextId"] as! Int64
        }
        if dict.keys.contains("applyReasonTips") && dict["applyReasonTips"] != nil {
            self.applyReasonTips = dict["applyReasonTips"] as! String
        }
        if dict.keys.contains("applyRefundCount") && dict["applyRefundCount"] != nil {
            self.applyRefundCount = dict["applyRefundCount"] as! Int32
        }
        if dict.keys.contains("applyRefundFee") && dict["applyRefundFee"] != nil {
            self.applyRefundFee = dict["applyRefundFee"] as! Int64
        }
        if dict.keys.contains("bizClaimType") && dict["bizClaimType"] != nil {
            self.bizClaimType = dict["bizClaimType"] as! Int32
        }
        if dict.keys.contains("goodsStatus") && dict["goodsStatus"] != nil {
            self.goodsStatus = dict["goodsStatus"] as! Int32
        }
        if dict.keys.contains("leaveMessage") && dict["leaveMessage"] != nil {
            self.leaveMessage = dict["leaveMessage"] as! String
        }
        if dict.keys.contains("leavePictureLists") && dict["leavePictureLists"] != nil {
            var tmp : [LeavePictureList] = []
            for v in dict["leavePictureLists"] as! [Any] {
                var model = LeavePictureList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.leavePictureLists = tmp
        }
        if dict.keys.contains("orderLineId") && dict["orderLineId"] != nil {
            self.orderLineId = dict["orderLineId"] as! String
        }
    }
}

public class RefundOrderResult : Tea.TeaModel {
    public var disputeId: String?

    public var disputeStatus: Int32?

    public var disputeType: Int32?

    public var orderLineId: String?

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
        if self.disputeId != nil {
            map["disputeId"] = self.disputeId!
        }
        if self.disputeStatus != nil {
            map["disputeStatus"] = self.disputeStatus!
        }
        if self.disputeType != nil {
            map["disputeType"] = self.disputeType!
        }
        if self.orderLineId != nil {
            map["orderLineId"] = self.orderLineId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("disputeId") && dict["disputeId"] != nil {
            self.disputeId = dict["disputeId"] as! String
        }
        if dict.keys.contains("disputeStatus") && dict["disputeStatus"] != nil {
            self.disputeStatus = dict["disputeStatus"] as! Int32
        }
        if dict.keys.contains("disputeType") && dict["disputeType"] != nil {
            self.disputeType = dict["disputeType"] as! Int32
        }
        if dict.keys.contains("orderLineId") && dict["orderLineId"] != nil {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class RefundReason : Tea.TeaModel {
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
            map["proofRequired"] = self.proofRequired!
        }
        if self.reasonTextId != nil {
            map["reasonTextId"] = self.reasonTextId!
        }
        if self.reasonTips != nil {
            map["reasonTips"] = self.reasonTips!
        }
        if self.refundDescRequired != nil {
            map["refundDescRequired"] = self.refundDescRequired!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("proofRequired") && dict["proofRequired"] != nil {
            self.proofRequired = dict["proofRequired"] as! Bool
        }
        if dict.keys.contains("reasonTextId") && dict["reasonTextId"] != nil {
            self.reasonTextId = dict["reasonTextId"] as! String
        }
        if dict.keys.contains("reasonTips") && dict["reasonTips"] != nil {
            self.reasonTips = dict["reasonTips"] as! String
        }
        if dict.keys.contains("refundDescRequired") && dict["refundDescRequired"] != nil {
            self.refundDescRequired = dict["refundDescRequired"] as! Bool
        }
    }
}

public class RefundRenderCmd : Tea.TeaModel {
    public var bizClaimType: Int32?

    public var goodsStatus: Int32?

    public var orderLineId: String?

    public override init() {
        super.init()
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
            map["bizClaimType"] = self.bizClaimType!
        }
        if self.goodsStatus != nil {
            map["goodsStatus"] = self.goodsStatus!
        }
        if self.orderLineId != nil {
            map["orderLineId"] = self.orderLineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bizClaimType") && dict["bizClaimType"] != nil {
            self.bizClaimType = dict["bizClaimType"] as! Int32
        }
        if dict.keys.contains("goodsStatus") && dict["goodsStatus"] != nil {
            self.goodsStatus = dict["goodsStatus"] as! Int32
        }
        if dict.keys.contains("orderLineId") && dict["orderLineId"] != nil {
            self.orderLineId = dict["orderLineId"] as! String
        }
    }
}

public class RefundRenderResult : Tea.TeaModel {
    public var bizClaimType: Int32?

    public var mainOrderRefund: Bool?

    public var maxRefundFeeData: DistributionMaxRefundFee?

    public var orderLineId: String?

    public var refundReasonList: [RefundReason]?

    public var requestId: String?

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
            map["bizClaimType"] = self.bizClaimType!
        }
        if self.mainOrderRefund != nil {
            map["mainOrderRefund"] = self.mainOrderRefund!
        }
        if self.maxRefundFeeData != nil {
            map["maxRefundFeeData"] = self.maxRefundFeeData?.toMap()
        }
        if self.orderLineId != nil {
            map["orderLineId"] = self.orderLineId!
        }
        if self.refundReasonList != nil {
            var tmp : [Any] = []
            for k in self.refundReasonList! {
                tmp.append(k.toMap())
            }
            map["refundReasonList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bizClaimType") && dict["bizClaimType"] != nil {
            self.bizClaimType = dict["bizClaimType"] as! Int32
        }
        if dict.keys.contains("mainOrderRefund") && dict["mainOrderRefund"] != nil {
            self.mainOrderRefund = dict["mainOrderRefund"] as! Bool
        }
        if dict.keys.contains("maxRefundFeeData") && dict["maxRefundFeeData"] != nil {
            var model = DistributionMaxRefundFee()
            model.fromMap(dict["maxRefundFeeData"] as! [String: Any])
            self.maxRefundFeeData = model
        }
        if dict.keys.contains("orderLineId") && dict["orderLineId"] != nil {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("refundReasonList") && dict["refundReasonList"] != nil {
            var tmp : [RefundReason] = []
            for v in dict["refundReasonList"] as! [Any] {
                var model = RefundReason()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundReasonList = tmp
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class RefundResult : Tea.TeaModel {
    public var applyDisputeDesc: String?

    public var applyReason: ApplyReason?

    public var bizClaimType: Int32?

    public var disputeCreateTime: String?

    public var disputeDesc: String?

    public var disputeEndTime: String?

    public var disputeId: String?

    public var disputeStatus: Int32?

    public var disputeType: Int32?

    public var orderId: String?

    public var orderLineId: String?

    public var orderLogisticsStatus: Int32?

    public var refundFee: Int64?

    public var refundFeeData: RefundFeeData?

    public var refunderAddress: String?

    public var refunderName: String?

    public var refunderTel: String?

    public var refunderZipCode: String?

    public var returnGoodLogisticsStatus: Int32?

    public var sellerAgreeMsg: String?

    public var sellerRefuseAgreementMessage: String?

    public var sellerRefuseReason: String?

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
            map["applyDisputeDesc"] = self.applyDisputeDesc!
        }
        if self.applyReason != nil {
            map["applyReason"] = self.applyReason?.toMap()
        }
        if self.bizClaimType != nil {
            map["bizClaimType"] = self.bizClaimType!
        }
        if self.disputeCreateTime != nil {
            map["disputeCreateTime"] = self.disputeCreateTime!
        }
        if self.disputeDesc != nil {
            map["disputeDesc"] = self.disputeDesc!
        }
        if self.disputeEndTime != nil {
            map["disputeEndTime"] = self.disputeEndTime!
        }
        if self.disputeId != nil {
            map["disputeId"] = self.disputeId!
        }
        if self.disputeStatus != nil {
            map["disputeStatus"] = self.disputeStatus!
        }
        if self.disputeType != nil {
            map["disputeType"] = self.disputeType!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.orderLineId != nil {
            map["orderLineId"] = self.orderLineId!
        }
        if self.orderLogisticsStatus != nil {
            map["orderLogisticsStatus"] = self.orderLogisticsStatus!
        }
        if self.refundFee != nil {
            map["refundFee"] = self.refundFee!
        }
        if self.refundFeeData != nil {
            map["refundFeeData"] = self.refundFeeData?.toMap()
        }
        if self.refunderAddress != nil {
            map["refunderAddress"] = self.refunderAddress!
        }
        if self.refunderName != nil {
            map["refunderName"] = self.refunderName!
        }
        if self.refunderTel != nil {
            map["refunderTel"] = self.refunderTel!
        }
        if self.refunderZipCode != nil {
            map["refunderZipCode"] = self.refunderZipCode!
        }
        if self.returnGoodLogisticsStatus != nil {
            map["returnGoodLogisticsStatus"] = self.returnGoodLogisticsStatus!
        }
        if self.sellerAgreeMsg != nil {
            map["sellerAgreeMsg"] = self.sellerAgreeMsg!
        }
        if self.sellerRefuseAgreementMessage != nil {
            map["sellerRefuseAgreementMessage"] = self.sellerRefuseAgreementMessage!
        }
        if self.sellerRefuseReason != nil {
            map["sellerRefuseReason"] = self.sellerRefuseReason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applyDisputeDesc") && dict["applyDisputeDesc"] != nil {
            self.applyDisputeDesc = dict["applyDisputeDesc"] as! String
        }
        if dict.keys.contains("applyReason") && dict["applyReason"] != nil {
            var model = ApplyReason()
            model.fromMap(dict["applyReason"] as! [String: Any])
            self.applyReason = model
        }
        if dict.keys.contains("bizClaimType") && dict["bizClaimType"] != nil {
            self.bizClaimType = dict["bizClaimType"] as! Int32
        }
        if dict.keys.contains("disputeCreateTime") && dict["disputeCreateTime"] != nil {
            self.disputeCreateTime = dict["disputeCreateTime"] as! String
        }
        if dict.keys.contains("disputeDesc") && dict["disputeDesc"] != nil {
            self.disputeDesc = dict["disputeDesc"] as! String
        }
        if dict.keys.contains("disputeEndTime") && dict["disputeEndTime"] != nil {
            self.disputeEndTime = dict["disputeEndTime"] as! String
        }
        if dict.keys.contains("disputeId") && dict["disputeId"] != nil {
            self.disputeId = dict["disputeId"] as! String
        }
        if dict.keys.contains("disputeStatus") && dict["disputeStatus"] != nil {
            self.disputeStatus = dict["disputeStatus"] as! Int32
        }
        if dict.keys.contains("disputeType") && dict["disputeType"] != nil {
            self.disputeType = dict["disputeType"] as! Int32
        }
        if dict.keys.contains("orderId") && dict["orderId"] != nil {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("orderLineId") && dict["orderLineId"] != nil {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("orderLogisticsStatus") && dict["orderLogisticsStatus"] != nil {
            self.orderLogisticsStatus = dict["orderLogisticsStatus"] as! Int32
        }
        if dict.keys.contains("refundFee") && dict["refundFee"] != nil {
            self.refundFee = dict["refundFee"] as! Int64
        }
        if dict.keys.contains("refundFeeData") && dict["refundFeeData"] != nil {
            var model = RefundFeeData()
            model.fromMap(dict["refundFeeData"] as! [String: Any])
            self.refundFeeData = model
        }
        if dict.keys.contains("refunderAddress") && dict["refunderAddress"] != nil {
            self.refunderAddress = dict["refunderAddress"] as! String
        }
        if dict.keys.contains("refunderName") && dict["refunderName"] != nil {
            self.refunderName = dict["refunderName"] as! String
        }
        if dict.keys.contains("refunderTel") && dict["refunderTel"] != nil {
            self.refunderTel = dict["refunderTel"] as! String
        }
        if dict.keys.contains("refunderZipCode") && dict["refunderZipCode"] != nil {
            self.refunderZipCode = dict["refunderZipCode"] as! String
        }
        if dict.keys.contains("returnGoodLogisticsStatus") && dict["returnGoodLogisticsStatus"] != nil {
            self.returnGoodLogisticsStatus = dict["returnGoodLogisticsStatus"] as! Int32
        }
        if dict.keys.contains("sellerAgreeMsg") && dict["sellerAgreeMsg"] != nil {
            self.sellerAgreeMsg = dict["sellerAgreeMsg"] as! String
        }
        if dict.keys.contains("sellerRefuseAgreementMessage") && dict["sellerRefuseAgreementMessage"] != nil {
            self.sellerRefuseAgreementMessage = dict["sellerRefuseAgreementMessage"] as! String
        }
        if dict.keys.contains("sellerRefuseReason") && dict["sellerRefuseReason"] != nil {
            self.sellerRefuseReason = dict["sellerRefuseReason"] as! String
        }
    }
}

public class Shop : Tea.TeaModel {
    public var channelSupplierId: String?

    public var distributorId: String?

    public var endDate: String?

    public var shopId: String?

    public var shopName: String?

    public var shopType: String?

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
            map["channelSupplierId"] = self.channelSupplierId!
        }
        if self.distributorId != nil {
            map["distributorId"] = self.distributorId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.shopName != nil {
            map["shopName"] = self.shopName!
        }
        if self.shopType != nil {
            map["shopType"] = self.shopType!
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
        if dict.keys.contains("channelSupplierId") && dict["channelSupplierId"] != nil {
            self.channelSupplierId = dict["channelSupplierId"] as! String
        }
        if dict.keys.contains("distributorId") && dict["distributorId"] != nil {
            self.distributorId = dict["distributorId"] as! String
        }
        if dict.keys.contains("endDate") && dict["endDate"] != nil {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopName") && dict["shopName"] != nil {
            self.shopName = dict["shopName"] as! String
        }
        if dict.keys.contains("shopType") && dict["shopType"] != nil {
            self.shopType = dict["shopType"] as! String
        }
        if dict.keys.contains("startDate") && dict["startDate"] != nil {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
    }
}

public class ShopPageDataResult : Tea.TeaModel {
    public var channelSupplierId: String?

    public var endDate: String?

    public var shopId: String?

    public var shopName: String?

    public var shopType: String?

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
            map["channelSupplierId"] = self.channelSupplierId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.shopName != nil {
            map["shopName"] = self.shopName!
        }
        if self.shopType != nil {
            map["shopType"] = self.shopType!
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
        if dict.keys.contains("channelSupplierId") && dict["channelSupplierId"] != nil {
            self.channelSupplierId = dict["channelSupplierId"] as! String
        }
        if dict.keys.contains("endDate") && dict["endDate"] != nil {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopName") && dict["shopName"] != nil {
            self.shopName = dict["shopName"] as! String
        }
        if dict.keys.contains("shopType") && dict["shopType"] != nil {
            self.shopType = dict["shopType"] as! String
        }
        if dict.keys.contains("startDate") && dict["startDate"] != nil {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
    }
}

public class ShopPageResult : Tea.TeaModel {
    public var requestId: String?

    public var shopList: [ShopPageDataResult]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.shopList != nil {
            var tmp : [Any] = []
            for k in self.shopList! {
                tmp.append(k.toMap())
            }
            map["shopList"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("shopList") && dict["shopList"] != nil {
            var tmp : [ShopPageDataResult] = []
            for v in dict["shopList"] as! [Any] {
                var model = ShopPageDataResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.shopList = tmp
        }
        if dict.keys.contains("total") && dict["total"] != nil {
            self.total = dict["total"] as! Int32
        }
    }
}

public class Sku : Tea.TeaModel {
    public var canSell: Bool?

    public var divisionCode: String?

    public var fuzzyQuantity: String?

    public var markPrice: Int64?

    public var picUrl: String?

    public var platformPrice: Int64?

    public var price: Int64?

    public var productId: String?

    public var quantity: Int64?

    public var shopId: String?

    public var skuId: String?

    public var skuSpecs: [SkuSpec]?

    public var skuSpecsCode: String?

    public var skuStatus: String?

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
        if self.canSell != nil {
            map["canSell"] = self.canSell!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        if self.fuzzyQuantity != nil {
            map["fuzzyQuantity"] = self.fuzzyQuantity!
        }
        if self.markPrice != nil {
            map["markPrice"] = self.markPrice!
        }
        if self.picUrl != nil {
            map["picUrl"] = self.picUrl!
        }
        if self.platformPrice != nil {
            map["platformPrice"] = self.platformPrice!
        }
        if self.price != nil {
            map["price"] = self.price!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        if self.skuSpecs != nil {
            var tmp : [Any] = []
            for k in self.skuSpecs! {
                tmp.append(k.toMap())
            }
            map["skuSpecs"] = tmp
        }
        if self.skuSpecsCode != nil {
            map["skuSpecsCode"] = self.skuSpecsCode!
        }
        if self.skuStatus != nil {
            map["skuStatus"] = self.skuStatus!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("canSell") && dict["canSell"] != nil {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("fuzzyQuantity") && dict["fuzzyQuantity"] != nil {
            self.fuzzyQuantity = dict["fuzzyQuantity"] as! String
        }
        if dict.keys.contains("markPrice") && dict["markPrice"] != nil {
            self.markPrice = dict["markPrice"] as! Int64
        }
        if dict.keys.contains("picUrl") && dict["picUrl"] != nil {
            self.picUrl = dict["picUrl"] as! String
        }
        if dict.keys.contains("platformPrice") && dict["platformPrice"] != nil {
            self.platformPrice = dict["platformPrice"] as! Int64
        }
        if dict.keys.contains("price") && dict["price"] != nil {
            self.price = dict["price"] as! Int64
        }
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("quantity") && dict["quantity"] != nil {
            self.quantity = dict["quantity"] as! Int64
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skuId") && dict["skuId"] != nil {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuSpecs") && dict["skuSpecs"] != nil {
            var tmp : [SkuSpec] = []
            for v in dict["skuSpecs"] as! [Any] {
                var model = SkuSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.skuSpecs = tmp
        }
        if dict.keys.contains("skuSpecsCode") && dict["skuSpecsCode"] != nil {
            self.skuSpecsCode = dict["skuSpecsCode"] as! String
        }
        if dict.keys.contains("skuStatus") && dict["skuStatus"] != nil {
            self.skuStatus = dict["skuStatus"] as! String
        }
        if dict.keys.contains("title") && dict["title"] != nil {
            self.title = dict["title"] as! String
        }
    }
}

public class SkuQueryParam : Tea.TeaModel {
    public var productId: String?

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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("skuId") && dict["skuId"] != nil {
            self.skuId = dict["skuId"] as! String
        }
    }
}

public class SkuSaleInfo : Tea.TeaModel {
    public var canSell: Bool?

    public var divisionCode: String?

    public var fuzzyQuantity: String?

    public var markPrice: Int64?

    public var price: Int64?

    public var productId: String?

    public var quantity: Int64?

    public var shopId: String?

    public var skuId: String?

    public var skuStatus: String?

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
        if self.canSell != nil {
            map["canSell"] = self.canSell!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        if self.fuzzyQuantity != nil {
            map["fuzzyQuantity"] = self.fuzzyQuantity!
        }
        if self.markPrice != nil {
            map["markPrice"] = self.markPrice!
        }
        if self.price != nil {
            map["price"] = self.price!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        if self.skuStatus != nil {
            map["skuStatus"] = self.skuStatus!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("canSell") && dict["canSell"] != nil {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("fuzzyQuantity") && dict["fuzzyQuantity"] != nil {
            self.fuzzyQuantity = dict["fuzzyQuantity"] as! String
        }
        if dict.keys.contains("markPrice") && dict["markPrice"] != nil {
            self.markPrice = dict["markPrice"] as! Int64
        }
        if dict.keys.contains("price") && dict["price"] != nil {
            self.price = dict["price"] as! Int64
        }
        if dict.keys.contains("productId") && dict["productId"] != nil {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("quantity") && dict["quantity"] != nil {
            self.quantity = dict["quantity"] as! Int64
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skuId") && dict["skuId"] != nil {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuStatus") && dict["skuStatus"] != nil {
            self.skuStatus = dict["skuStatus"] as! String
        }
        if dict.keys.contains("title") && dict["title"] != nil {
            self.title = dict["title"] as! String
        }
    }
}

public class SkuSaleInfoListQuery : Tea.TeaModel {
    public var distributorShopId: String?

    public var divisionCode: String?

    public var skuQueryParams: [SkuQueryParam]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorShopId != nil {
            map["distributorShopId"] = self.distributorShopId!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        if self.skuQueryParams != nil {
            var tmp : [Any] = []
            for k in self.skuQueryParams! {
                tmp.append(k.toMap())
            }
            map["skuQueryParams"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("distributorShopId") && dict["distributorShopId"] != nil {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("skuQueryParams") && dict["skuQueryParams"] != nil {
            var tmp : [SkuQueryParam] = []
            for v in dict["skuQueryParams"] as! [Any] {
                var model = SkuQueryParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.skuQueryParams = tmp
        }
    }
}

public class SkuSaleInfoListResult : Tea.TeaModel {
    public var requestId: String?

    public var skuSaleInfos: [SkuSaleInfo]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.skuSaleInfos != nil {
            var tmp : [Any] = []
            for k in self.skuSaleInfos! {
                tmp.append(k.toMap())
            }
            map["skuSaleInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("skuSaleInfos") && dict["skuSaleInfos"] != nil {
            var tmp : [SkuSaleInfo] = []
            for v in dict["skuSaleInfos"] as! [Any] {
                var model = SkuSaleInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.skuSaleInfos = tmp
        }
    }
}

public class SkuSpec : Tea.TeaModel {
    public var key: String?

    public var keyId: Int64?

    public var value: String?

    public var valueId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.keyId != nil {
            map["keyId"] = self.keyId!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.valueId != nil {
            map["valueId"] = self.valueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") && dict["key"] != nil {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("keyId") && dict["keyId"] != nil {
            self.keyId = dict["keyId"] as! Int64
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("valueId") && dict["valueId"] != nil {
            self.valueId = dict["valueId"] as! Int64
        }
    }
}

public class CancelRefundOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundOrderResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundOrderResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmDisburseRequest : Tea.TeaModel {
    public var body: ConfirmDisburseCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ConfirmDisburseCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmDisburseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmDisburseResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ConfirmDisburseResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGoodsShippingNoticeRequest : Tea.TeaModel {
    public var body: GoodsShippingNoticeCreateCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GoodsShippingNoticeCreateCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGoodsShippingNoticeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GoodsShippingNoticeCreateResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GoodsShippingNoticeCreateResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePurchaseOrderRequest : Tea.TeaModel {
    public var body: PurchaseOrderCreateCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PurchaseOrderCreateCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePurchaseOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurchaseOrderCreateResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PurchaseOrderCreateResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRefundOrderRequest : Tea.TeaModel {
    public var body: RefundOrderCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundOrderCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRefundOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundOrderResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundOrderResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OrderResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OrderResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductRequest : Tea.TeaModel {
    public var distributorShopId: String?

    public var divisionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorShopId != nil {
            map["distributorShopId"] = self.distributorShopId!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("distributorShopId") && dict["distributorShopId"] != nil {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
    }
}

public class GetProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Product?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Product()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductSaleInfoRequest : Tea.TeaModel {
    public var distributorShopId: String?

    public var divisionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributorShopId != nil {
            map["distributorShopId"] = self.distributorShopId!
        }
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("distributorShopId") && dict["distributorShopId"] != nil {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("divisionCode") && dict["divisionCode"] != nil {
            self.divisionCode = dict["divisionCode"] as! String
        }
    }
}

public class GetProductSaleInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProductSaleInfo?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ProductSaleInfo()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPurchaseOrderStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurchaseOrderStatusResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PurchaseOrderStatusResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRefundOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetShopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Shop?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Shop()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLogisticsOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogisticsOrderListResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = LogisticsOrderListResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductGeneralBillsRequest : Tea.TeaModel {
    public var body: GeneralBillPageQuery?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GeneralBillPageQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductGeneralBillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GeneralBillPageResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GeneralBillPageResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductSaleInfosRequest : Tea.TeaModel {
    public var body: ProductSaleInfoListQuery?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ProductSaleInfoListQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductSaleInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProductSaleInfoListResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ProductSaleInfoListResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
    public var distributorShopId: String?

    public var pageNumber: Int32?

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
        if self.distributorShopId != nil {
            map["distributorShopId"] = self.distributorShopId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("distributorShopId") && dict["distributorShopId"] != nil {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProductPageResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ProductPageResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListShopsRequest : Tea.TeaModel {
    public var channelSupplierId: String?

    public var endDate: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var shopId: String?

    public var shopName: String?

    public var startDate: String?

    public override init() {
        super.init()
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
            map["channelSupplierId"] = self.channelSupplierId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.shopName != nil {
            map["shopName"] = self.shopName!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channelSupplierId") && dict["channelSupplierId"] != nil {
            self.channelSupplierId = dict["channelSupplierId"] as! String
        }
        if dict.keys.contains("endDate") && dict["endDate"] != nil {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("shopId") && dict["shopId"] != nil {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopName") && dict["shopName"] != nil {
            self.shopName = dict["shopName"] as! String
        }
        if dict.keys.contains("startDate") && dict["startDate"] != nil {
            self.startDate = dict["startDate"] as! String
        }
    }
}

public class ListShopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ShopPageResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ShopPageResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSkuSaleInfosRequest : Tea.TeaModel {
    public var body: SkuSaleInfoListQuery?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SkuSaleInfoListQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSkuSaleInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SkuSaleInfoListResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SkuSaleInfoListResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryChildDivisionCodeRequest : Tea.TeaModel {
    public var body: DivisionQuery?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DivisionQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryChildDivisionCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DivisionPageResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DivisionPageResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOrdersRequest : Tea.TeaModel {
    public var body: OrderPageQuery?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OrderPageQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OrderListResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OrderListResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenderPurchaseOrderRequest : Tea.TeaModel {
    public var body: PurchaseOrderRenderQuery?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PurchaseOrderRenderQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenderPurchaseOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurchaseOrderRenderResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PurchaseOrderRenderResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenderRefundOrderRequest : Tea.TeaModel {
    public var body: RefundRenderCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundRenderCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenderRefundOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundRenderResult?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundRenderResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
