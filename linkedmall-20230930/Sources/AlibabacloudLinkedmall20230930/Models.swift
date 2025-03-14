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
        if dict.keys.contains("addressDetail") {
            self.addressDetail = dict["addressDetail"] as! String
        }
        if dict.keys.contains("addressId") {
            self.addressId = dict["addressId"] as! Int64
        }
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("receiver") {
            self.receiver = dict["receiver"] as! String
        }
        if dict.keys.contains("receiverPhone") {
            self.receiverPhone = dict["receiverPhone"] as! String
        }
        if dict.keys.contains("townDivisionCode") {
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
        if dict.keys.contains("reasonTextId") {
            self.reasonTextId = dict["reasonTextId"] as! Int64
        }
        if dict.keys.contains("reasonTips") {
            self.reasonTips = dict["reasonTips"] as! String
        }
    }
}

public class Category : Tea.TeaModel {
    public var categoryId: Int64?

    public var isLeaf: Bool?

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
        if self.isLeaf != nil {
            map["isLeaf"] = self.isLeaf!
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
        if dict.keys.contains("categoryId") {
            self.categoryId = dict["categoryId"] as! Int64
        }
        if dict.keys.contains("isLeaf") {
            self.isLeaf = dict["isLeaf"] as! Bool
        }
        if dict.keys.contains("level") {
            self.level = dict["level"] as! Int32
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! Int64
        }
    }
}

public class CategoryListQuery : Tea.TeaModel {
    public var categoryIds: [Int64]?

    public var parentCategoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryIds != nil {
            map["categoryIds"] = self.categoryIds!
        }
        if self.parentCategoryId != nil {
            map["parentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("categoryIds") {
            self.categoryIds = dict["categoryIds"] as! [Int64]
        }
        if dict.keys.contains("parentCategoryId") {
            self.parentCategoryId = dict["parentCategoryId"] as! Int64
        }
    }
}

