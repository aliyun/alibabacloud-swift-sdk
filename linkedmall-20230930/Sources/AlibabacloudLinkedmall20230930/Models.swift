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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addressDetail"] as? String {
            self.addressDetail = value
        }
        if let value = dict["addressId"] as? Int64 {
            self.addressId = value
        }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["receiver"] as? String {
            self.receiver = value
        }
        if let value = dict["receiverPhone"] as? String {
            self.receiverPhone = value
        }
        if let value = dict["townDivisionCode"] as? String {
            self.townDivisionCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["reasonTextId"] as? Int64 {
            self.reasonTextId = value
        }
        if let value = dict["reasonTips"] as? String {
            self.reasonTips = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["isLeaf"] as? Bool {
            self.isLeaf = value
        }
        if let value = dict["level"] as? Int32 {
            self.level = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryIds"] as? [Int64] {
            self.categoryIds = value
        }
        if let value = dict["parentCategoryId"] as? Int64 {
            self.parentCategoryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categories"] as? [Any?] {
            var tmp : [Category] = []
            for v in value {
                if v != nil {
                    var model = Category()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.categories = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["orderId"] as? String {
            self.orderId = value
        }
        if let value = dict["purchaseOrderId"] as? String {
            self.purchaseOrderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? String {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cooperationCompanyId"] as? String {
            self.cooperationCompanyId = value
        }
        if let value = dict["cooperationShopId"] as? String {
            self.cooperationShopId = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["shopId"] as? String {
            self.shopId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["memberId"] as? String {
            self.memberId = value
        }
        if let value = dict["zftWithholdSignUrl"] as? String {
            self.zftWithholdSignUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["postFee"] as? Int64 {
            self.postFee = value
        }
        if let value = dict["serviceType"] as? Int64 {
            self.serviceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["lmShopId"] as? String {
            self.lmShopId = value
        }
        if let value = dict["products"] as? [Any?] {
            var tmp : [DistributionProduct] = []
            for v in value {
                if v != nil {
                    var model = DistributionProduct()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["requestTime"] as? String {
            self.requestTime = value
        }
        if let value = dict["requestUser"] as? String {
            self.requestUser = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxRefundFee"] as? Int64 {
            self.maxRefundFee = value
        }
        if let value = dict["minRefundFee"] as? Int64 {
            self.minRefundFee = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryChain"] as? String {
            self.categoryChain = value
        }
        if let value = dict["categoryLeafId"] as? Int64 {
            self.categoryLeafId = value
        }
        if let value = dict["categoryLeafName"] as? String {
            self.categoryLeafName = value
        }
        if let value = dict["channelCode"] as? String {
            self.channelCode = value
        }
        if let value = dict["distributeStatus"] as? String {
            self.distributeStatus = value
        }
        if let value = dict["picUrl"] as? String {
            self.picUrl = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["sellerId"] as? String {
            self.sellerId = value
        }
        if let value = dict["shortTitle"] as? String {
            self.shortTitle = value
        }
        if let value = dict["skus"] as? [Any?] {
            var tmp : [DistributionSku] = []
            for v in value {
                if v != nil {
                    var model = DistributionSku()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skus = tmp
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["whiteBackgroundPicUrl"] as? String {
            self.whiteBackgroundPicUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliasTitle"] as? String {
            self.aliasTitle = value
        }
        if let value = dict["barCode"] as? String {
            self.barCode = value
        }
        if let value = dict["creditPeriod"] as? Int32 {
            self.creditPeriod = value
        }
        if let value = dict["dxPrice"] as? Int64 {
            self.dxPrice = value
        }
        if let value = dict["hasCredit"] as? Bool {
            self.hasCredit = value
        }
        if let value = dict["hasInvoice"] as? Bool {
            self.hasInvoice = value
        }
        if let value = dict["jxPrice"] as? Int64 {
            self.jxPrice = value
        }
        if let value = dict["picUrl"] as? String {
            self.picUrl = value
        }
        if let value = dict["quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
        }
        if let value = dict["skuStatus"] as? String {
            self.skuStatus = value
        }
        if let value = dict["taxCode"] as? String {
            self.taxCode = value
        }
        if let value = dict["taxRate"] as? Int32 {
            self.taxRate = value
        }
        if let value = dict["title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["divisionCode"] as? Int64 {
            self.divisionCode = value
        }
        if let value = dict["divisionLevel"] as? Int64 {
            self.divisionLevel = value
        }
        if let value = dict["divisionName"] as? String {
            self.divisionName = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["pinyin"] as? String {
            self.pinyin = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["divisionList"] as? [Any?] {
            var tmp : [Division] = []
            for v in value {
                if v != nil {
                    var model = Division()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.divisionList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
    }
}

public class EticketInfo : Tea.TeaModel {
    public var availableNum: Int64?

    public var code: String?

    public var codeStatus: Int64?

    public var endTime: String?

    public var lockNum: Int64?

    public var qrcodeUrl: String?

    public var startTime: String?

    public var useTime: String?

    public var usedNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableNum != nil {
            map["availableNum"] = self.availableNum!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.codeStatus != nil {
            map["codeStatus"] = self.codeStatus!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.lockNum != nil {
            map["lockNum"] = self.lockNum!
        }
        if self.qrcodeUrl != nil {
            map["qrcodeUrl"] = self.qrcodeUrl!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.useTime != nil {
            map["useTime"] = self.useTime!
        }
        if self.usedNum != nil {
            map["usedNum"] = self.usedNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["availableNum"] as? Int64 {
            self.availableNum = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["codeStatus"] as? Int64 {
            self.codeStatus = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["lockNum"] as? Int64 {
            self.lockNum = value
        }
        if let value = dict["qrcodeUrl"] as? String {
            self.qrcodeUrl = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["useTime"] as? String {
            self.useTime = value
        }
        if let value = dict["usedNum"] as? Int64 {
            self.usedNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["billId"] as? String {
            self.billId = value
        }
        if let value = dict["billPeriod"] as? String {
            self.billPeriod = value
        }
        if let value = dict["downloadUrl"] as? [String] {
            self.downloadUrl = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["shopName"] as? String {
            self.shopName = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["totalAmount"] as? [String: Any?] {
            var model = Money()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["asc"] as? Bool {
            self.asc = value
        }
        if let value = dict["billId"] as? String {
            self.billId = value
        }
        if let value = dict["billPeriod"] as? String {
            self.billPeriod = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["start"] as? Int32 {
            self.start = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["generalBills"] as? [Any?] {
            var tmp : [GeneralBill] = []
            for v in value {
                if v != nil {
                    var model = GeneralBill()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.generalBills = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["products"] as? [Any?] {
            var tmp : [DistributionProduct] = []
            for v in value {
                if v != nil {
                    var model = DistributionProduct()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["goodName"] as? String {
            self.goodName = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
        }
        if let value = dict["skuTitle"] as? String {
            self.skuTitle = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpCode"] as? String {
            self.cpCode = value
        }
        if let value = dict["disputeId"] as? String {
            self.disputeId = value
        }
        if let value = dict["logisticsNo"] as? String {
            self.logisticsNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? String {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["picture"] as? String {
            self.picture = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["beginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["condcase"] as? String {
            self.condcase = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["limitNum"] as? Int32 {
            self.limitNum = value
        }
        if let value = dict["ruleType"] as? String {
            self.ruleType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ocurrTimeStr"] as? String {
            self.ocurrTimeStr = value
        }
        if let value = dict["standerdDesc"] as? String {
            self.standerdDesc = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logisticsStatus"] as? String {
            self.logisticsStatus = value
        }
        if let value = dict["modifiedTime"] as? String {
            self.modifiedTime = value
        }
        if let value = dict["orderId"] as? String {
            self.orderId = value
        }
        if let value = dict["orderLineId"] as? String {
            self.orderLineId = value
        }
        if let value = dict["outerPurchaseOrderId"] as? String {
            self.outerPurchaseOrderId = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
        }
        if let value = dict["trackingCompanyCode"] as? String {
            self.trackingCompanyCode = value
        }
        if let value = dict["trackingCompanyName"] as? String {
            self.trackingCompanyName = value
        }
        if let value = dict["trackingNumber"] as? String {
            self.trackingNumber = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logisticsOrderList"] as? [Any?] {
            var tmp : [LogisticsOrderResult] = []
            for v in value {
                if v != nil {
                    var model = LogisticsOrderResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logisticsOrderList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataProvider"] as? String {
            self.dataProvider = value
        }
        if let value = dict["dataProviderTitle"] as? String {
            self.dataProviderTitle = value
        }
        if let value = dict["goods"] as? [Any?] {
            var tmp : [Good] = []
            for v in value {
                if v != nil {
                    var model = Good()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.goods = tmp
        }
        if let value = dict["logisticsCompanyCode"] as? String {
            self.logisticsCompanyCode = value
        }
        if let value = dict["logisticsCompanyName"] as? String {
            self.logisticsCompanyName = value
        }
        if let value = dict["logisticsDetailList"] as? [Any?] {
            var tmp : [LogisticsDetail] = []
            for v in value {
                if v != nil {
                    var model = LogisticsDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logisticsDetailList = tmp
        }
        if let value = dict["mailNo"] as? String {
            self.mailNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["shopId"] as? String {
            self.shopId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountNo"] as? [String] {
            self.accountNo = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currencyCode"] as? String {
                self.currencyCode = value
            }
            if let value = dict["defaultFractionDigits"] as? Int32 {
                self.defaultFractionDigits = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["numericCode"] as? Int32 {
                self.numericCode = value
            }
            if let value = dict["symbol"] as? String {
                self.symbol = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["amount"] as? Int64 {
            self.amount = value
        }
        if let value = dict["amountAsString"] as? String {
            self.amountAsString = value
        }
        if let value = dict["amountString"] as? String {
            self.amountString = value
        }
        if let value = dict["cent"] as? Int64 {
            self.cent = value
        }
        if let value = dict["currency"] as? [String: Any?] {
            var model = Money.Currency()
            model.fromMap(value)
            self.currency = model
        }
        if let value = dict["currencyCode"] as? String {
            self.currencyCode = value
        }
        if let value = dict["positive"] as? Bool {
            self.positive = value
        }
    }
}

public class OrderLineResult : Tea.TeaModel {
    public var eticketInfos: [EticketInfo]?

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
        if self.eticketInfos != nil {
            var tmp : [Any] = []
            for k in self.eticketInfos! {
                tmp.append(k.toMap())
            }
            map["eticketInfos"] = tmp
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["eticketInfos"] as? [Any?] {
            var tmp : [EticketInfo] = []
            for v in value {
                if v != nil {
                    var model = EticketInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.eticketInfos = tmp
        }
        if let value = dict["logisticsStatus"] as? String {
            self.logisticsStatus = value
        }
        if let value = dict["number"] as? String {
            self.number = value
        }
        if let value = dict["orderId"] as? String {
            self.orderId = value
        }
        if let value = dict["orderLineId"] as? String {
            self.orderLineId = value
        }
        if let value = dict["orderLineStatus"] as? String {
            self.orderLineStatus = value
        }
        if let value = dict["payFee"] as? Int64 {
            self.payFee = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["productPic"] as? String {
            self.productPic = value
        }
        if let value = dict["productTitle"] as? String {
            self.productTitle = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
        }
        if let value = dict["skuTitle"] as? String {
            self.skuTitle = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["orderList"] as? [Any?] {
            var tmp : [OrderResult] = []
            for v in value {
                if v != nil {
                    var model = OrderResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["orderIdList"] as? [String] {
            self.orderIdList = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["purchaseOrderId"] as? String {
            self.purchaseOrderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["canSell"] as? Bool {
            self.canSell = value
        }
        if let value = dict["features"] as? [String: Any] {
            self.features = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["price"] as? Int64 {
            self.price = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["productPicUrl"] as? String {
            self.productPicUrl = value
        }
        if let value = dict["productTitle"] as? String {
            self.productTitle = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
        }
        if let value = dict["quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
        }
        if let value = dict["skuTitle"] as? String {
            self.skuTitle = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
        }
        if let value = dict["quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["canSell"] as? Bool {
            self.canSell = value
        }
        if let value = dict["deliveryInfoList"] as? [Any?] {
            var tmp : [DeliveryInfo] = []
            for v in value {
                if v != nil {
                    var model = DeliveryInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deliveryInfoList = tmp
        }
        if let value = dict["extInfo"] as? [String: Any] {
            self.extInfo = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["productList"] as? [Any?] {
            var tmp : [OrderProductResult] = []
            for v in value {
                if v != nil {
                    var model = OrderProductResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createDate"] as? String {
            self.createDate = value
        }
        if let value = dict["distributorId"] as? String {
            self.distributorId = value
        }
        if let value = dict["logisticsStatus"] as? String {
            self.logisticsStatus = value
        }
        if let value = dict["orderAmount"] as? Int64 {
            self.orderAmount = value
        }
        if let value = dict["orderClosedReason"] as? String {
            self.orderClosedReason = value
        }
        if let value = dict["orderId"] as? String {
            self.orderId = value
        }
        if let value = dict["orderLineList"] as? [Any?] {
            var tmp : [OrderLineResult] = []
            for v in value {
                if v != nil {
                    var model = OrderLineResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderLineList = tmp
        }
        if let value = dict["orderStatus"] as? String {
            self.orderStatus = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public var servicePromises: [String]?

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
        if self.servicePromises != nil {
            map["servicePromises"] = self.servicePromises!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["brandName"] as? String {
            self.brandName = value
        }
        if let value = dict["canSell"] as? Bool {
            self.canSell = value
        }
        if let value = dict["categoryChain"] as? [Any?] {
            var tmp : [Category] = []
            for v in value {
                if v != nil {
                    var model = Category()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.categoryChain = tmp
        }
        if let value = dict["categoryLeafId"] as? Int64 {
            self.categoryLeafId = value
        }
        if let value = dict["descPath"] as? String {
            self.descPath = value
        }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["extendProperties"] as? [Any?] {
            var tmp : [ProductExtendProperty] = []
            for v in value {
                if v != nil {
                    var model = ProductExtendProperty()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.extendProperties = tmp
        }
        if let value = dict["fuzzyQuantity"] as? String {
            self.fuzzyQuantity = value
        }
        if let value = dict["images"] as? [String] {
            self.images = value
        }
        if let value = dict["inGroup"] as? Bool {
            self.inGroup = value
        }
        if let value = dict["limitRules"] as? [Any?] {
            var tmp : [LimitRule] = []
            for v in value {
                if v != nil {
                    var model = LimitRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.limitRules = tmp
        }
        if let value = dict["lmItemId"] as? String {
            self.lmItemId = value
        }
        if let value = dict["picUrl"] as? String {
            self.picUrl = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["productSpecs"] as? [Any?] {
            var tmp : [ProductSpec] = []
            for v in value {
                if v != nil {
                    var model = ProductSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.productSpecs = tmp
        }
        if let value = dict["productStatus"] as? String {
            self.productStatus = value
        }
        if let value = dict["productType"] as? String {
            self.productType = value
        }
        if let value = dict["properties"] as? [Any?] {
            var tmp : [ProductProperty] = []
            for v in value {
                if v != nil {
                    var model = ProductProperty()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.properties = tmp
        }
        if let value = dict["quantity"] as? Int64 {
            self.quantity = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["servicePromises"] as? [String] {
            self.servicePromises = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["skus"] as? [Any?] {
            var tmp : [Sku] = []
            for v in value {
                if v != nil {
                    var model = Sku()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skus = tmp
        }
        if let value = dict["soldQuantity"] as? String {
            self.soldQuantity = value
        }
        if let value = dict["taxCode"] as? String {
            self.taxCode = value
        }
        if let value = dict["taxRate"] as? Int32 {
            self.taxRate = value
        }
        if let value = dict["title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["price"] as? Int64 {
            self.price = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
        }
        if let value = dict["quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["value"] as? String {
            self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["products"] as? [Any?] {
            var tmp : [Product] = []
            for v in value {
                if v != nil {
                    var model = Product()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fundAmountMoney"] as? String {
            self.fundAmountMoney = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["values"] as? [String] {
            self.values = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["distributorShopId"] as? String {
            self.distributorShopId = value
        }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["canSell"] as? Bool {
            self.canSell = value
        }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["fuzzyQuantity"] as? String {
            self.fuzzyQuantity = value
        }
        if let value = dict["limitRules"] as? [Any?] {
            var tmp : [LimitRule] = []
            for v in value {
                if v != nil {
                    var model = LimitRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.limitRules = tmp
        }
        if let value = dict["lmItemId"] as? String {
            self.lmItemId = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["productStatus"] as? String {
            self.productStatus = value
        }
        if let value = dict["quantity"] as? Int64 {
            self.quantity = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["skus"] as? [Any?] {
            var tmp : [SkuSaleInfo] = []
            for v in value {
                if v != nil {
                    var model = SkuSaleInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skus = tmp
        }
        if let value = dict["title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["productIds"] as? [String] {
            self.productIds = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["productSaleInfos"] as? [Any?] {
            var tmp : [ProductSaleInfo] = []
            for v in value {
                if v != nil {
                    var model = ProductSaleInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.productSaleInfos = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["distributorShopId"] as? String {
            self.distributorShopId = value
        }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["keyId"] as? Int64 {
            self.keyId = value
        }
        if let value = dict["values"] as? [Any?] {
            var tmp : [ProductSpecValue] = []
            for v in value {
                if v != nil {
                    var model = ProductSpecValue()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["value"] as? String {
            self.value = value
        }
        if let value = dict["valueAlias"] as? String {
            self.valueAlias = value
        }
        if let value = dict["valueId"] as? Int64 {
            self.valueId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buyerId"] as? String {
            self.buyerId = value
        }
        if let value = dict["deliveryAddress"] as? [String: Any?] {
            var model = AddressInfo()
            model.fromMap(value)
            self.deliveryAddress = model
        }
        if let value = dict["extInfo"] as? [String: Any] {
            self.extInfo = value
        }
        if let value = dict["outerPurchaseOrderId"] as? String {
            self.outerPurchaseOrderId = value
        }
        if let value = dict["productList"] as? [Any?] {
            var tmp : [ProductDTO] = []
            for v in value {
                if v != nil {
                    var model = ProductDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["purchaseOrderId"] as? String {
            self.purchaseOrderId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buyerId"] as? String {
            self.buyerId = value
        }
        if let value = dict["deliveryAddress"] as? [String: Any?] {
            var model = AddressInfo()
            model.fromMap(value)
            self.deliveryAddress = model
        }
        if let value = dict["extInfo"] as? [String: Any] {
            self.extInfo = value
        }
        if let value = dict["productList"] as? [Any?] {
            var tmp : [OrderRenderProductDTO] = []
            for v in value {
                if v != nil {
                    var model = OrderRenderProductDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addressList"] as? [Any?] {
            var tmp : [AddressInfo] = []
            for v in value {
                if v != nil {
                    var model = AddressInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addressList = tmp
        }
        if let value = dict["canSell"] as? Bool {
            self.canSell = value
        }
        if let value = dict["extInfo"] as? [String: Any] {
            self.extInfo = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["orderList"] as? [Any?] {
            var tmp : [OrderRenderResult] = []
            for v in value {
                if v != nil {
                    var model = OrderRenderResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["unsellableOrderList"] as? [Any?] {
            var tmp : [OrderRenderResult] = []
            for v in value {
                if v != nil {
                    var model = OrderRenderResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxRefundFee"] as? Int64 {
            self.maxRefundFee = value
        }
        if let value = dict["minRefundFee"] as? Int64 {
            self.minRefundFee = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applyReasonTextId"] as? Int64 {
            self.applyReasonTextId = value
        }
        if let value = dict["applyReasonTips"] as? String {
            self.applyReasonTips = value
        }
        if let value = dict["applyRefundCount"] as? Int32 {
            self.applyRefundCount = value
        }
        if let value = dict["applyRefundFee"] as? Int64 {
            self.applyRefundFee = value
        }
        if let value = dict["bizClaimType"] as? Int32 {
            self.bizClaimType = value
        }
        if let value = dict["goodsStatus"] as? Int32 {
            self.goodsStatus = value
        }
        if let value = dict["leaveMessage"] as? String {
            self.leaveMessage = value
        }
        if let value = dict["leavePictureLists"] as? [Any?] {
            var tmp : [LeavePictureList] = []
            for v in value {
                if v != nil {
                    var model = LeavePictureList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.leavePictureLists = tmp
        }
        if let value = dict["orderLineId"] as? String {
            self.orderLineId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["disputeId"] as? String {
            self.disputeId = value
        }
        if let value = dict["disputeStatus"] as? Int32 {
            self.disputeStatus = value
        }
        if let value = dict["orderLineId"] as? String {
            self.orderLineId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["proofRequired"] as? Bool {
            self.proofRequired = value
        }
        if let value = dict["reasonTextId"] as? String {
            self.reasonTextId = value
        }
        if let value = dict["reasonTips"] as? String {
            self.reasonTips = value
        }
        if let value = dict["refundDescRequired"] as? Bool {
            self.refundDescRequired = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizClaimType"] as? Int32 {
            self.bizClaimType = value
        }
        if let value = dict["goodsStatus"] as? Int32 {
            self.goodsStatus = value
        }
        if let value = dict["orderLineId"] as? String {
            self.orderLineId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizClaimType"] as? Int32 {
            self.bizClaimType = value
        }
        if let value = dict["maxRefundFeeData"] as? [String: Any?] {
            var model = DistributionMaxRefundFee()
            model.fromMap(value)
            self.maxRefundFeeData = model
        }
        if let value = dict["orderLineId"] as? String {
            self.orderLineId = value
        }
        if let value = dict["refundReasonList"] as? [Any?] {
            var tmp : [RefundReason] = []
            for v in value {
                if v != nil {
                    var model = RefundReason()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.refundReasonList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applyDisputeDesc"] as? String {
            self.applyDisputeDesc = value
        }
        if let value = dict["applyReason"] as? [String: Any?] {
            var model = ApplyReason()
            model.fromMap(value)
            self.applyReason = model
        }
        if let value = dict["bizClaimType"] as? Int32 {
            self.bizClaimType = value
        }
        if let value = dict["disputeCreateTime"] as? String {
            self.disputeCreateTime = value
        }
        if let value = dict["disputeDesc"] as? String {
            self.disputeDesc = value
        }
        if let value = dict["disputeEndTime"] as? String {
            self.disputeEndTime = value
        }
        if let value = dict["disputeId"] as? String {
            self.disputeId = value
        }
        if let value = dict["disputeStatus"] as? Int32 {
            self.disputeStatus = value
        }
        if let value = dict["orderId"] as? String {
            self.orderId = value
        }
        if let value = dict["orderLineId"] as? String {
            self.orderLineId = value
        }
        if let value = dict["orderLogisticsStatus"] as? Int32 {
            self.orderLogisticsStatus = value
        }
        if let value = dict["refundFee"] as? Int64 {
            self.refundFee = value
        }
        if let value = dict["refundFeeData"] as? [String: Any?] {
            var model = RefundFeeData()
            model.fromMap(value)
            self.refundFeeData = model
        }
        if let value = dict["refunderAddress"] as? String {
            self.refunderAddress = value
        }
        if let value = dict["refunderName"] as? String {
            self.refunderName = value
        }
        if let value = dict["refunderTel"] as? String {
            self.refunderTel = value
        }
        if let value = dict["refunderZipCode"] as? String {
            self.refunderZipCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["returnGoodLogisticsStatus"] as? Int32 {
            self.returnGoodLogisticsStatus = value
        }
        if let value = dict["sellerAgreeMsg"] as? String {
            self.sellerAgreeMsg = value
        }
        if let value = dict["sellerRefuseAgreementMessage"] as? String {
            self.sellerRefuseAgreementMessage = value
        }
        if let value = dict["sellerRefuseReason"] as? String {
            self.sellerRefuseReason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cooperationShops"] as? [Any?] {
            var tmp : [CooperationShop] = []
            for v in value {
                if v != nil {
                    var model = CooperationShop()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cooperationShops = tmp
        }
        if let value = dict["distributorId"] as? String {
            self.distributorId = value
        }
        if let value = dict["endDate"] as? String {
            self.endDate = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["shopName"] as? String {
            self.shopName = value
        }
        if let value = dict["shopType"] as? String {
            self.shopType = value
        }
        if let value = dict["startDate"] as? String {
            self.startDate = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["afterSaleDingTalkId"] as? String {
            self.afterSaleDingTalkId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["operatorDingTalkId"] as? String {
            self.operatorDingTalkId = value
        }
        if let value = dict["preSaleDingTalkId"] as? String {
            self.preSaleDingTalkId = value
        }
        if let value = dict["shopName"] as? String {
            self.shopName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["shopStatus"] as? String {
            self.shopStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cooperationShops"] as? [Any?] {
            var tmp : [CooperationShop] = []
            for v in value {
                if v != nil {
                    var model = CooperationShop()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cooperationShops = tmp
        }
        if let value = dict["endDate"] as? String {
            self.endDate = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["shopName"] as? String {
            self.shopName = value
        }
        if let value = dict["shopType"] as? String {
            self.shopType = value
        }
        if let value = dict["startDate"] as? String {
            self.startDate = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["shopList"] as? [Any?] {
            var tmp : [ShopPageDataResult] = []
            for v in value {
                if v != nil {
                    var model = ShopPageDataResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.shopList = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["shopStatus"] as? String {
            self.shopStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operate"] as? Bool {
            self.operate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["barcode"] as? String {
            self.barcode = value
        }
        if let value = dict["canSell"] as? Bool {
            self.canSell = value
        }
        if let value = dict["discountRetailPrice"] as? Int64 {
            self.discountRetailPrice = value
        }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["fuzzyQuantity"] as? String {
            self.fuzzyQuantity = value
        }
        if let value = dict["markPrice"] as? Int64 {
            self.markPrice = value
        }
        if let value = dict["picUrl"] as? String {
            self.picUrl = value
        }
        if let value = dict["platformPrice"] as? Int64 {
            self.platformPrice = value
        }
        if let value = dict["price"] as? Int64 {
            self.price = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["quantity"] as? Int64 {
            self.quantity = value
        }
        if let value = dict["rankValue"] as? Int64 {
            self.rankValue = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["skuAlias"] as? String {
            self.skuAlias = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
        }
        if let value = dict["skuSpecs"] as? [Any?] {
            var tmp : [SkuSpec] = []
            for v in value {
                if v != nil {
                    var model = SkuSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skuSpecs = tmp
        }
        if let value = dict["skuSpecsCode"] as? String {
            self.skuSpecsCode = value
        }
        if let value = dict["skuStatus"] as? String {
            self.skuStatus = value
        }
        if let value = dict["suggestedRetailPrice"] as? Int64 {
            self.suggestedRetailPrice = value
        }
        if let value = dict["title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buyAmount"] as? Int32 {
            self.buyAmount = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["canNotSellReason"] as? String {
            self.canNotSellReason = value
        }
        if let value = dict["canSell"] as? Bool {
            self.canSell = value
        }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["fuzzyQuantity"] as? String {
            self.fuzzyQuantity = value
        }
        if let value = dict["markPrice"] as? Int64 {
            self.markPrice = value
        }
        if let value = dict["price"] as? Int64 {
            self.price = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["quantity"] as? Int64 {
            self.quantity = value
        }
        if let value = dict["shopId"] as? String {
            self.shopId = value
        }
        if let value = dict["skuId"] as? String {
            self.skuId = value
        }
        if let value = dict["skuStatus"] as? String {
            self.skuStatus = value
        }
        if let value = dict["title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
        }
        if let value = dict["skuQueryParams"] as? [Any?] {
            var tmp : [SkuQueryParam] = []
            for v in value {
                if v != nil {
                    var model = SkuQueryParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skuSaleInfos"] as? [Any?] {
            var tmp : [SkuSaleInfo] = []
            for v in value {
                if v != nil {
                    var model = SkuSaleInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["keyId"] as? Int64 {
            self.keyId = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
        if let value = dict["valueAlias"] as? String {
            self.valueAlias = value
        }
        if let value = dict["valueId"] as? Int64 {
            self.valueId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["lmShopId"] as? String {
            self.lmShopId = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["requestTime"] as? String {
            self.requestTime = value
        }
        if let value = dict["requestUser"] as? String {
            self.requestUser = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["products"] as? [Any?] {
            var tmp : [DistributionProduct] = []
            for v in value {
                if v != nil {
                    var model = DistributionProduct()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefundOrderResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConfirmDisburseCmd()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConfirmDisburseResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = GoodsShippingNoticeCreateCmd()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GoodsShippingNoticeCreateResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurchaseOrderCreateCmd()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurchaseOrderCreateResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefundOrderCmd()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefundOrderResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OrderResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurchaseOrderStatusResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Shop()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefundResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Product()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["divisionCode"] as? String {
            self.divisionCode = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProductSaleInfo()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CategoryListQuery()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CategoryListResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LogisticsOrderListResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ShopPageResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProductSaleInfoListQuery()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProductSaleInfoListResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProductPageResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = SkuSaleInfoListQuery()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SkuSaleInfoListResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = DivisionQuery()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DivisionPageResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = OrderPageQuery()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OrderListResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurchaseOrderRenderQuery()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurchaseOrderRenderResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefundRenderCmd()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefundRenderResult()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["brandName"] as? String {
            self.brandName = value
        }
        if let value = dict["categoryIds"] as? [String] {
            self.categoryIds = value
        }
        if let value = dict["createEndTime"] as? String {
            self.createEndTime = value
        }
        if let value = dict["createStartTime"] as? String {
            self.createStartTime = value
        }
        if let value = dict["distributionHighPrice"] as? Int64 {
            self.distributionHighPrice = value
        }
        if let value = dict["distributionHighPriceRatio"] as? Int64 {
            self.distributionHighPriceRatio = value
        }
        if let value = dict["distributionLowPrice"] as? Int64 {
            self.distributionLowPrice = value
        }
        if let value = dict["distributionLowPriceRatio"] as? Int64 {
            self.distributionLowPriceRatio = value
        }
        if let value = dict["highMarkPrice"] as? Int64 {
            self.highMarkPrice = value
        }
        if let value = dict["highPrice"] as? Int64 {
            self.highPrice = value
        }
        if let value = dict["inGroup"] as? Bool {
            self.inGroup = value
        }
        if let value = dict["inGroupEndTime"] as? String {
            self.inGroupEndTime = value
        }
        if let value = dict["inGroupStartTime"] as? String {
            self.inGroupStartTime = value
        }
        if let value = dict["inventoryRiskLevel"] as? String {
            self.inventoryRiskLevel = value
        }
        if let value = dict["lmItemId"] as? String {
            self.lmItemId = value
        }
        if let value = dict["lowMarkPrice"] as? Int64 {
            self.lowMarkPrice = value
        }
        if let value = dict["lowPrice"] as? Int64 {
            self.lowPrice = value
        }
        if let value = dict["modifyEndTime"] as? String {
            self.modifyEndTime = value
        }
        if let value = dict["modifyStartTime"] as? String {
            self.modifyStartTime = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["platform"] as? String {
            self.platform = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["productName"] as? String {
            self.productName = value
        }
        if let value = dict["productStatus"] as? String {
            self.productStatus = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
        }
        if let value = dict["taxRate"] as? String {
            self.taxRate = value
        }
        if let value = dict["tradeModeAndCredit"] as? String {
            self.tradeModeAndCredit = value
        }
    }
}

public class SearchProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public class CategoryChain : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["categoryId"] as? Int64 {
                    self.categoryId = value
                }
                if let value = dict["isLeaf"] as? Bool {
                    self.isLeaf = value
                }
                if let value = dict["level"] as? Int32 {
                    self.level = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parentId"] as? Int64 {
                    self.parentId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bandName"] as? String {
                self.bandName = value
            }
            if let value = dict["canNotSellReason"] as? String {
                self.canNotSellReason = value
            }
            if let value = dict["canSell"] as? Bool {
                self.canSell = value
            }
            if let value = dict["categoryChain"] as? [Any?] {
                var tmp : [SearchProductsResponseBody.Products.CategoryChain] = []
                for v in value {
                    if v != nil {
                        var model = SearchProductsResponseBody.Products.CategoryChain()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.categoryChain = tmp
            }
            if let value = dict["credit"] as? [String] {
                self.credit = value
            }
            if let value = dict["diffPrice"] as? String {
                self.diffPrice = value
            }
            if let value = dict["distributionPrice"] as? String {
                self.distributionPrice = value
            }
            if let value = dict["distributionPriceRatio"] as? String {
                self.distributionPriceRatio = value
            }
            if let value = dict["externalPlatformType"] as? String {
                self.externalPlatformType = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["inGroup"] as? Bool {
                self.inGroup = value
            }
            if let value = dict["inGroupTime"] as? String {
                self.inGroupTime = value
            }
            if let value = dict["inventoryRiskLevel"] as? String {
                self.inventoryRiskLevel = value
            }
            if let value = dict["invoiceType"] as? String {
                self.invoiceType = value
            }
            if let value = dict["lmItemId"] as? String {
                self.lmItemId = value
            }
            if let value = dict["picUrl"] as? String {
                self.picUrl = value
            }
            if let value = dict["platformPrice"] as? String {
                self.platformPrice = value
            }
            if let value = dict["platformReservePrice"] as? String {
                self.platformReservePrice = value
            }
            if let value = dict["productId"] as? String {
                self.productId = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["shopName"] as? String {
                self.shopName = value
            }
            if let value = dict["soldQuantity"] as? String {
                self.soldQuantity = value
            }
            if let value = dict["taxCode"] as? String {
                self.taxCode = value
            }
            if let value = dict["taxRate"] as? Int64 {
                self.taxRate = value
            }
            if let value = dict["tradeMode"] as? String {
                self.tradeMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["products"] as? [Any?] {
            var tmp : [SearchProductsResponseBody.Products] = []
            for v in value {
                if v != nil {
                    var model = SearchProductsResponseBody.Products()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchProductsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["productIds"] as? [String] {
            self.productIds = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["productIds"] as? [String] {
            self.productIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SelectionGroupAddProductResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["productIds"] as? [String] {
            self.productIds = value
        }
        if let value = dict["purchaserId"] as? String {
            self.purchaserId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["productIds"] as? [String] {
            self.productIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SelectionGroupRemoveProductResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurchaseOrderRenderQuery()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurchaseOrderRenderResult()
            model.fromMap(value)
            self.body = model
        }
    }
}
