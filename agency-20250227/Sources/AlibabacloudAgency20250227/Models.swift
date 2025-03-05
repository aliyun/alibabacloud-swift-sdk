import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetBillDetailFileListRequest : Tea.TeaModel {
    public var billMonth: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billMonth != nil {
            map["BillMonth"] = self.billMonth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillMonth") {
            self.billMonth = dict["BillMonth"] as! String
        }
    }
}

public class GetBillDetailFileListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var billMonth: String?

        public var fileName: String?

        public var fileUrl: String?

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
            if self.billMonth != nil {
                map["BillMonth"] = self.billMonth!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillMonth") {
                self.billMonth = dict["BillMonth"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileUrl") {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetBillDetailFileListResponseBody.Data]?

    public var message: String?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var tmp : [GetBillDetailFileListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetBillDetailFileListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetBillDetailFileListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBillDetailFileListResponseBody?

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
            var model = GetBillDetailFileListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCommissionDetailFileListRequest : Tea.TeaModel {
    public var billMonth: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billMonth != nil {
            map["BillMonth"] = self.billMonth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillMonth") {
            self.billMonth = dict["BillMonth"] as! String
        }
    }
}

public class GetCommissionDetailFileListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FileList : Tea.TeaModel {
            public var commissionPolicyName: String?

            public var fileType: String?

            public var fileUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commissionPolicyName != nil {
                    map["CommissionPolicyName"] = self.commissionPolicyName!
                }
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.fileUrl != nil {
                    map["FileUrl"] = self.fileUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommissionPolicyName") {
                    self.commissionPolicyName = dict["CommissionPolicyName"] as! String
                }
                if dict.keys.contains("FileType") {
                    self.fileType = dict["FileType"] as! String
                }
                if dict.keys.contains("FileUrl") {
                    self.fileUrl = dict["FileUrl"] as! String
                }
            }
        }
        public var billMonth: String?

        public var fileList: [GetCommissionDetailFileListResponseBody.Data.FileList]?

        public var partnerUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billMonth != nil {
                map["BillMonth"] = self.billMonth!
            }
            if self.fileList != nil {
                var tmp : [Any] = []
                for k in self.fileList! {
                    tmp.append(k.toMap())
                }
                map["FileList"] = tmp
            }
            if self.partnerUid != nil {
                map["PartnerUid"] = self.partnerUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillMonth") {
                self.billMonth = dict["BillMonth"] as! String
            }
            if dict.keys.contains("FileList") {
                var tmp : [GetCommissionDetailFileListResponseBody.Data.FileList] = []
                for v in dict["FileList"] as! [Any] {
                    var model = GetCommissionDetailFileListResponseBody.Data.FileList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fileList = tmp
            }
            if dict.keys.contains("PartnerUid") {
                self.partnerUid = dict["PartnerUid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetCommissionDetailFileListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCommissionDetailFileListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetCommissionDetailFileListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommissionDetailFileListResponseBody?

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
            var model = GetCommissionDetailFileListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomerOrderListRequest : Tea.TeaModel {
    public var customerAccount: String?

    public var customerUid: Int64?

    public var orderCreateAfter: Int64?

    public var orderCreateBefore: Int64?

    public var orderId: Int64?

    public var orderPayAfter: Int64?

    public var orderPayBefore: Int64?

    public var orderStatus: Int32?

    public var orderTypeList: [String]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var payAmountAfter: Double?

    public var payAmountBefore: Double?

    public var payType: Int32?

    public var productCode: String?

    public var productName: String?

    public var projectId: Int64?

    public var ramAccountForCustomerManager: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerAccount != nil {
            map["CustomerAccount"] = self.customerAccount!
        }
        if self.customerUid != nil {
            map["CustomerUid"] = self.customerUid!
        }
        if self.orderCreateAfter != nil {
            map["OrderCreateAfter"] = self.orderCreateAfter!
        }
        if self.orderCreateBefore != nil {
            map["OrderCreateBefore"] = self.orderCreateBefore!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderPayAfter != nil {
            map["OrderPayAfter"] = self.orderPayAfter!
        }
        if self.orderPayBefore != nil {
            map["OrderPayBefore"] = self.orderPayBefore!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.orderTypeList != nil {
            map["OrderTypeList"] = self.orderTypeList!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.payAmountAfter != nil {
            map["PayAmountAfter"] = self.payAmountAfter!
        }
        if self.payAmountBefore != nil {
            map["PayAmountBefore"] = self.payAmountBefore!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.ramAccountForCustomerManager != nil {
            map["RamAccountForCustomerManager"] = self.ramAccountForCustomerManager!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerAccount") {
            self.customerAccount = dict["CustomerAccount"] as! String
        }
        if dict.keys.contains("CustomerUid") {
            self.customerUid = dict["CustomerUid"] as! Int64
        }
        if dict.keys.contains("OrderCreateAfter") {
            self.orderCreateAfter = dict["OrderCreateAfter"] as! Int64
        }
        if dict.keys.contains("OrderCreateBefore") {
            self.orderCreateBefore = dict["OrderCreateBefore"] as! Int64
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OrderPayAfter") {
            self.orderPayAfter = dict["OrderPayAfter"] as! Int64
        }
        if dict.keys.contains("OrderPayBefore") {
            self.orderPayBefore = dict["OrderPayBefore"] as! Int64
        }
        if dict.keys.contains("OrderStatus") {
            self.orderStatus = dict["OrderStatus"] as! Int32
        }
        if dict.keys.contains("OrderTypeList") {
            self.orderTypeList = dict["OrderTypeList"] as! [String]
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PayAmountAfter") {
            self.payAmountAfter = dict["PayAmountAfter"] as! Double
        }
        if dict.keys.contains("PayAmountBefore") {
            self.payAmountBefore = dict["PayAmountBefore"] as! Double
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("RamAccountForCustomerManager") {
            self.ramAccountForCustomerManager = dict["RamAccountForCustomerManager"] as! String
        }
    }
}

public class GetCustomerOrderListShrinkRequest : Tea.TeaModel {
    public var customerAccount: String?

    public var customerUid: Int64?

    public var orderCreateAfter: Int64?

    public var orderCreateBefore: Int64?

    public var orderId: Int64?

    public var orderPayAfter: Int64?

    public var orderPayBefore: Int64?

    public var orderStatus: Int32?

    public var orderTypeListShrink: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var payAmountAfter: Double?

    public var payAmountBefore: Double?

    public var payType: Int32?

    public var productCode: String?

    public var productName: String?

    public var projectId: Int64?

    public var ramAccountForCustomerManager: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerAccount != nil {
            map["CustomerAccount"] = self.customerAccount!
        }
        if self.customerUid != nil {
            map["CustomerUid"] = self.customerUid!
        }
        if self.orderCreateAfter != nil {
            map["OrderCreateAfter"] = self.orderCreateAfter!
        }
        if self.orderCreateBefore != nil {
            map["OrderCreateBefore"] = self.orderCreateBefore!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderPayAfter != nil {
            map["OrderPayAfter"] = self.orderPayAfter!
        }
        if self.orderPayBefore != nil {
            map["OrderPayBefore"] = self.orderPayBefore!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.orderTypeListShrink != nil {
            map["OrderTypeList"] = self.orderTypeListShrink!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.payAmountAfter != nil {
            map["PayAmountAfter"] = self.payAmountAfter!
        }
        if self.payAmountBefore != nil {
            map["PayAmountBefore"] = self.payAmountBefore!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.ramAccountForCustomerManager != nil {
            map["RamAccountForCustomerManager"] = self.ramAccountForCustomerManager!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerAccount") {
            self.customerAccount = dict["CustomerAccount"] as! String
        }
        if dict.keys.contains("CustomerUid") {
            self.customerUid = dict["CustomerUid"] as! Int64
        }
        if dict.keys.contains("OrderCreateAfter") {
            self.orderCreateAfter = dict["OrderCreateAfter"] as! Int64
        }
        if dict.keys.contains("OrderCreateBefore") {
            self.orderCreateBefore = dict["OrderCreateBefore"] as! Int64
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OrderPayAfter") {
            self.orderPayAfter = dict["OrderPayAfter"] as! Int64
        }
        if dict.keys.contains("OrderPayBefore") {
            self.orderPayBefore = dict["OrderPayBefore"] as! Int64
        }
        if dict.keys.contains("OrderStatus") {
            self.orderStatus = dict["OrderStatus"] as! Int32
        }
        if dict.keys.contains("OrderTypeList") {
            self.orderTypeListShrink = dict["OrderTypeList"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PayAmountAfter") {
            self.payAmountAfter = dict["PayAmountAfter"] as! Double
        }
        if dict.keys.contains("PayAmountBefore") {
            self.payAmountBefore = dict["PayAmountBefore"] as! Double
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("RamAccountForCustomerManager") {
            self.ramAccountForCustomerManager = dict["RamAccountForCustomerManager"] as! String
        }
    }
}

public class GetCustomerOrderListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var amountDiscount: Double?

        public var amountDue: Double?

        public var createdAt: String?

        public var customerAccount: String?

        public var customerClassification: String?

        public var customerUid: Int64?

        public var deductedAmountByCoupons: Double?

        public var discountedPrice: Double?

        public var orderId: Int64?

        public var orderStatus: Int32?

        public var orderType: String?

        public var paidAt: String?

        public var payType: Int32?

        public var price: Double?

        public var productCode: String?

        public var productName: String?

        public var projectId: Int64?

        public var ramAccountForCustomerManagers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amountDiscount != nil {
                map["AmountDiscount"] = self.amountDiscount!
            }
            if self.amountDue != nil {
                map["AmountDue"] = self.amountDue!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.customerAccount != nil {
                map["CustomerAccount"] = self.customerAccount!
            }
            if self.customerClassification != nil {
                map["CustomerClassification"] = self.customerClassification!
            }
            if self.customerUid != nil {
                map["CustomerUid"] = self.customerUid!
            }
            if self.deductedAmountByCoupons != nil {
                map["DeductedAmountByCoupons"] = self.deductedAmountByCoupons!
            }
            if self.discountedPrice != nil {
                map["DiscountedPrice"] = self.discountedPrice!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            if self.paidAt != nil {
                map["PaidAt"] = self.paidAt!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.ramAccountForCustomerManagers != nil {
                map["RamAccountForCustomerManagers"] = self.ramAccountForCustomerManagers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AmountDiscount") {
                self.amountDiscount = dict["AmountDiscount"] as! Double
            }
            if dict.keys.contains("AmountDue") {
                self.amountDue = dict["AmountDue"] as! Double
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("CustomerAccount") {
                self.customerAccount = dict["CustomerAccount"] as! String
            }
            if dict.keys.contains("CustomerClassification") {
                self.customerClassification = dict["CustomerClassification"] as! String
            }
            if dict.keys.contains("CustomerUid") {
                self.customerUid = dict["CustomerUid"] as! Int64
            }
            if dict.keys.contains("DeductedAmountByCoupons") {
                self.deductedAmountByCoupons = dict["DeductedAmountByCoupons"] as! Double
            }
            if dict.keys.contains("DiscountedPrice") {
                self.discountedPrice = dict["DiscountedPrice"] as! Double
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("OrderStatus") {
                self.orderStatus = dict["OrderStatus"] as! Int32
            }
            if dict.keys.contains("OrderType") {
                self.orderType = dict["OrderType"] as! String
            }
            if dict.keys.contains("PaidAt") {
                self.paidAt = dict["PaidAt"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! Int32
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! Double
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("RamAccountForCustomerManagers") {
                self.ramAccountForCustomerManagers = dict["RamAccountForCustomerManagers"] as! [String]
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [GetCustomerOrderListResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetCustomerOrderListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetCustomerOrderListResponseBody.Data()
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
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class GetCustomerOrderListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomerOrderListResponseBody?

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
            var model = GetCustomerOrderListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRenewalRateListRequest : Tea.TeaModel {
    public var fiscalYearAndQuarter: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fiscalYearAndQuarter != nil {
            map["FiscalYearAndQuarter"] = self.fiscalYearAndQuarter!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FiscalYearAndQuarter") {
            self.fiscalYearAndQuarter = dict["FiscalYearAndQuarter"] as! String
        }
    }
}

public class GetRenewalRateListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customerAdjustedRenewalAmountDue: Double?

        public var customerOtherBillAmount: Double?

        public var finalCustomerRenewalAmountDue: Double?

        public var finalCustomerRenewalRate: Double?

        public var finalCustomerRenewedAmount: Double?

        public var finalOtherBillAmount: Double?

        public var finalRenewalAmountDue: Double?

        public var finalRenewalRate: Double?

        public var finalRenewedAmount: Double?

        public var finalSubPartnerRenewalAmountDue: Double?

        public var finalSubPartnerRenewalRate: Double?

        public var finalSubPartnerRenewedAmount: Double?

        public var fiscalYearAndQuarter: String?

        public var masterPid: String?

        public var masterPidName: String?

        public var specialCustomerRenewRatio: Double?

        public var specialCustomerRenewalAmountDue: Double?

        public var specialCustomerRenewedAmount: Double?

        public var specialFinalRenewRatio: Double?

        public var specialFinalRenewalAmountDue: Double?

        public var specialFinalRenewedAmount: Double?

        public var specialSubPartnerRenewRatio: Double?

        public var specialSubPartnerRenewalAmountDue: Double?

        public var specialSubPartnerRenewedAmount: Double?

        public var subPartnerAdjustedRenewalAmountDue: Double?

        public var subPartnerOtherBillAmount: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customerAdjustedRenewalAmountDue != nil {
                map["CustomerAdjustedRenewalAmountDue"] = self.customerAdjustedRenewalAmountDue!
            }
            if self.customerOtherBillAmount != nil {
                map["CustomerOtherBillAmount"] = self.customerOtherBillAmount!
            }
            if self.finalCustomerRenewalAmountDue != nil {
                map["FinalCustomerRenewalAmountDue"] = self.finalCustomerRenewalAmountDue!
            }
            if self.finalCustomerRenewalRate != nil {
                map["FinalCustomerRenewalRate"] = self.finalCustomerRenewalRate!
            }
            if self.finalCustomerRenewedAmount != nil {
                map["FinalCustomerRenewedAmount"] = self.finalCustomerRenewedAmount!
            }
            if self.finalOtherBillAmount != nil {
                map["FinalOtherBillAmount"] = self.finalOtherBillAmount!
            }
            if self.finalRenewalAmountDue != nil {
                map["FinalRenewalAmountDue"] = self.finalRenewalAmountDue!
            }
            if self.finalRenewalRate != nil {
                map["FinalRenewalRate"] = self.finalRenewalRate!
            }
            if self.finalRenewedAmount != nil {
                map["FinalRenewedAmount"] = self.finalRenewedAmount!
            }
            if self.finalSubPartnerRenewalAmountDue != nil {
                map["FinalSubPartnerRenewalAmountDue"] = self.finalSubPartnerRenewalAmountDue!
            }
            if self.finalSubPartnerRenewalRate != nil {
                map["FinalSubPartnerRenewalRate"] = self.finalSubPartnerRenewalRate!
            }
            if self.finalSubPartnerRenewedAmount != nil {
                map["FinalSubPartnerRenewedAmount"] = self.finalSubPartnerRenewedAmount!
            }
            if self.fiscalYearAndQuarter != nil {
                map["FiscalYearAndQuarter"] = self.fiscalYearAndQuarter!
            }
            if self.masterPid != nil {
                map["MasterPid"] = self.masterPid!
            }
            if self.masterPidName != nil {
                map["MasterPidName"] = self.masterPidName!
            }
            if self.specialCustomerRenewRatio != nil {
                map["SpecialCustomerRenewRatio"] = self.specialCustomerRenewRatio!
            }
            if self.specialCustomerRenewalAmountDue != nil {
                map["SpecialCustomerRenewalAmountDue"] = self.specialCustomerRenewalAmountDue!
            }
            if self.specialCustomerRenewedAmount != nil {
                map["SpecialCustomerRenewedAmount"] = self.specialCustomerRenewedAmount!
            }
            if self.specialFinalRenewRatio != nil {
                map["SpecialFinalRenewRatio"] = self.specialFinalRenewRatio!
            }
            if self.specialFinalRenewalAmountDue != nil {
                map["SpecialFinalRenewalAmountDue"] = self.specialFinalRenewalAmountDue!
            }
            if self.specialFinalRenewedAmount != nil {
                map["SpecialFinalRenewedAmount"] = self.specialFinalRenewedAmount!
            }
            if self.specialSubPartnerRenewRatio != nil {
                map["SpecialSubPartnerRenewRatio"] = self.specialSubPartnerRenewRatio!
            }
            if self.specialSubPartnerRenewalAmountDue != nil {
                map["SpecialSubPartnerRenewalAmountDue"] = self.specialSubPartnerRenewalAmountDue!
            }
            if self.specialSubPartnerRenewedAmount != nil {
                map["SpecialSubPartnerRenewedAmount"] = self.specialSubPartnerRenewedAmount!
            }
            if self.subPartnerAdjustedRenewalAmountDue != nil {
                map["SubPartnerAdjustedRenewalAmountDue"] = self.subPartnerAdjustedRenewalAmountDue!
            }
            if self.subPartnerOtherBillAmount != nil {
                map["SubPartnerOtherBillAmount"] = self.subPartnerOtherBillAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomerAdjustedRenewalAmountDue") {
                self.customerAdjustedRenewalAmountDue = dict["CustomerAdjustedRenewalAmountDue"] as! Double
            }
            if dict.keys.contains("CustomerOtherBillAmount") {
                self.customerOtherBillAmount = dict["CustomerOtherBillAmount"] as! Double
            }
            if dict.keys.contains("FinalCustomerRenewalAmountDue") {
                self.finalCustomerRenewalAmountDue = dict["FinalCustomerRenewalAmountDue"] as! Double
            }
            if dict.keys.contains("FinalCustomerRenewalRate") {
                self.finalCustomerRenewalRate = dict["FinalCustomerRenewalRate"] as! Double
            }
            if dict.keys.contains("FinalCustomerRenewedAmount") {
                self.finalCustomerRenewedAmount = dict["FinalCustomerRenewedAmount"] as! Double
            }
            if dict.keys.contains("FinalOtherBillAmount") {
                self.finalOtherBillAmount = dict["FinalOtherBillAmount"] as! Double
            }
            if dict.keys.contains("FinalRenewalAmountDue") {
                self.finalRenewalAmountDue = dict["FinalRenewalAmountDue"] as! Double
            }
            if dict.keys.contains("FinalRenewalRate") {
                self.finalRenewalRate = dict["FinalRenewalRate"] as! Double
            }
            if dict.keys.contains("FinalRenewedAmount") {
                self.finalRenewedAmount = dict["FinalRenewedAmount"] as! Double
            }
            if dict.keys.contains("FinalSubPartnerRenewalAmountDue") {
                self.finalSubPartnerRenewalAmountDue = dict["FinalSubPartnerRenewalAmountDue"] as! Double
            }
            if dict.keys.contains("FinalSubPartnerRenewalRate") {
                self.finalSubPartnerRenewalRate = dict["FinalSubPartnerRenewalRate"] as! Double
            }
            if dict.keys.contains("FinalSubPartnerRenewedAmount") {
                self.finalSubPartnerRenewedAmount = dict["FinalSubPartnerRenewedAmount"] as! Double
            }
            if dict.keys.contains("FiscalYearAndQuarter") {
                self.fiscalYearAndQuarter = dict["FiscalYearAndQuarter"] as! String
            }
            if dict.keys.contains("MasterPid") {
                self.masterPid = dict["MasterPid"] as! String
            }
            if dict.keys.contains("MasterPidName") {
                self.masterPidName = dict["MasterPidName"] as! String
            }
            if dict.keys.contains("SpecialCustomerRenewRatio") {
                self.specialCustomerRenewRatio = dict["SpecialCustomerRenewRatio"] as! Double
            }
            if dict.keys.contains("SpecialCustomerRenewalAmountDue") {
                self.specialCustomerRenewalAmountDue = dict["SpecialCustomerRenewalAmountDue"] as! Double
            }
            if dict.keys.contains("SpecialCustomerRenewedAmount") {
                self.specialCustomerRenewedAmount = dict["SpecialCustomerRenewedAmount"] as! Double
            }
            if dict.keys.contains("SpecialFinalRenewRatio") {
                self.specialFinalRenewRatio = dict["SpecialFinalRenewRatio"] as! Double
            }
            if dict.keys.contains("SpecialFinalRenewalAmountDue") {
                self.specialFinalRenewalAmountDue = dict["SpecialFinalRenewalAmountDue"] as! Double
            }
            if dict.keys.contains("SpecialFinalRenewedAmount") {
                self.specialFinalRenewedAmount = dict["SpecialFinalRenewedAmount"] as! Double
            }
            if dict.keys.contains("SpecialSubPartnerRenewRatio") {
                self.specialSubPartnerRenewRatio = dict["SpecialSubPartnerRenewRatio"] as! Double
            }
            if dict.keys.contains("SpecialSubPartnerRenewalAmountDue") {
                self.specialSubPartnerRenewalAmountDue = dict["SpecialSubPartnerRenewalAmountDue"] as! Double
            }
            if dict.keys.contains("SpecialSubPartnerRenewedAmount") {
                self.specialSubPartnerRenewedAmount = dict["SpecialSubPartnerRenewedAmount"] as! Double
            }
            if dict.keys.contains("SubPartnerAdjustedRenewalAmountDue") {
                self.subPartnerAdjustedRenewalAmountDue = dict["SubPartnerAdjustedRenewalAmountDue"] as! Double
            }
            if dict.keys.contains("SubPartnerOtherBillAmount") {
                self.subPartnerOtherBillAmount = dict["SubPartnerOtherBillAmount"] as! Double
            }
        }
    }
    public var code: String?

    public var data: [GetRenewalRateListResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetRenewalRateListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetRenewalRateListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class GetRenewalRateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRenewalRateListResponseBody?

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
            var model = GetRenewalRateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSubPartnerListRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var subPartnerCompanyName: String?

    public var subPartnerPid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.subPartnerCompanyName != nil {
            map["SubPartnerCompanyName"] = self.subPartnerCompanyName!
        }
        if self.subPartnerPid != nil {
            map["SubPartnerPid"] = self.subPartnerPid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SubPartnerCompanyName") {
            self.subPartnerCompanyName = dict["SubPartnerCompanyName"] as! String
        }
        if dict.keys.contains("SubPartnerPid") {
            self.subPartnerPid = dict["SubPartnerPid"] as! String
        }
    }
}

public class GetSubPartnerListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var address: String?

        public var agreementStatus: String?

        public var agreementStatusDesc: String?

        public var city: String?

        public var companyName: String?

        public var contact: String?

        public var district: String?

        public var joinTime: String?

        public var masterAccount: String?

        public var masterUid: String?

        public var pid: String?

        public var province: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.agreementStatus != nil {
                map["AgreementStatus"] = self.agreementStatus!
            }
            if self.agreementStatusDesc != nil {
                map["AgreementStatusDesc"] = self.agreementStatusDesc!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.contact != nil {
                map["Contact"] = self.contact!
            }
            if self.district != nil {
                map["District"] = self.district!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.masterAccount != nil {
                map["MasterAccount"] = self.masterAccount!
            }
            if self.masterUid != nil {
                map["MasterUid"] = self.masterUid!
            }
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("AgreementStatus") {
                self.agreementStatus = dict["AgreementStatus"] as! String
            }
            if dict.keys.contains("AgreementStatusDesc") {
                self.agreementStatusDesc = dict["AgreementStatusDesc"] as! String
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("CompanyName") {
                self.companyName = dict["CompanyName"] as! String
            }
            if dict.keys.contains("Contact") {
                self.contact = dict["Contact"] as! String
            }
            if dict.keys.contains("District") {
                self.district = dict["District"] as! String
            }
            if dict.keys.contains("JoinTime") {
                self.joinTime = dict["JoinTime"] as! String
            }
            if dict.keys.contains("MasterAccount") {
                self.masterAccount = dict["MasterAccount"] as! String
            }
            if dict.keys.contains("MasterUid") {
                self.masterUid = dict["MasterUid"] as! String
            }
            if dict.keys.contains("Pid") {
                self.pid = dict["Pid"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
        }
    }
    public var data: GetSubPartnerListResponseBody.Data?

    public var message: String?

    public var pageNo: String?

    public var pageSize: String?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

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
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetSubPartnerListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class GetSubPartnerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubPartnerListResponseBody?

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
            var model = GetSubPartnerListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSubPartnerOrderListRequest : Tea.TeaModel {
    public var orderCreateAfter: Int64?

    public var orderCreateBefore: Int64?

    public var orderId: Int64?

    public var orderPayAfter: Int64?

    public var orderPayBefore: Int64?

    public var orderStatus: Int64?

    public var orderTypeList: [String]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var payAmountAfter: Int64?

    public var payAmountBefore: Int64?

    public var payType: Int64?

    public var productCode: String?

    public var productName: String?

    public var projectId: Int64?

    public var subPartnerName: String?

    public var subPartnerUid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderCreateAfter != nil {
            map["OrderCreateAfter"] = self.orderCreateAfter!
        }
        if self.orderCreateBefore != nil {
            map["OrderCreateBefore"] = self.orderCreateBefore!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderPayAfter != nil {
            map["OrderPayAfter"] = self.orderPayAfter!
        }
        if self.orderPayBefore != nil {
            map["OrderPayBefore"] = self.orderPayBefore!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.orderTypeList != nil {
            map["OrderTypeList"] = self.orderTypeList!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.payAmountAfter != nil {
            map["PayAmountAfter"] = self.payAmountAfter!
        }
        if self.payAmountBefore != nil {
            map["PayAmountBefore"] = self.payAmountBefore!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.subPartnerName != nil {
            map["SubPartnerName"] = self.subPartnerName!
        }
        if self.subPartnerUid != nil {
            map["SubPartnerUid"] = self.subPartnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderCreateAfter") {
            self.orderCreateAfter = dict["OrderCreateAfter"] as! Int64
        }
        if dict.keys.contains("OrderCreateBefore") {
            self.orderCreateBefore = dict["OrderCreateBefore"] as! Int64
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OrderPayAfter") {
            self.orderPayAfter = dict["OrderPayAfter"] as! Int64
        }
        if dict.keys.contains("OrderPayBefore") {
            self.orderPayBefore = dict["OrderPayBefore"] as! Int64
        }
        if dict.keys.contains("OrderStatus") {
            self.orderStatus = dict["OrderStatus"] as! Int64
        }
        if dict.keys.contains("OrderTypeList") {
            self.orderTypeList = dict["OrderTypeList"] as! [String]
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PayAmountAfter") {
            self.payAmountAfter = dict["PayAmountAfter"] as! Int64
        }
        if dict.keys.contains("PayAmountBefore") {
            self.payAmountBefore = dict["PayAmountBefore"] as! Int64
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("SubPartnerName") {
            self.subPartnerName = dict["SubPartnerName"] as! String
        }
        if dict.keys.contains("SubPartnerUid") {
            self.subPartnerUid = dict["SubPartnerUid"] as! Int64
        }
    }
}

public class GetSubPartnerOrderListShrinkRequest : Tea.TeaModel {
    public var orderCreateAfter: Int64?

    public var orderCreateBefore: Int64?

    public var orderId: Int64?

    public var orderPayAfter: Int64?

    public var orderPayBefore: Int64?

    public var orderStatus: Int64?

    public var orderTypeListShrink: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var payAmountAfter: Int64?

    public var payAmountBefore: Int64?

    public var payType: Int64?

    public var productCode: String?

    public var productName: String?

    public var projectId: Int64?

    public var subPartnerName: String?

    public var subPartnerUid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderCreateAfter != nil {
            map["OrderCreateAfter"] = self.orderCreateAfter!
        }
        if self.orderCreateBefore != nil {
            map["OrderCreateBefore"] = self.orderCreateBefore!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderPayAfter != nil {
            map["OrderPayAfter"] = self.orderPayAfter!
        }
        if self.orderPayBefore != nil {
            map["OrderPayBefore"] = self.orderPayBefore!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.orderTypeListShrink != nil {
            map["OrderTypeList"] = self.orderTypeListShrink!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.payAmountAfter != nil {
            map["PayAmountAfter"] = self.payAmountAfter!
        }
        if self.payAmountBefore != nil {
            map["PayAmountBefore"] = self.payAmountBefore!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.subPartnerName != nil {
            map["SubPartnerName"] = self.subPartnerName!
        }
        if self.subPartnerUid != nil {
            map["SubPartnerUid"] = self.subPartnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderCreateAfter") {
            self.orderCreateAfter = dict["OrderCreateAfter"] as! Int64
        }
        if dict.keys.contains("OrderCreateBefore") {
            self.orderCreateBefore = dict["OrderCreateBefore"] as! Int64
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OrderPayAfter") {
            self.orderPayAfter = dict["OrderPayAfter"] as! Int64
        }
        if dict.keys.contains("OrderPayBefore") {
            self.orderPayBefore = dict["OrderPayBefore"] as! Int64
        }
        if dict.keys.contains("OrderStatus") {
            self.orderStatus = dict["OrderStatus"] as! Int64
        }
        if dict.keys.contains("OrderTypeList") {
            self.orderTypeListShrink = dict["OrderTypeList"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PayAmountAfter") {
            self.payAmountAfter = dict["PayAmountAfter"] as! Int64
        }
        if dict.keys.contains("PayAmountBefore") {
            self.payAmountBefore = dict["PayAmountBefore"] as! Int64
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("SubPartnerName") {
            self.subPartnerName = dict["SubPartnerName"] as! String
        }
        if dict.keys.contains("SubPartnerUid") {
            self.subPartnerUid = dict["SubPartnerUid"] as! Int64
        }
    }
}

public class GetSubPartnerOrderListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var amountDiscount: Double?

        public var amountDue: Double?

        public var createdAt: String?

        public var deductedAmountByCoupons: Double?

        public var discountedPrice: Double?

        public var orderId: Int64?

        public var orderStatus: Int32?

        public var orderType: String?

        public var paidAt: String?

        public var payType: Int32?

        public var price: Double?

        public var productCode: String?

        public var productName: String?

        public var projectId: Int64?

        public var subPartnerName: String?

        public var subPartnerUid: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amountDiscount != nil {
                map["AmountDiscount"] = self.amountDiscount!
            }
            if self.amountDue != nil {
                map["AmountDue"] = self.amountDue!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.deductedAmountByCoupons != nil {
                map["DeductedAmountByCoupons"] = self.deductedAmountByCoupons!
            }
            if self.discountedPrice != nil {
                map["DiscountedPrice"] = self.discountedPrice!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            if self.paidAt != nil {
                map["PaidAt"] = self.paidAt!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.subPartnerName != nil {
                map["SubPartnerName"] = self.subPartnerName!
            }
            if self.subPartnerUid != nil {
                map["SubPartnerUid"] = self.subPartnerUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AmountDiscount") {
                self.amountDiscount = dict["AmountDiscount"] as! Double
            }
            if dict.keys.contains("AmountDue") {
                self.amountDue = dict["AmountDue"] as! Double
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DeductedAmountByCoupons") {
                self.deductedAmountByCoupons = dict["DeductedAmountByCoupons"] as! Double
            }
            if dict.keys.contains("DiscountedPrice") {
                self.discountedPrice = dict["DiscountedPrice"] as! Double
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("OrderStatus") {
                self.orderStatus = dict["OrderStatus"] as! Int32
            }
            if dict.keys.contains("OrderType") {
                self.orderType = dict["OrderType"] as! String
            }
            if dict.keys.contains("PaidAt") {
                self.paidAt = dict["PaidAt"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! Int32
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! Double
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("SubPartnerName") {
                self.subPartnerName = dict["SubPartnerName"] as! String
            }
            if dict.keys.contains("SubPartnerUid") {
                self.subPartnerUid = dict["SubPartnerUid"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [GetSubPartnerOrderListResponseBody.Data]?

    public var message: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetSubPartnerOrderListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetSubPartnerOrderListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class GetSubPartnerOrderListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubPartnerOrderListResponseBody?

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
            var model = GetSubPartnerOrderListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