public class CategoryListResult : Tea.TeaModel {
    public var categories: [Category]?

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
        if self.categories != nil {
            var tmp : [Any] = []
            for k in self.categories! {
                tmp.append(k.toMap())
            }
            map["categories"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("categories") {
            var tmp : [Category] = []
            for v in dict["categories"] as! [Any] {
                var model = Category()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.categories = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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
        if dict.keys.contains("orderId") {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("purchaseOrderId") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! String
        }
    }
}

public class CooperationShop : Tea.TeaModel {
    public var cooperationCompanyId: String?

    public var cooperationShopId: String?

    public var shopId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cooperationCompanyId != nil {
            map["cooperationCompanyId"] = self.cooperationCompanyId!
        }
        if self.cooperationShopId != nil {
            map["cooperationShopId"] = self.cooperationShopId!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cooperationCompanyId") {
            self.cooperationCompanyId = dict["cooperationCompanyId"] as! String
        }
        if dict.keys.contains("cooperationShopId") {
            self.cooperationShopId = dict["cooperationShopId"] as! String
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
    }
}

public class CreateAliPayUrlRequest : Tea.TeaModel {
    public var shopId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
    }
}

public class CreateAliPayUrlResult : Tea.TeaModel {
    public var accountId: String?

    public var memberId: String?

    public var zftWithholdSignUrl: String?

    public override init() {
        super.init()
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
        if self.memberId != nil {
            map["memberId"] = self.memberId!
        }
        if self.zftWithholdSignUrl != nil {
            map["zftWithholdSignUrl"] = self.zftWithholdSignUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("memberId") {
            self.memberId = dict["memberId"] as! String
        }
        if dict.keys.contains("zftWithholdSignUrl") {
            self.zftWithholdSignUrl = dict["zftWithholdSignUrl"] as! String
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
        if dict.keys.contains("displayName") {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("postFee") {
            self.postFee = dict["postFee"] as! Int64
        }
        if dict.keys.contains("serviceType") {
            self.serviceType = dict["serviceType"] as! Int64
        }
    }
}

public class DistributeProductCommand : Tea.TeaModel {
    public var lmShopId: String?

    public var products: [DistributionProduct]?

    public var requestId: String?

    public var requestTime: String?

    public var requestUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lmShopId != nil {
            map["lmShopId"] = self.lmShopId!
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
        if self.requestTime != nil {
            map["requestTime"] = self.requestTime!
        }
        if self.requestUser != nil {
            map["requestUser"] = self.requestUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("lmShopId") {
            self.lmShopId = dict["lmShopId"] as! String
        }
        if dict.keys.contains("products") {
            var tmp : [DistributionProduct] = []
            for v in dict["products"] as! [Any] {
                var model = DistributionProduct()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("requestTime") {
            self.requestTime = dict["requestTime"] as! String
        }
        if dict.keys.contains("requestUser") {
            self.requestUser = dict["requestUser"] as! String
        }
    }
}

public class DistributeProductResult : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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
        if dict.keys.contains("maxRefundFee") {
            self.maxRefundFee = dict["maxRefundFee"] as! Int64
        }
        if dict.keys.contains("minRefundFee") {
            self.minRefundFee = dict["minRefundFee"] as! Int64
        }
    }
}

public class DistributionProduct : Tea.TeaModel {
    public var categoryChain: String?

    public var categoryLeafId: Int64?

    public var categoryLeafName: String?

    public var channelCode: String?

    public var distributeStatus: String?

    public var picUrl: String?

    public var productId: String?

    public var sellerId: String?

    public var shortTitle: String?

    public var skus: [DistributionSku]?

    public var title: String?

    public var whiteBackgroundPicUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryChain != nil {
            map["categoryChain"] = self.categoryChain!
        }
        if self.categoryLeafId != nil {
            map["categoryLeafId"] = self.categoryLeafId!
        }
        if self.categoryLeafName != nil {
            map["categoryLeafName"] = self.categoryLeafName!
        }
        if self.channelCode != nil {
            map["channelCode"] = self.channelCode!
        }
        if self.distributeStatus != nil {
            map["distributeStatus"] = self.distributeStatus!
        }
        if self.picUrl != nil {
            map["picUrl"] = self.picUrl!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.sellerId != nil {
            map["sellerId"] = self.sellerId!
        }
        if self.shortTitle != nil {
            map["shortTitle"] = self.shortTitle!
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
        if self.whiteBackgroundPicUrl != nil {
            map["whiteBackgroundPicUrl"] = self.whiteBackgroundPicUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("categoryChain") {
            self.categoryChain = dict["categoryChain"] as! String
        }
        if dict.keys.contains("categoryLeafId") {
            self.categoryLeafId = dict["categoryLeafId"] as! Int64
        }
        if dict.keys.contains("categoryLeafName") {
            self.categoryLeafName = dict["categoryLeafName"] as! String
        }
        if dict.keys.contains("channelCode") {
            self.channelCode = dict["channelCode"] as! String
        }
        if dict.keys.contains("distributeStatus") {
            self.distributeStatus = dict["distributeStatus"] as! String
        }
        if dict.keys.contains("picUrl") {
            self.picUrl = dict["picUrl"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("sellerId") {
            self.sellerId = dict["sellerId"] as! String
        }
        if dict.keys.contains("shortTitle") {
            self.shortTitle = dict["shortTitle"] as! String
        }
        if dict.keys.contains("skus") {
            var tmp : [DistributionSku] = []
            for v in dict["skus"] as! [Any] {
                var model = DistributionSku()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.skus = tmp
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("whiteBackgroundPicUrl") {
            self.whiteBackgroundPicUrl = dict["whiteBackgroundPicUrl"] as! String
        }
    }
}

public class DistributionSku : Tea.TeaModel {
    public var aliasTitle: String?

    public var barCode: String?

    public var creditPeriod: Int32?

    public var dxPrice: Int64?

    public var hasCredit: Bool?

    public var hasInvoice: Bool?

    public var jxPrice: Int64?

    public var picUrl: String?

    public var quantity: Int32?

    public var skuId: String?

    public var skuStatus: String?

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
        if self.aliasTitle != nil {
            map["aliasTitle"] = self.aliasTitle!
        }
        if self.barCode != nil {
            map["barCode"] = self.barCode!
        }
        if self.creditPeriod != nil {
            map["creditPeriod"] = self.creditPeriod!
        }
        if self.dxPrice != nil {
            map["dxPrice"] = self.dxPrice!
        }
        if self.hasCredit != nil {
            map["hasCredit"] = self.hasCredit!
        }
        if self.hasInvoice != nil {
            map["hasInvoice"] = self.hasInvoice!
        }
        if self.jxPrice != nil {
            map["jxPrice"] = self.jxPrice!
        }
        if self.picUrl != nil {
            map["picUrl"] = self.picUrl!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        if self.skuStatus != nil {
            map["skuStatus"] = self.skuStatus!
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
        if dict.keys.contains("aliasTitle") {
            self.aliasTitle = dict["aliasTitle"] as! String
        }
        if dict.keys.contains("barCode") {
            self.barCode = dict["barCode"] as! String
        }
        if dict.keys.contains("creditPeriod") {
            self.creditPeriod = dict["creditPeriod"] as! Int32
        }
        if dict.keys.contains("dxPrice") {
            self.dxPrice = dict["dxPrice"] as! Int64
        }
        if dict.keys.contains("hasCredit") {
            self.hasCredit = dict["hasCredit"] as! Bool
        }
        if dict.keys.contains("hasInvoice") {
            self.hasInvoice = dict["hasInvoice"] as! Bool
        }
        if dict.keys.contains("jxPrice") {
            self.jxPrice = dict["jxPrice"] as! Int64
        }
        if dict.keys.contains("picUrl") {
            self.picUrl = dict["picUrl"] as! String
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int32
        }
        if dict.keys.contains("skuId") {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuStatus") {
            self.skuStatus = dict["skuStatus"] as! String
        }
        if dict.keys.contains("taxCode") {
            self.taxCode = dict["taxCode"] as! String
        }
        if dict.keys.contains("taxRate") {
            self.taxRate = dict["taxRate"] as! Int32
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
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
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! Int64
        }
        if dict.keys.contains("divisionLevel") {
            self.divisionLevel = dict["divisionLevel"] as! Int64
        }
        if dict.keys.contains("divisionName") {
            self.divisionName = dict["divisionName"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! Int64
        }
        if dict.keys.contains("pinyin") {
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
        if dict.keys.contains("divisionList") {
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
        if dict.keys.contains("requestId") {
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
        if dict.keys.contains("divisionCode") {
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
        if dict.keys.contains("billId") {
            self.billId = dict["billId"] as! String
        }
        if dict.keys.contains("billPeriod") {
            self.billPeriod = dict["billPeriod"] as! String
        }
        if dict.keys.contains("downloadUrl") {
            self.downloadUrl = dict["downloadUrl"] as! [String]
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("gmtCreate") {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopName") {
            self.shopName = dict["shopName"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("totalAmount") {
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
        if dict.keys.contains("asc") {
            self.asc = dict["asc"] as! Bool
        }
        if dict.keys.contains("billId") {
            self.billId = dict["billId"] as! String
        }
        if dict.keys.contains("billPeriod") {
            self.billPeriod = dict["billPeriod"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("orderBy") {
            self.orderBy = dict["orderBy"] as! String
        }
        if dict.keys.contains("orderDirection") {
            self.orderDirection = dict["orderDirection"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("start") {
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
        if dict.keys.contains("generalBills") {
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
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
        }
    }
}

public class GetDistributionProductResult : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var products: [DistributionProduct]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("products") {
            var tmp : [DistributionProduct] = []
            for v in dict["products"] as! [Any] {
                var model = DistributionProduct()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class Good : Tea.TeaModel {
    public var goodName: String?

    public var productId: String?

    public var quantity: Int32?

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
        if self.goodName != nil {
            map["goodName"] = self.goodName!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
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
        if dict.keys.contains("goodName") {
            self.goodName = dict["goodName"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int32
        }
        if dict.keys.contains("skuId") {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuTitle") {
            self.skuTitle = dict["skuTitle"] as! String
        }
    }
}

public class GoodsShippingNoticeCreateCmd : Tea.TeaModel {
    public var cpCode: String?

    public var disputeId: String?

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
        if dict.keys.contains("cpCode") {
            self.cpCode = dict["cpCode"] as! String
        }
        if dict.keys.contains("disputeId") {
            self.disputeId = dict["disputeId"] as! String
        }
        if dict.keys.contains("logisticsNo") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
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
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("picture") {
            self.picture = dict["picture"] as! String
        }
    }
}

public class LimitRule : Tea.TeaModel {
    public var beginTime: Int64?

    public var condcase: String?

    public var endTime: Int64?

    public var limitNum: Int32?

    public var ruleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["beginTime"] = self.beginTime!
        }
        if self.condcase != nil {
            map["condcase"] = self.condcase!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.limitNum != nil {
            map["limitNum"] = self.limitNum!
        }
        if self.ruleType != nil {
            map["ruleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("beginTime") {
            self.beginTime = dict["beginTime"] as! Int64
        }
        if dict.keys.contains("condcase") {
            self.condcase = dict["condcase"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("limitNum") {
            self.limitNum = dict["limitNum"] as! Int32
        }
        if dict.keys.contains("ruleType") {
            self.ruleType = dict["ruleType"] as! String
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
        if dict.keys.contains("ocurrTimeStr") {
            self.ocurrTimeStr = dict["ocurrTimeStr"] as! String
        }
        if dict.keys.contains("standerdDesc") {
            self.standerdDesc = dict["standerdDesc"] as! String
        }
    }
}

public class LogisticsInformationData : Tea.TeaModel {
    public var logisticsStatus: String?

    public var modifiedTime: String?

    public var orderId: String?

    public var orderLineId: String?

    public var outerPurchaseOrderId: String?

    public var purchaserId: String?

    public var trackingCompanyCode: String?

    public var trackingCompanyName: String?

    public var trackingNumber: String?

    public override init() {
        super.init()
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
        if self.modifiedTime != nil {
            map["modifiedTime"] = self.modifiedTime!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.orderLineId != nil {
            map["orderLineId"] = self.orderLineId!
        }
        if self.outerPurchaseOrderId != nil {
            map["outerPurchaseOrderId"] = self.outerPurchaseOrderId!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        if self.trackingCompanyCode != nil {
            map["trackingCompanyCode"] = self.trackingCompanyCode!
        }
        if self.trackingCompanyName != nil {
            map["trackingCompanyName"] = self.trackingCompanyName!
        }
        if self.trackingNumber != nil {
            map["trackingNumber"] = self.trackingNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logisticsStatus") {
            self.logisticsStatus = dict["logisticsStatus"] as! String
        }
        if dict.keys.contains("modifiedTime") {
            self.modifiedTime = dict["modifiedTime"] as! String
        }
        if dict.keys.contains("orderId") {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("orderLineId") {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("outerPurchaseOrderId") {
            self.outerPurchaseOrderId = dict["outerPurchaseOrderId"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
        if dict.keys.contains("trackingCompanyCode") {
            self.trackingCompanyCode = dict["trackingCompanyCode"] as! String
        }
        if dict.keys.contains("trackingCompanyName") {
            self.trackingCompanyName = dict["trackingCompanyName"] as! String
        }
        if dict.keys.contains("trackingNumber") {
            self.trackingNumber = dict["trackingNumber"] as! String
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
        if dict.keys.contains("logisticsOrderList") {
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
        if dict.keys.contains("requestId") {
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
        if dict.keys.contains("dataProvider") {
            self.dataProvider = dict["dataProvider"] as! String
        }
        if dict.keys.contains("dataProviderTitle") {
            self.dataProviderTitle = dict["dataProviderTitle"] as! String
        }
        if dict.keys.contains("goods") {
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
        if dict.keys.contains("logisticsCompanyCode") {
            self.logisticsCompanyCode = dict["logisticsCompanyCode"] as! String
        }
        if dict.keys.contains("logisticsCompanyName") {
            self.logisticsCompanyName = dict["logisticsCompanyName"] as! String
        }
        if dict.keys.contains("logisticsDetailList") {
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
        if dict.keys.contains("mailNo") {
            self.mailNo = dict["mailNo"] as! String
        }
    }
}

public class MemberAccountRequest : Tea.TeaModel {
    public var shopId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
    }
}

public class MemberAccountResult : Tea.TeaModel {
    public var accountNo: [String]?

    public var shopId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountNo != nil {
            map["accountNo"] = self.accountNo!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountNo") {
            self.accountNo = dict["accountNo"] as! [String]
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
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
            if dict.keys.contains("currencyCode") {
                self.currencyCode = dict["currencyCode"] as! String
            }
            if dict.keys.contains("defaultFractionDigits") {
                self.defaultFractionDigits = dict["defaultFractionDigits"] as! Int32
            }
            if dict.keys.contains("displayName") {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("numericCode") {
                self.numericCode = dict["numericCode"] as! Int32
            }
            if dict.keys.contains("symbol") {
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
        if dict.keys.contains("amount") {
            self.amount = dict["amount"] as! Int64
        }
        if dict.keys.contains("amountAsString") {
            self.amountAsString = dict["amountAsString"] as! String
        }
        if dict.keys.contains("amountString") {
            self.amountString = dict["amountString"] as! String
        }
        if dict.keys.contains("cent") {
            self.cent = dict["cent"] as! Int64
        }
        if dict.keys.contains("currency") {
            var model = Money.Currency()
            model.fromMap(dict["currency"] as! [String: Any])
            self.currency = model
        }
        if dict.keys.contains("currencyCode") {
            self.currencyCode = dict["currencyCode"] as! String
        }
        if dict.keys.contains("positive") {
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

    public var payFee: Int64?

    public var productId: String?

    public var productPic: String?

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
        if self.payFee != nil {
            map["payFee"] = self.payFee!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productPic != nil {
            map["productPic"] = self.productPic!
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
        if dict.keys.contains("logisticsStatus") {
            self.logisticsStatus = dict["logisticsStatus"] as! String
        }
        if dict.keys.contains("number") {
            self.number = dict["number"] as! String
        }
        if dict.keys.contains("orderId") {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("orderLineId") {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("orderLineStatus") {
            self.orderLineStatus = dict["orderLineStatus"] as! String
        }
        if dict.keys.contains("payFee") {
            self.payFee = dict["payFee"] as! Int64
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productPic") {
            self.productPic = dict["productPic"] as! String
        }
        if dict.keys.contains("productTitle") {
            self.productTitle = dict["productTitle"] as! String
        }
        if dict.keys.contains("skuId") {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuTitle") {
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
        if dict.keys.contains("orderList") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") {
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
        if dict.keys.contains("orderIdList") {
            self.orderIdList = dict["orderIdList"] as! [String]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("purchaseOrderId") {
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

    public var purchaserId: String?

    public var quantity: Int32?

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
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
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
        if dict.keys.contains("canSell") {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("features") {
            self.features = dict["features"] as! [String: Any]
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("price") {
            self.price = dict["price"] as! Int64
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productPicUrl") {
            self.productPicUrl = dict["productPicUrl"] as! String
        }
        if dict.keys.contains("productTitle") {
            self.productTitle = dict["productTitle"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int32
        }
        if dict.keys.contains("skuId") {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuTitle") {
            self.skuTitle = dict["skuTitle"] as! String
        }
    }
}

public class OrderRenderProductDTO : Tea.TeaModel {
    public var productId: String?

    public var purchaserId: String?

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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int32
        }
        if dict.keys.contains("skuId") {
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
        if dict.keys.contains("canSell") {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("deliveryInfoList") {
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
        if dict.keys.contains("extInfo") {
            self.extInfo = dict["extInfo"] as! [String: Any]
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("productList") {
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

    public var orderAmount: Int64?

    public var orderClosedReason: String?

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
        if self.orderClosedReason != nil {
            map["orderClosedReason"] = self.orderClosedReason!
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
        if dict.keys.contains("createDate") {
            self.createDate = dict["createDate"] as! String
        }
        if dict.keys.contains("distributorId") {
            self.distributorId = dict["distributorId"] as! String
        }
        if dict.keys.contains("logisticsStatus") {
            self.logisticsStatus = dict["logisticsStatus"] as! String
        }
        if dict.keys.contains("orderAmount") {
            self.orderAmount = dict["orderAmount"] as! Int64
        }
        if dict.keys.contains("orderClosedReason") {
            self.orderClosedReason = dict["orderClosedReason"] as! String
        }
        if dict.keys.contains("orderId") {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("orderLineList") {
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
        if dict.keys.contains("orderStatus") {
            self.orderStatus = dict["orderStatus"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class Product : Tea.TeaModel {
    public var brandName: String?

    public var canSell: Bool?

    public var categoryChain: [Category]?

    public var categoryLeafId: Int64?

    public var descPath: String?

    public var divisionCode: String?

    public var extendProperties: [ProductExtendProperty]?

    public var fuzzyQuantity: String?

    public var images: [String]?

    public var inGroup: Bool?

    public var limitRules: [LimitRule]?

    public var lmItemId: String?

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
        if self.brandName != nil {
            map["brandName"] = self.brandName!
        }
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
        if self.extendProperties != nil {
            var tmp : [Any] = []
            for k in self.extendProperties! {
                tmp.append(k.toMap())
            }
            map["extendProperties"] = tmp
        }
        if self.fuzzyQuantity != nil {
            map["fuzzyQuantity"] = self.fuzzyQuantity!
        }
        if self.images != nil {
            map["images"] = self.images!
        }
        if self.inGroup != nil {
            map["inGroup"] = self.inGroup!
        }
        if self.limitRules != nil {
            var tmp : [Any] = []
            for k in self.limitRules! {
                tmp.append(k.toMap())
            }
            map["limitRules"] = tmp
        }
        if self.lmItemId != nil {
            map["lmItemId"] = self.lmItemId!
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
        if dict.keys.contains("brandName") {
            self.brandName = dict["brandName"] as! String
        }
        if dict.keys.contains("canSell") {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("categoryChain") {
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
        if dict.keys.contains("categoryLeafId") {
            self.categoryLeafId = dict["categoryLeafId"] as! Int64
        }
        if dict.keys.contains("descPath") {
            self.descPath = dict["descPath"] as! String
        }
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("extendProperties") {
            var tmp : [ProductExtendProperty] = []
            for v in dict["extendProperties"] as! [Any] {
                var model = ProductExtendProperty()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.extendProperties = tmp
        }
        if dict.keys.contains("fuzzyQuantity") {
            self.fuzzyQuantity = dict["fuzzyQuantity"] as! String
        }
        if dict.keys.contains("images") {
            self.images = dict["images"] as! [String]
        }
        if dict.keys.contains("inGroup") {
            self.inGroup = dict["inGroup"] as! Bool
        }
        if dict.keys.contains("limitRules") {
            var tmp : [LimitRule] = []
            for v in dict["limitRules"] as! [Any] {
                var model = LimitRule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.limitRules = tmp
        }
        if dict.keys.contains("lmItemId") {
            self.lmItemId = dict["lmItemId"] as! String
        }
        if dict.keys.contains("picUrl") {
            self.picUrl = dict["picUrl"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productSpecs") {
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
        if dict.keys.contains("productStatus") {
            self.productStatus = dict["productStatus"] as! String
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! String
        }
        if dict.keys.contains("properties") {
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
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skus") {
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
        if dict.keys.contains("soldQuantity") {
            self.soldQuantity = dict["soldQuantity"] as! String
        }
        if dict.keys.contains("taxCode") {
            self.taxCode = dict["taxCode"] as! String
        }
        if dict.keys.contains("taxRate") {
            self.taxRate = dict["taxRate"] as! Int32
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class ProductDTO : Tea.TeaModel {
    public var price: Int64?

    public var productId: String?

    public var purchaserId: String?

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
        if self.price != nil {
            map["price"] = self.price!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("price") {
            self.price = dict["price"] as! Int64
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int32
        }
        if dict.keys.contains("skuId") {
            self.skuId = dict["skuId"] as! String
        }
    }
}

public class ProductExtendProperty : Tea.TeaModel {
    public var key: String?

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
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
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
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("products") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") {
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
        if dict.keys.contains("fundAmountMoney") {
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
        if dict.keys.contains("text") {
            self.text = dict["text"] as! String
        }
        if dict.keys.contains("values") {
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
        if dict.keys.contains("distributorShopId") {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
    }
}

public class ProductSaleInfo : Tea.TeaModel {
    public var canSell: Bool?

    public var divisionCode: String?

    public var fuzzyQuantity: String?

    public var limitRules: [LimitRule]?

    public var lmItemId: String?

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
        if self.limitRules != nil {
            var tmp : [Any] = []
            for k in self.limitRules! {
                tmp.append(k.toMap())
            }
            map["limitRules"] = tmp
        }
        if self.lmItemId != nil {
            map["lmItemId"] = self.lmItemId!
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
        if dict.keys.contains("canSell") {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("fuzzyQuantity") {
            self.fuzzyQuantity = dict["fuzzyQuantity"] as! String
        }
        if dict.keys.contains("limitRules") {
            var tmp : [LimitRule] = []
            for v in dict["limitRules"] as! [Any] {
                var model = LimitRule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.limitRules = tmp
        }
        if dict.keys.contains("lmItemId") {
            self.lmItemId = dict["lmItemId"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productStatus") {
            self.productStatus = dict["productStatus"] as! String
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skus") {
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
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class ProductSaleInfoListQuery : Tea.TeaModel {
    public var divisionCode: String?

    public var productIds: [String]?

    public var purchaserId: String?

    public override init() {
        super.init()
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
        if self.productIds != nil {
            map["productIds"] = self.productIds!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("productIds") {
            self.productIds = dict["productIds"] as! [String]
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
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
        if dict.keys.contains("productSaleInfos") {
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
        if dict.keys.contains("requestId") {
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
        if dict.keys.contains("distributorShopId") {
            self.distributorShopId = dict["distributorShopId"] as! String
        }
        if dict.keys.contains("divisionCode") {
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
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("keyId") {
            self.keyId = dict["keyId"] as! Int64
        }
        if dict.keys.contains("values") {
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

    public var valueAlias: String?

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
        if self.valueAlias != nil {
            map["valueAlias"] = self.valueAlias!
        }
        if self.valueId != nil {
            map["valueId"] = self.valueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("valueAlias") {
            self.valueAlias = dict["valueAlias"] as! String
        }
        if dict.keys.contains("valueId") {
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
        if dict.keys.contains("buyerId") {
            self.buyerId = dict["buyerId"] as! String
        }
        if dict.keys.contains("deliveryAddress") {
            var model = AddressInfo()
            model.fromMap(dict["deliveryAddress"] as! [String: Any])
            self.deliveryAddress = model
        }
        if dict.keys.contains("extInfo") {
            self.extInfo = dict["extInfo"] as! [String: Any]
        }
        if dict.keys.contains("outerPurchaseOrderId") {
            self.outerPurchaseOrderId = dict["outerPurchaseOrderId"] as! String
        }
        if dict.keys.contains("productList") {
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
        if dict.keys.contains("purchaseOrderId") {
            self.purchaseOrderId = dict["purchaseOrderId"] as! String
        }
        if dict.keys.contains("requestId") {
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
        if dict.keys.contains("buyerId") {
            self.buyerId = dict["buyerId"] as! String
        }
        if dict.keys.contains("deliveryAddress") {
            var model = AddressInfo()
            model.fromMap(dict["deliveryAddress"] as! [String: Any])
            self.deliveryAddress = model
        }
        if dict.keys.contains("extInfo") {
            self.extInfo = dict["extInfo"] as! [String: Any]
        }
        if dict.keys.contains("productList") {
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
        if dict.keys.contains("addressList") {
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
        if dict.keys.contains("canSell") {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("extInfo") {
            self.extInfo = dict["extInfo"] as! [String: Any]
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("orderList") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("unsellableOrderList") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
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
        if dict.keys.contains("maxRefundFee") {
            self.maxRefundFee = dict["maxRefundFee"] as! Int64
        }
        if dict.keys.contains("minRefundFee") {
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
        if dict.keys.contains("applyReasonTextId") {
            self.applyReasonTextId = dict["applyReasonTextId"] as! Int64
        }
        if dict.keys.contains("applyReasonTips") {
            self.applyReasonTips = dict["applyReasonTips"] as! String
        }
        if dict.keys.contains("applyRefundCount") {
            self.applyRefundCount = dict["applyRefundCount"] as! Int32
        }
        if dict.keys.contains("applyRefundFee") {
            self.applyRefundFee = dict["applyRefundFee"] as! Int64
        }
        if dict.keys.contains("bizClaimType") {
            self.bizClaimType = dict["bizClaimType"] as! Int32
        }
        if dict.keys.contains("goodsStatus") {
            self.goodsStatus = dict["goodsStatus"] as! Int32
        }
        if dict.keys.contains("leaveMessage") {
            self.leaveMessage = dict["leaveMessage"] as! String
        }
        if dict.keys.contains("leavePictureLists") {
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
        if dict.keys.contains("orderLineId") {
            self.orderLineId = dict["orderLineId"] as! String
        }
    }
}

public class RefundOrderResult : Tea.TeaModel {
    public var disputeId: String?

    public var disputeStatus: Int32?

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
        if self.orderLineId != nil {
            map["orderLineId"] = self.orderLineId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("disputeId") {
            self.disputeId = dict["disputeId"] as! String
        }
        if dict.keys.contains("disputeStatus") {
            self.disputeStatus = dict["disputeStatus"] as! Int32
        }
        if dict.keys.contains("orderLineId") {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("requestId") {
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
        if dict.keys.contains("proofRequired") {
            self.proofRequired = dict["proofRequired"] as! Bool
        }
        if dict.keys.contains("reasonTextId") {
            self.reasonTextId = dict["reasonTextId"] as! String
        }
        if dict.keys.contains("reasonTips") {
            self.reasonTips = dict["reasonTips"] as! String
        }
        if dict.keys.contains("refundDescRequired") {
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
        if dict.keys.contains("bizClaimType") {
            self.bizClaimType = dict["bizClaimType"] as! Int32
        }
        if dict.keys.contains("goodsStatus") {
            self.goodsStatus = dict["goodsStatus"] as! Int32
        }
        if dict.keys.contains("orderLineId") {
            self.orderLineId = dict["orderLineId"] as! String
        }
    }
}

public class RefundRenderResult : Tea.TeaModel {
    public var bizClaimType: Int32?

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
        if dict.keys.contains("bizClaimType") {
            self.bizClaimType = dict["bizClaimType"] as! Int32
        }
        if dict.keys.contains("maxRefundFeeData") {
            var model = DistributionMaxRefundFee()
            model.fromMap(dict["maxRefundFeeData"] as! [String: Any])
            self.maxRefundFeeData = model
        }
        if dict.keys.contains("orderLineId") {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("refundReasonList") {
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
        if dict.keys.contains("requestId") {
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

    public var orderId: String?

    public var orderLineId: String?

    public var orderLogisticsStatus: Int32?

    public var refundFee: Int64?

    public var refundFeeData: RefundFeeData?

    public var refunderAddress: String?

    public var refunderName: String?

    public var refunderTel: String?

    public var refunderZipCode: String?

    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
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
        if dict.keys.contains("applyDisputeDesc") {
            self.applyDisputeDesc = dict["applyDisputeDesc"] as! String
        }
        if dict.keys.contains("applyReason") {
            var model = ApplyReason()
            model.fromMap(dict["applyReason"] as! [String: Any])
            self.applyReason = model
        }
        if dict.keys.contains("bizClaimType") {
            self.bizClaimType = dict["bizClaimType"] as! Int32
        }
        if dict.keys.contains("disputeCreateTime") {
            self.disputeCreateTime = dict["disputeCreateTime"] as! String
        }
        if dict.keys.contains("disputeDesc") {
            self.disputeDesc = dict["disputeDesc"] as! String
        }
        if dict.keys.contains("disputeEndTime") {
            self.disputeEndTime = dict["disputeEndTime"] as! String
        }
        if dict.keys.contains("disputeId") {
            self.disputeId = dict["disputeId"] as! String
        }
        if dict.keys.contains("disputeStatus") {
            self.disputeStatus = dict["disputeStatus"] as! Int32
        }
        if dict.keys.contains("orderId") {
            self.orderId = dict["orderId"] as! String
        }
        if dict.keys.contains("orderLineId") {
            self.orderLineId = dict["orderLineId"] as! String
        }
        if dict.keys.contains("orderLogisticsStatus") {
            self.orderLogisticsStatus = dict["orderLogisticsStatus"] as! Int32
        }
        if dict.keys.contains("refundFee") {
            self.refundFee = dict["refundFee"] as! Int64
        }
        if dict.keys.contains("refundFeeData") {
            var model = RefundFeeData()
            model.fromMap(dict["refundFeeData"] as! [String: Any])
            self.refundFeeData = model
        }
        if dict.keys.contains("refunderAddress") {
            self.refunderAddress = dict["refunderAddress"] as! String
        }
        if dict.keys.contains("refunderName") {
            self.refunderName = dict["refunderName"] as! String
        }
        if dict.keys.contains("refunderTel") {
            self.refunderTel = dict["refunderTel"] as! String
        }
        if dict.keys.contains("refunderZipCode") {
            self.refunderZipCode = dict["refunderZipCode"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("returnGoodLogisticsStatus") {
            self.returnGoodLogisticsStatus = dict["returnGoodLogisticsStatus"] as! Int32
        }
        if dict.keys.contains("sellerAgreeMsg") {
            self.sellerAgreeMsg = dict["sellerAgreeMsg"] as! String
        }
        if dict.keys.contains("sellerRefuseAgreementMessage") {
            self.sellerRefuseAgreementMessage = dict["sellerRefuseAgreementMessage"] as! String
        }
        if dict.keys.contains("sellerRefuseReason") {
            self.sellerRefuseReason = dict["sellerRefuseReason"] as! String
        }
    }
}

public class Shop : Tea.TeaModel {
    public var cooperationShops: [CooperationShop]?

    public var distributorId: String?

    public var endDate: String?

    public var purchaserId: String?

    public var requestId: String?

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
        if self.cooperationShops != nil {
            var tmp : [Any] = []
            for k in self.cooperationShops! {
                tmp.append(k.toMap())
            }
            map["cooperationShops"] = tmp
        }
        if self.distributorId != nil {
            map["distributorId"] = self.distributorId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
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
        if dict.keys.contains("cooperationShops") {
            var tmp : [CooperationShop] = []
            for v in dict["cooperationShops"] as! [Any] {
                var model = CooperationShop()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cooperationShops = tmp
        }
        if dict.keys.contains("distributorId") {
            self.distributorId = dict["distributorId"] as! String
        }
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopName") {
            self.shopName = dict["shopName"] as! String
        }
        if dict.keys.contains("shopType") {
            self.shopType = dict["shopType"] as! String
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ShopCreateRequest : Tea.TeaModel {
    public var afterSaleDingTalkId: String?

    public var description_: String?

    public var operatorDingTalkId: String?

    public var preSaleDingTalkId: String?

    public var shopName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.afterSaleDingTalkId != nil {
            map["afterSaleDingTalkId"] = self.afterSaleDingTalkId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.operatorDingTalkId != nil {
            map["operatorDingTalkId"] = self.operatorDingTalkId!
        }
        if self.preSaleDingTalkId != nil {
            map["preSaleDingTalkId"] = self.preSaleDingTalkId!
        }
        if self.shopName != nil {
            map["shopName"] = self.shopName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("afterSaleDingTalkId") {
            self.afterSaleDingTalkId = dict["afterSaleDingTalkId"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("operatorDingTalkId") {
            self.operatorDingTalkId = dict["operatorDingTalkId"] as! String
        }
        if dict.keys.contains("preSaleDingTalkId") {
            self.preSaleDingTalkId = dict["preSaleDingTalkId"] as! String
        }
        if dict.keys.contains("shopName") {
            self.shopName = dict["shopName"] as! String
        }
    }
}

public class ShopCreateResult : Tea.TeaModel {
    public var shopId: String?

    public var shopStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.shopStatus != nil {
            map["shopStatus"] = self.shopStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopStatus") {
            self.shopStatus = dict["shopStatus"] as! String
        }
    }
}

public class ShopPageDataResult : Tea.TeaModel {
    public var cooperationShops: [CooperationShop]?

    public var endDate: String?

    public var purchaserId: String?

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
        if self.cooperationShops != nil {
            var tmp : [Any] = []
            for k in self.cooperationShops! {
                tmp.append(k.toMap())
            }
            map["cooperationShops"] = tmp
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
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
        if dict.keys.contains("cooperationShops") {
            var tmp : [CooperationShop] = []
            for v in dict["cooperationShops"] as! [Any] {
                var model = CooperationShop()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cooperationShops = tmp
        }
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopName") {
            self.shopName = dict["shopName"] as! String
        }
        if dict.keys.contains("shopType") {
            self.shopType = dict["shopType"] as! String
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("status") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("shopList") {
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
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
        }
    }
}

public class ShopStatusChangeRequest : Tea.TeaModel {
    public var shopId: String?

    public var shopStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.shopStatus != nil {
            map["shopStatus"] = self.shopStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("shopStatus") {
            self.shopStatus = dict["shopStatus"] as! String
        }
    }
}

public class ShopStatusChangeResult : Tea.TeaModel {
    public var operate: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operate != nil {
            map["operate"] = self.operate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("operate") {
            self.operate = dict["operate"] as! Bool
        }
    }
}

public class Sku : Tea.TeaModel {
    public var barcode: String?

    public var canSell: Bool?

    public var discountRetailPrice: Int64?

    public var divisionCode: String?

    public var fuzzyQuantity: String?

    public var markPrice: Int64?

    public var picUrl: String?

    public var platformPrice: Int64?

    public var price: Int64?

    public var productId: String?

    public var quantity: Int64?

    public var rankValue: Int64?

    public var shopId: String?

    public var skuAlias: String?

    public var skuId: String?

    public var skuSpecs: [SkuSpec]?

    public var skuSpecsCode: String?

    public var skuStatus: String?

    public var suggestedRetailPrice: Int64?

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
        if self.barcode != nil {
            map["barcode"] = self.barcode!
        }
        if self.canSell != nil {
            map["canSell"] = self.canSell!
        }
        if self.discountRetailPrice != nil {
            map["discountRetailPrice"] = self.discountRetailPrice!
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
        if self.rankValue != nil {
            map["rankValue"] = self.rankValue!
        }
        if self.shopId != nil {
            map["shopId"] = self.shopId!
        }
        if self.skuAlias != nil {
            map["skuAlias"] = self.skuAlias!
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
        if self.suggestedRetailPrice != nil {
            map["suggestedRetailPrice"] = self.suggestedRetailPrice!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("barcode") {
            self.barcode = dict["barcode"] as! String
        }
        if dict.keys.contains("canSell") {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("discountRetailPrice") {
            self.discountRetailPrice = dict["discountRetailPrice"] as! Int64
        }
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("fuzzyQuantity") {
            self.fuzzyQuantity = dict["fuzzyQuantity"] as! String
        }
        if dict.keys.contains("markPrice") {
            self.markPrice = dict["markPrice"] as! Int64
        }
        if dict.keys.contains("picUrl") {
            self.picUrl = dict["picUrl"] as! String
        }
        if dict.keys.contains("platformPrice") {
            self.platformPrice = dict["platformPrice"] as! Int64
        }
        if dict.keys.contains("price") {
            self.price = dict["price"] as! Int64
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int64
        }
        if dict.keys.contains("rankValue") {
            self.rankValue = dict["rankValue"] as! Int64
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skuAlias") {
            self.skuAlias = dict["skuAlias"] as! String
        }
        if dict.keys.contains("skuId") {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuSpecs") {
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
        if dict.keys.contains("skuSpecsCode") {
            self.skuSpecsCode = dict["skuSpecsCode"] as! String
        }
        if dict.keys.contains("skuStatus") {
            self.skuStatus = dict["skuStatus"] as! String
        }
        if dict.keys.contains("suggestedRetailPrice") {
            self.suggestedRetailPrice = dict["suggestedRetailPrice"] as! Int64
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class SkuQueryParam : Tea.TeaModel {
    public var buyAmount: Int32?

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
        if self.buyAmount != nil {
            map["buyAmount"] = self.buyAmount!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.skuId != nil {
            map["skuId"] = self.skuId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buyAmount") {
            self.buyAmount = dict["buyAmount"] as! Int32
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("skuId") {
            self.skuId = dict["skuId"] as! String
        }
    }
}

public class SkuSaleInfo : Tea.TeaModel {
    public var canNotSellReason: String?

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
        if self.canNotSellReason != nil {
            map["canNotSellReason"] = self.canNotSellReason!
        }
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
        if dict.keys.contains("canNotSellReason") {
            self.canNotSellReason = dict["canNotSellReason"] as! String
        }
        if dict.keys.contains("canSell") {
            self.canSell = dict["canSell"] as! Bool
        }
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("fuzzyQuantity") {
            self.fuzzyQuantity = dict["fuzzyQuantity"] as! String
        }
        if dict.keys.contains("markPrice") {
            self.markPrice = dict["markPrice"] as! Int64
        }
        if dict.keys.contains("price") {
            self.price = dict["price"] as! Int64
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Int64
        }
        if dict.keys.contains("shopId") {
            self.shopId = dict["shopId"] as! String
        }
        if dict.keys.contains("skuId") {
            self.skuId = dict["skuId"] as! String
        }
        if dict.keys.contains("skuStatus") {
            self.skuStatus = dict["skuStatus"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class SkuSaleInfoListQuery : Tea.TeaModel {
    public var divisionCode: String?

    public var purchaserId: String?

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
        if self.divisionCode != nil {
            map["divisionCode"] = self.divisionCode!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
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
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
        if dict.keys.contains("skuQueryParams") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("skuSaleInfos") {
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

    public var valueAlias: String?

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
        if self.valueAlias != nil {
            map["valueAlias"] = self.valueAlias!
        }
        if self.valueId != nil {
            map["valueId"] = self.valueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("keyId") {
            self.keyId = dict["keyId"] as! Int64
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("valueAlias") {
            self.valueAlias = dict["valueAlias"] as! String
        }
        if dict.keys.contains("valueId") {
            self.valueId = dict["valueId"] as! Int64
        }
    }
}

public class StopDistributionCommand : Tea.TeaModel {
    public var lmShopId: String?

    public var productId: String?

    public var requestId: String?

    public var requestTime: String?

    public var requestUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lmShopId != nil {
            map["lmShopId"] = self.lmShopId!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.requestTime != nil {
            map["requestTime"] = self.requestTime!
        }
        if self.requestUser != nil {
            map["requestUser"] = self.requestUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("lmShopId") {
            self.lmShopId = dict["lmShopId"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("requestTime") {
            self.requestTime = dict["requestTime"] as! String
        }
        if dict.keys.contains("requestUser") {
            self.requestUser = dict["requestUser"] as! String
        }
    }
}

public class StopDistributionResult : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var products: [DistributionProduct]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("products") {
            var tmp : [DistributionProduct] = []
            for v in dict["products"] as! [Any] {
                var model = DistributionProduct()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("body") {
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
            var model = OrderResult()
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
            var model = PurchaseOrderStatusResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPurchaserShopResponse : Tea.TeaModel {
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
            var model = Shop()
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
            var model = RefundResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSelectionProductRequest : Tea.TeaModel {
    public var divisionCode: String?

    public var purchaserId: String?

    public override init() {
        super.init()
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
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
    }
}

public class GetSelectionProductResponse : Tea.TeaModel {
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
            var model = Product()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSelectionProductSaleInfoRequest : Tea.TeaModel {
    public var divisionCode: String?

    public var purchaserId: String?

    public override init() {
        super.init()
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
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("divisionCode") {
            self.divisionCode = dict["divisionCode"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
    }
}

public class GetSelectionProductSaleInfoResponse : Tea.TeaModel {
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
            var model = ProductSaleInfo()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCategoriesRequest : Tea.TeaModel {
    public var body: CategoryListQuery?

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
        if dict.keys.contains("body") {
            var model = CategoryListQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CategoryListResult?

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
            var model = CategoryListResult()
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
            var model = LogisticsOrderListResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPurchaserShopsRequest : Tea.TeaModel {
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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListPurchaserShopsResponse : Tea.TeaModel {
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
            var model = ShopPageResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSelectionProductSaleInfosRequest : Tea.TeaModel {
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
        if dict.keys.contains("body") {
            var model = ProductSaleInfoListQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSelectionProductSaleInfosResponse : Tea.TeaModel {
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
            var model = ProductSaleInfoListResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSelectionProductsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var purchaserId: String?

    public override init() {
        super.init()
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
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
    }
}

public class ListSelectionProductsResponse : Tea.TeaModel {
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
            var model = ProductPageResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSelectionSkuSaleInfosRequest : Tea.TeaModel {
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
        if dict.keys.contains("body") {
            var model = SkuSaleInfoListQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSelectionSkuSaleInfosResponse : Tea.TeaModel {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("body") {
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
            var model = RefundRenderResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchProductsRequest : Tea.TeaModel {
    public var brandName: String?

    public var categoryIds: [String]?

    public var createEndTime: String?

    public var createStartTime: String?

    public var distributionHighPrice: Int64?

    public var distributionHighPriceRatio: Int64?

    public var distributionLowPrice: Int64?

    public var distributionLowPriceRatio: Int64?

    public var highMarkPrice: Int64?

    public var highPrice: Int64?

    public var inGroup: Bool?

    public var inGroupEndTime: String?

    public var inGroupStartTime: String?

    public var inventoryRiskLevel: String?

    public var lmItemId: String?

    public var lowMarkPrice: Int64?

    public var lowPrice: Int64?

    public var modifyEndTime: String?

    public var modifyStartTime: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platform: String?

    public var productId: String?

    public var productName: String?

    public var productStatus: String?

    public var purchaserId: String?

    public var taxRate: String?

    public var tradeModeAndCredit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brandName != nil {
            map["brandName"] = self.brandName!
        }
        if self.categoryIds != nil {
            map["categoryIds"] = self.categoryIds!
        }
        if self.createEndTime != nil {
            map["createEndTime"] = self.createEndTime!
        }
        if self.createStartTime != nil {
            map["createStartTime"] = self.createStartTime!
        }
        if self.distributionHighPrice != nil {
            map["distributionHighPrice"] = self.distributionHighPrice!
        }
        if self.distributionHighPriceRatio != nil {
            map["distributionHighPriceRatio"] = self.distributionHighPriceRatio!
        }
        if self.distributionLowPrice != nil {
            map["distributionLowPrice"] = self.distributionLowPrice!
        }
        if self.distributionLowPriceRatio != nil {
            map["distributionLowPriceRatio"] = self.distributionLowPriceRatio!
        }
        if self.highMarkPrice != nil {
            map["highMarkPrice"] = self.highMarkPrice!
        }
        if self.highPrice != nil {
            map["highPrice"] = self.highPrice!
        }
        if self.inGroup != nil {
            map["inGroup"] = self.inGroup!
        }
        if self.inGroupEndTime != nil {
            map["inGroupEndTime"] = self.inGroupEndTime!
        }
        if self.inGroupStartTime != nil {
            map["inGroupStartTime"] = self.inGroupStartTime!
        }
        if self.inventoryRiskLevel != nil {
            map["inventoryRiskLevel"] = self.inventoryRiskLevel!
        }
        if self.lmItemId != nil {
            map["lmItemId"] = self.lmItemId!
        }
        if self.lowMarkPrice != nil {
            map["lowMarkPrice"] = self.lowMarkPrice!
        }
        if self.lowPrice != nil {
            map["lowPrice"] = self.lowPrice!
        }
        if self.modifyEndTime != nil {
            map["modifyEndTime"] = self.modifyEndTime!
        }
        if self.modifyStartTime != nil {
            map["modifyStartTime"] = self.modifyStartTime!
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
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.productStatus != nil {
            map["productStatus"] = self.productStatus!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        if self.taxRate != nil {
            map["taxRate"] = self.taxRate!
        }
        if self.tradeModeAndCredit != nil {
            map["tradeModeAndCredit"] = self.tradeModeAndCredit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("brandName") {
            self.brandName = dict["brandName"] as! String
        }
        if dict.keys.contains("categoryIds") {
            self.categoryIds = dict["categoryIds"] as! [String]
        }
        if dict.keys.contains("createEndTime") {
            self.createEndTime = dict["createEndTime"] as! String
        }
        if dict.keys.contains("createStartTime") {
            self.createStartTime = dict["createStartTime"] as! String
        }
        if dict.keys.contains("distributionHighPrice") {
            self.distributionHighPrice = dict["distributionHighPrice"] as! Int64
        }
        if dict.keys.contains("distributionHighPriceRatio") {
            self.distributionHighPriceRatio = dict["distributionHighPriceRatio"] as! Int64
        }
        if dict.keys.contains("distributionLowPrice") {
            self.distributionLowPrice = dict["distributionLowPrice"] as! Int64
        }
        if dict.keys.contains("distributionLowPriceRatio") {
            self.distributionLowPriceRatio = dict["distributionLowPriceRatio"] as! Int64
        }
        if dict.keys.contains("highMarkPrice") {
            self.highMarkPrice = dict["highMarkPrice"] as! Int64
        }
        if dict.keys.contains("highPrice") {
            self.highPrice = dict["highPrice"] as! Int64
        }
        if dict.keys.contains("inGroup") {
            self.inGroup = dict["inGroup"] as! Bool
        }
        if dict.keys.contains("inGroupEndTime") {
            self.inGroupEndTime = dict["inGroupEndTime"] as! String
        }
        if dict.keys.contains("inGroupStartTime") {
            self.inGroupStartTime = dict["inGroupStartTime"] as! String
        }
        if dict.keys.contains("inventoryRiskLevel") {
            self.inventoryRiskLevel = dict["inventoryRiskLevel"] as! String
        }
        if dict.keys.contains("lmItemId") {
            self.lmItemId = dict["lmItemId"] as! String
        }
        if dict.keys.contains("lowMarkPrice") {
            self.lowMarkPrice = dict["lowMarkPrice"] as! Int64
        }
        if dict.keys.contains("lowPrice") {
            self.lowPrice = dict["lowPrice"] as! Int64
        }
        if dict.keys.contains("modifyEndTime") {
            self.modifyEndTime = dict["modifyEndTime"] as! String
        }
        if dict.keys.contains("modifyStartTime") {
            self.modifyStartTime = dict["modifyStartTime"] as! String
        }
        if dict.keys.contains("orderBy") {
            self.orderBy = dict["orderBy"] as! String
        }
        if dict.keys.contains("orderDirection") {
            self.orderDirection = dict["orderDirection"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("platform") {
            self.platform = dict["platform"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productName") {
            self.productName = dict["productName"] as! String
        }
        if dict.keys.contains("productStatus") {
            self.productStatus = dict["productStatus"] as! String
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
        if dict.keys.contains("taxRate") {
            self.taxRate = dict["taxRate"] as! String
        }
        if dict.keys.contains("tradeModeAndCredit") {
            self.tradeModeAndCredit = dict["tradeModeAndCredit"] as! String
        }
    }
}

public class SearchProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public class CategoryChain : Tea.TeaModel {
            public var categoryId: Int64?

            public var level: Bool?

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
                if dict.keys.contains("categoryId") {
                    self.categoryId = dict["categoryId"] as! Int64
                }
                if dict.keys.contains("level") {
                    self.level = dict["level"] as! Bool
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("parentId") {
                    self.parentId = dict["parentId"] as! Int64
                }
            }
        }
        public var bandName: String?

        public var canNotSellReason: String?

        public var canSell: Bool?

        public var categoryChain: [SearchProductsResponseBody.Products.CategoryChain]?

        public var credit: [String]?

        public var diffPrice: String?

        public var distributionPrice: String?

        public var distributionPriceRatio: String?

        public var externalPlatformType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var inGroup: Bool?

        public var inGroupTime: String?

        public var inventoryRiskLevel: String?

        public var invoiceType: String?

        public var lmItemId: String?

        public var picUrl: String?

        public var platformPrice: String?

        public var platformReservePrice: String?

        public var productId: String?

        public var productName: String?

        public var shopName: String?

        public var soldQuantity: String?

        public var taxCode: String?

        public var taxRate: Int64?

        public var tradeMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandName != nil {
                map["bandName"] = self.bandName!
            }
            if self.canNotSellReason != nil {
                map["canNotSellReason"] = self.canNotSellReason!
            }
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
            if self.credit != nil {
                map["credit"] = self.credit!
            }
            if self.diffPrice != nil {
                map["diffPrice"] = self.diffPrice!
            }
            if self.distributionPrice != nil {
                map["distributionPrice"] = self.distributionPrice!
            }
            if self.distributionPriceRatio != nil {
                map["distributionPriceRatio"] = self.distributionPriceRatio!
            }
            if self.externalPlatformType != nil {
                map["externalPlatformType"] = self.externalPlatformType!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.inGroup != nil {
                map["inGroup"] = self.inGroup!
            }
            if self.inGroupTime != nil {
                map["inGroupTime"] = self.inGroupTime!
            }
            if self.inventoryRiskLevel != nil {
                map["inventoryRiskLevel"] = self.inventoryRiskLevel!
            }
            if self.invoiceType != nil {
                map["invoiceType"] = self.invoiceType!
            }
            if self.lmItemId != nil {
                map["lmItemId"] = self.lmItemId!
            }
            if self.picUrl != nil {
                map["picUrl"] = self.picUrl!
            }
            if self.platformPrice != nil {
                map["platformPrice"] = self.platformPrice!
            }
            if self.platformReservePrice != nil {
                map["platformReservePrice"] = self.platformReservePrice!
            }
            if self.productId != nil {
                map["productId"] = self.productId!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.shopName != nil {
                map["shopName"] = self.shopName!
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
            if self.tradeMode != nil {
                map["tradeMode"] = self.tradeMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bandName") {
                self.bandName = dict["bandName"] as! String
            }
            if dict.keys.contains("canNotSellReason") {
                self.canNotSellReason = dict["canNotSellReason"] as! String
            }
            if dict.keys.contains("canSell") {
                self.canSell = dict["canSell"] as! Bool
            }
            if dict.keys.contains("categoryChain") {
                var tmp : [SearchProductsResponseBody.Products.CategoryChain] = []
                for v in dict["categoryChain"] as! [Any] {
                    var model = SearchProductsResponseBody.Products.CategoryChain()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.categoryChain = tmp
            }
            if dict.keys.contains("credit") {
                self.credit = dict["credit"] as! [String]
            }
            if dict.keys.contains("diffPrice") {
                self.diffPrice = dict["diffPrice"] as! String
            }
            if dict.keys.contains("distributionPrice") {
                self.distributionPrice = dict["distributionPrice"] as! String
            }
            if dict.keys.contains("distributionPriceRatio") {
                self.distributionPriceRatio = dict["distributionPriceRatio"] as! String
            }
            if dict.keys.contains("externalPlatformType") {
                self.externalPlatformType = dict["externalPlatformType"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("inGroup") {
                self.inGroup = dict["inGroup"] as! Bool
            }
            if dict.keys.contains("inGroupTime") {
                self.inGroupTime = dict["inGroupTime"] as! String
            }
            if dict.keys.contains("inventoryRiskLevel") {
                self.inventoryRiskLevel = dict["inventoryRiskLevel"] as! String
            }
            if dict.keys.contains("invoiceType") {
                self.invoiceType = dict["invoiceType"] as! String
            }
            if dict.keys.contains("lmItemId") {
                self.lmItemId = dict["lmItemId"] as! String
            }
            if dict.keys.contains("picUrl") {
                self.picUrl = dict["picUrl"] as! String
            }
            if dict.keys.contains("platformPrice") {
                self.platformPrice = dict["platformPrice"] as! String
            }
            if dict.keys.contains("platformReservePrice") {
                self.platformReservePrice = dict["platformReservePrice"] as! String
            }
            if dict.keys.contains("productId") {
                self.productId = dict["productId"] as! String
            }
            if dict.keys.contains("productName") {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("shopName") {
                self.shopName = dict["shopName"] as! String
            }
            if dict.keys.contains("soldQuantity") {
                self.soldQuantity = dict["soldQuantity"] as! String
            }
            if dict.keys.contains("taxCode") {
                self.taxCode = dict["taxCode"] as! String
            }
            if dict.keys.contains("taxRate") {
                self.taxRate = dict["taxRate"] as! Int64
            }
            if dict.keys.contains("tradeMode") {
                self.tradeMode = dict["tradeMode"] as! String
            }
        }
    }
    public var products: [SearchProductsResponseBody.Products]?

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
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["products"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("products") {
            var tmp : [SearchProductsResponseBody.Products] = []
            for v in dict["products"] as! [Any] {
                var model = SearchProductsResponseBody.Products()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
        }
    }
}

public class SearchProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchProductsResponseBody?

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
            var model = SearchProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SelectionGroupAddProductRequest : Tea.TeaModel {
    public var productIds: [String]?

    public var purchaserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productIds != nil {
            map["productIds"] = self.productIds!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productIds") {
            self.productIds = dict["productIds"] as! [String]
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
    }
}

public class SelectionGroupAddProductResponseBody : Tea.TeaModel {
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
        if self.productIds != nil {
            map["productIds"] = self.productIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productIds") {
            self.productIds = dict["productIds"] as! [String]
        }
    }
}

public class SelectionGroupAddProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectionGroupAddProductResponseBody?

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
            var model = SelectionGroupAddProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SelectionGroupRemoveProductRequest : Tea.TeaModel {
    public var productIds: [String]?

    public var purchaserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productIds != nil {
            map["productIds"] = self.productIds!
        }
        if self.purchaserId != nil {
            map["purchaserId"] = self.purchaserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productIds") {
            self.productIds = dict["productIds"] as! [String]
        }
        if dict.keys.contains("purchaserId") {
            self.purchaserId = dict["purchaserId"] as! String
        }
    }
}

public class SelectionGroupRemoveProductResponseBody : Tea.TeaModel {
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
        if self.productIds != nil {
            map["productIds"] = self.productIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productIds") {
            self.productIds = dict["productIds"] as! [String]
        }
    }
}

public class SelectionGroupRemoveProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectionGroupRemoveProductResponseBody?

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
            var model = SelectionGroupRemoveProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SplitPurchaseOrderRequest : Tea.TeaModel {
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
        if dict.keys.contains("body") {
            var model = PurchaseOrderRenderQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SplitPurchaseOrderResponse : Tea.TeaModel {
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
            var model = PurchaseOrderRenderResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
